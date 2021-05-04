package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mybatis.Board;
import dao.BoardDaoMybatis;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardDaoMybatis dao;

	@RequestMapping("/list")
	public String list(String page, Model model) {
		/*
		 * 게시물 목록 보기 1. pageNum 파라미터 존재. pageNum 파라미터 없으면 1로 설정. 2. 10건의 게시물 출력. => db에서
		 * 해당 페이지에 출력되는 게시물만 조회. 순서 : 최근 게시물 순으로 3. 화면에 출력.
		 */
		System.out.println("list 입니다");
		int pageNum = 1;
		try {
			pageNum = Integer.parseInt(page);
		} catch (NumberFormatException e) {
		}
		int limit = 3; // 한페이지에 출력할 게시물 건수
		int boardcount = dao.boardCount();// 등록된 전체 게시물의 건수

		List<Board> list = dao.list(pageNum, limit, boardcount); // 화면에 출력된 게시물 데이터
		// 13 ---> boardcount/limit : 4 + 1
		int maxpage = (int) (boardcount / limit) + (boardcount % limit == 0 ? 0 : 1);
		int bottomLine = 3;
		// page 1,2,3 : 1, 4,5,6: 2
		int startpage = 1 + (pageNum - 1) / bottomLine * bottomLine;
		int endpage = startpage + bottomLine - 1;
		if (endpage > maxpage)
			endpage = maxpage;
		int boardnum = boardcount - (pageNum - 1) * limit;

		model.addAttribute("boardcount", boardcount);
		model.addAttribute("list", list);
		model.addAttribute("boardnum", boardnum);
		model.addAttribute("startpage", startpage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endpage", endpage);
		model.addAttribute("maxpage", maxpage);
		model.addAttribute("pageNum", pageNum);

		return "board/list";
	}

	@RequestMapping("/info")
	public String info(int b_num, Model model) {
		Board board = dao.selectOne(b_num); // 게시물 조회
		dao.readcntadd(b_num); // 조회건수증가
		model.addAttribute("board", board);
		model.addAttribute("b_num", b_num);
		return "/board/info";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int b_num, Model model) {
		/*
		 * /WebContent/model1/board/updateForm.jsp 1. num 값의 게시물을 조회화여 화면 출력하기
		 */
		Board board = dao.selectOne(b_num);
		model.addAttribute("board", board);
		return "/board/updateForm";
	}

	@RequestMapping("/deleteForm")
	public String deleteForm(int b_num, Model model) {
		model.addAttribute("b_num", b_num);
		return "/board/deleteForm";
	}

	@RequestMapping("/replyForm")
	public String replyForm(int b_num, Model model) {
		/*
		 * /WebContent/model1/board/replyForm.jsp : 답변글 쓰기 화면 1. 원글의 num을 파라미터로 받는다. 2.
		 * 원글의 num,ref,reflevel,refstep 정보를 저장 3. 입력 화면 표시
		 */

		Board board = dao.selectOne(b_num); // 게시물 조회
		model.addAttribute("board", board);
		return "/board/replyForm";
	}

	@RequestMapping("write")
	public String write(MultipartHttpServletRequest request, Board board, Model model) throws Throwable {
		/*
		 * 1. 파라미터 값을 model.Board 객체 저장. 2. 게시물 번호 num 현재 등록된 num의 최대값을 조회. 최대값 +1 등록된
		 * 게시물의 번호. db에서 maxnum 을 구해서 +1 값으로 num 설정하기
		 */
		// 1. 파라미터 값을 model.Board 객체 저장.
		// String uploadpath = application.getRealPath("/") +"chap09_board/upfile/";
		String uploadpath = request.getServletContext().getRealPath("/upfile");
		MultipartFile multiFile = request.getFile("uploadfile");
		if (!multiFile.isEmpty()) {
			File file = new File(uploadpath, multiFile.getOriginalFilename());
			try {
				multiFile.transferTo(file);
				board.setFile1(multiFile.getOriginalFilename());
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			board.setFile1("");
		}

		// 3. board 객체의 내용을 db에 insert 하기
		String msg = "게시물 등록 실패";
		String url = "writeForm";
		if (dao.insert(board)) {
			msg = "게시물 등록 성공";
			url = "list";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/alert";
	}

	@RequestMapping("/update")
	public String update(MultipartHttpServletRequest request, Board board, Model model) throws Throwable {
		/*
		 * /WebContent/model1/board/update.jsp 1. 파라미터정보들을 Board 객체 저장. 2. 비밀번호 검증 비밀번호
		 * 일치 : 수정으로. 비밀번호 불일치 : 비밀번호 오류 메세지 출력하고, updateForm.jsp로 페이지 이동 3. 수정성공 : 수정성공
		 * 메시지 출력 후 list.jsp 페이지 이동 수정실패 : 수정실패 메시지 출력 후 updateForm.jsp 페이지 이동
		 */

		// 파라미터 정보 Board 객체에 저장
		String uploadpath = request.getServletContext().getRealPath("/upfile");
		MultipartFile multiFile = request.getFile("uploadfile");

		if (!multiFile.isEmpty()) {
			File file = new File(uploadpath, multiFile.getOriginalFilename());
			try {
				multiFile.transferTo(file);
				board.setFile1(multiFile.getOriginalFilename());
			} catch (IllegalStateException e) {
				board.setFile1("");
				e.printStackTrace();
			} catch (IOException e) {
				board.setFile1("");
				e.printStackTrace();
			}
		} else {
			board.setFile1("");
		}

		// 비밀번호 검증

		Board dbBoard = dao.selectOne(board.getB_num());
		String msg = "비밀번호가 틀렸습니다.";
		String url = "updateForm?b_num=" + board.getB_num();
		if (board.getPass().equals(dbBoard.getPass())) {
			// 수정하기
			if (dao.update(board)) {
				msg = "게시물 수정 완료";
				url = "list";
			} else {
				msg = "게시물 수정 실패";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("delete")
	public String delete(int b_num, String pass, Model model) throws Throwable {
		/*
		 * /WebContent/model1/board/delete.jsp 1. b_num,pass 파라미터를 변수에 저장. 2. 입력된 비밀번호와
		 * db 비밀번호 검증 틀린경우 : 비밀번호 오류 메시지 출력, deleteForm.jsp 페이지 이동 3. 게시물 삭제. 삭제 성공 : 삭제
		 * 성공 메시지 출력, list.jsp 페이지 이동 삭제 실패 : 삭제 실패 메시지 출력, info.jsp 페이지 이동
		 */

		String msg = "비밀번호가 틀렸습니다!";
		String url = "deleteForm?b_num=" + b_num;
		Board board = dao.selectOne(b_num);
		// board.getPass() : db에 저장된 비밀번호
		if (pass.equals(board.getPass())) {
			if (dao.delete(b_num)) {
				msg = "게시글을 성공적으로 삭제하였습니다.";
				url = "list";
			} else {
				msg = "게시글을 삭제하는데 실패하였습니다!";
				url = "info?b_num=" + b_num;
			}
		}

		model.addAttribute("url", url);
		model.addAttribute("msg", msg);

		return "/alert";
	}

	@RequestMapping("reply")
	public String reply(Board board, Model model) throws Throwable {
		/*
		 * /WebContent/model1/board/reply.jsp : 답글 등록 1. 파라미터 값을 Board 객체에 저장하기 원글정보 :
		 * num, ref, reflevel(ㄴ), refstep(print) 답글정보 : name, pass, subject, content 2.
		 * 같은 ref 값을 사용하는 게시물들의 refstep 값을 1 증가 시키기 1 1 0 0 2 2 0 0 3 1 1 2 4 1 1 1
		 * ======================== print 2 2 0 0 1 1 0 0 4 1 1 1 3 1 1 2 3. Board 객체를
		 * db에 insert 하기. 4. 등록 성공시 : "답변등록 완료"메시지 출력 후, list.jsp로 페이지 이동 등록 실패시 :
		 * "답변등록시 오류발생"메시지 출력 후, replyForm.jsp로 페이지 이동하기 1. 파라미터 값을 Board 객체에 저장하기
		 */
		dao.refstepadd(board.getRef(), board.getRefstep());
		// 3. Board 객체를 db에 insert 하기.
		String msg = "답변등록시 오류발생";
		String url = "replyForm?b_num=" + board.getB_num();
		if (dao.insert(board)) {
			msg = "답변등록 완료";
			url = "list";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
}
