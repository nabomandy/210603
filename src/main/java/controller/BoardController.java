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
		 * �Խù� ��� ���� 1. pageNum �Ķ���� ����. pageNum �Ķ���� ������ 1�� ����. 2. 10���� �Խù� ���. => db����
		 * �ش� �������� ��µǴ� �Խù��� ��ȸ. ���� : �ֱ� �Խù� ������ 3. ȭ�鿡 ���.
		 */
		System.out.println("list �Դϴ�");
		int pageNum = 1;
		try {
			pageNum = Integer.parseInt(page);
		} catch (NumberFormatException e) {
		}
		int limit = 3; // ���������� ����� �Խù� �Ǽ�
		int boardcount = dao.boardCount();// ��ϵ� ��ü �Խù��� �Ǽ�

		List<Board> list = dao.list(pageNum, limit, boardcount); // ȭ�鿡 ��µ� �Խù� ������
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
		Board board = dao.selectOne(b_num); // �Խù� ��ȸ
		dao.readcntadd(b_num); // ��ȸ�Ǽ�����
		model.addAttribute("board", board);
		model.addAttribute("b_num", b_num);
		return "/board/info";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int b_num, Model model) {
		/*
		 * /WebContent/model1/board/updateForm.jsp 1. num ���� �Խù��� ��ȸȭ�� ȭ�� ����ϱ�
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
		 * /WebContent/model1/board/replyForm.jsp : �亯�� ���� ȭ�� 1. ������ num�� �Ķ���ͷ� �޴´�. 2.
		 * ������ num,ref,reflevel,refstep ������ ���� 3. �Է� ȭ�� ǥ��
		 */

		Board board = dao.selectOne(b_num); // �Խù� ��ȸ
		model.addAttribute("board", board);
		return "/board/replyForm";
	}

	@RequestMapping("write")
	public String write(MultipartHttpServletRequest request, Board board, Model model) throws Throwable {
		/*
		 * 1. �Ķ���� ���� model.Board ��ü ����. 2. �Խù� ��ȣ num ���� ��ϵ� num�� �ִ밪�� ��ȸ. �ִ밪 +1 ��ϵ�
		 * �Խù��� ��ȣ. db���� maxnum �� ���ؼ� +1 ������ num �����ϱ�
		 */
		// 1. �Ķ���� ���� model.Board ��ü ����.
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

		// 3. board ��ü�� ������ db�� insert �ϱ�
		String msg = "�Խù� ��� ����";
		String url = "writeForm";
		if (dao.insert(board)) {
			msg = "�Խù� ��� ����";
			url = "list";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/alert";
	}

	@RequestMapping("/update")
	public String update(MultipartHttpServletRequest request, Board board, Model model) throws Throwable {
		/*
		 * /WebContent/model1/board/update.jsp 1. �Ķ������������ Board ��ü ����. 2. ��й�ȣ ���� ��й�ȣ
		 * ��ġ : ��������. ��й�ȣ ����ġ : ��й�ȣ ���� �޼��� ����ϰ�, updateForm.jsp�� ������ �̵� 3. �������� : ��������
		 * �޽��� ��� �� list.jsp ������ �̵� �������� : �������� �޽��� ��� �� updateForm.jsp ������ �̵�
		 */

		// �Ķ���� ���� Board ��ü�� ����
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

		// ��й�ȣ ����

		Board dbBoard = dao.selectOne(board.getB_num());
		String msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�.";
		String url = "updateForm?b_num=" + board.getB_num();
		if (board.getPass().equals(dbBoard.getPass())) {
			// �����ϱ�
			if (dao.update(board)) {
				msg = "�Խù� ���� �Ϸ�";
				url = "list";
			} else {
				msg = "�Խù� ���� ����";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("delete")
	public String delete(int b_num, String pass, Model model) throws Throwable {
		/*
		 * /WebContent/model1/board/delete.jsp 1. b_num,pass �Ķ���͸� ������ ����. 2. �Էµ� ��й�ȣ��
		 * db ��й�ȣ ���� Ʋ����� : ��й�ȣ ���� �޽��� ���, deleteForm.jsp ������ �̵� 3. �Խù� ����. ���� ���� : ����
		 * ���� �޽��� ���, list.jsp ������ �̵� ���� ���� : ���� ���� �޽��� ���, info.jsp ������ �̵�
		 */

		String msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�!";
		String url = "deleteForm?b_num=" + b_num;
		Board board = dao.selectOne(b_num);
		// board.getPass() : db�� ����� ��й�ȣ
		if (pass.equals(board.getPass())) {
			if (dao.delete(b_num)) {
				msg = "�Խñ��� ���������� �����Ͽ����ϴ�.";
				url = "list";
			} else {
				msg = "�Խñ��� �����ϴµ� �����Ͽ����ϴ�!";
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
		 * /WebContent/model1/board/reply.jsp : ��� ��� 1. �Ķ���� ���� Board ��ü�� �����ϱ� �������� :
		 * num, ref, reflevel(��), refstep(print) ������� : name, pass, subject, content 2.
		 * ���� ref ���� ����ϴ� �Խù����� refstep ���� 1 ���� ��Ű�� 1 1 0 0 2 2 0 0 3 1 1 2 4 1 1 1
		 * ======================== print 2 2 0 0 1 1 0 0 4 1 1 1 3 1 1 2 3. Board ��ü��
		 * db�� insert �ϱ�. 4. ��� ������ : "�亯��� �Ϸ�"�޽��� ��� ��, list.jsp�� ������ �̵� ��� ���н� :
		 * "�亯��Ͻ� �����߻�"�޽��� ��� ��, replyForm.jsp�� ������ �̵��ϱ� 1. �Ķ���� ���� Board ��ü�� �����ϱ�
		 */
		dao.refstepadd(board.getRef(), board.getRefstep());
		// 3. Board ��ü�� db�� insert �ϱ�.
		String msg = "�亯��Ͻ� �����߻�";
		String url = "replyForm?b_num=" + board.getB_num();
		if (dao.insert(board)) {
			msg = "�亯��� �Ϸ�";
			url = "list";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}
}
