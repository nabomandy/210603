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
		String msg = "�����ڸ� ��������� ������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.insert(reserveClinic)>0) {
				msg = "������ ���������� ����Ͽ����ϴ�.";
			} else {
				msg = "������ ����ϴµ� �����Ͽ����ϴ�.";
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
		String msg = "�����ڸ� ��������� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.delete(rc_num)>0) {
				msg = "������ ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "������ �����ϴµ� �����Ͽ����ϴ�.";
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
		String msg = "�����ڸ� ȣ�ڸ���� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.update(reserveClinic)>0) {
				msg = "���������� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "���������� �����ϴµ� �����Ͽ����ϴ�.";
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
		ReserveClinic reserveClinic = dao.selectOne(rc_num); // �Խù� ��ȸ
		List<ReserveClinic> list = dao.list();
		model.addAttribute("list", list);
		model.addAttribute("reserveClinic", reserveClinic);
		return "/clinic/info";
	}
}
