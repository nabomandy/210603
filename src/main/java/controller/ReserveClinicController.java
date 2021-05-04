package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ReserveClinicDaoMybatis;
import mybatis.ReserveClinic;

@Controller
@RequestMapping("/reserveClinic")
public class ReserveClinicController {
	@Autowired
	ReserveClinicDaoMybatis dao;

	@RequestMapping("/reserve")
	public String reserve(HttpSession session, int c_num, ReserveClinic reserveClinic, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 병원목록을 생성할 수 있습니다!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.insert(reserveClinic)>0) {
				msg = "병원을 성공적으로 등록하였습니다.";
			} else {
				msg = "병원을 등록하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/cancelForm")
	public String cancelForm(int rc_num, Model model) {
		model.addAttribute("rc_num",rc_num);
		return "/clinic/deleteForm";
	}

	@RequestMapping("/cancel")
	public String cancel(HttpSession session, int rc_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 병원목록을 수정/삭제할 수 있습니다!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.delete(rc_num)>0) {
				msg = "병원을 성공적으로 삭제하였습니다.";
			} else {
				msg = "병원을 삭제하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/editForm")
	public String editForm(int rh_num, Model model) {
		ReserveClinic reserveClinic=dao.selectOne(rh_num);
		model.addAttribute("clinic",reserveClinic);
		return "/clinic/updateForm";
	}

	@RequestMapping("/edit")
	public String edit(HttpSession session, ReserveClinic reserveClinic, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "관리자만 호텔목록을 수정/삭제할 수 있습니다!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.update(reserveClinic)>0) {
				msg = "병원정보를 성공적으로 수정하였습니다.";
			} else {
				msg = "병원정보를 수정하는데 실패하였습니다.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		List<ReserveClinic> list = dao.list();
		model.addAttribute("list", list);
		return "/clinic/list";
	}
	
	@RequestMapping("/detail")
	public String detail(int rc_num, Model model) {
		ReserveClinic reserveClinic = dao.selectOne(rc_num); // 게시물 조회
		List<ReserveClinic> list = dao.list();
		model.addAttribute("list", list);
		model.addAttribute("reserveClinic", reserveClinic);
		return "/clinic/info";
	}
}
