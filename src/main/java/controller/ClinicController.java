package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ClinicDaoMybatis;
import mybatis.Clinic;

@Controller
@RequestMapping("/clinic")
public class ClinicController {
	@Autowired
	ClinicDaoMybatis dao;

	@RequestMapping("/regist")
	public String regist(HttpSession session, Clinic clinic, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.insert(clinic)>0) {
				msg = "������ ���������� ����Ͽ����ϴ�.";
			} else {
				msg = "������ ����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/deleteForm")
	public String deleteForm(int c_num, Model model) {
		model.addAttribute("c_num",c_num);
		return "/clinic/deleteForm";
	}

	@RequestMapping("/delete")
	public String delete(HttpSession session, int c_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ��������� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.delete(c_num)>0) {
				msg = "������ ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "������ �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int c_num, Model model) {
		Clinic clinic=dao.selectOne(c_num);
		model.addAttribute("clinic",clinic);
		return "/clinic/updateForm";
	}

	@RequestMapping("/update")
	public String update(HttpSession session, Clinic clinic, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.update(clinic)>0) {
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
		List<Clinic> list = dao.list();
		model.addAttribute("list", list);
		return "/clinic/list";
	}
	
	@RequestMapping("/info")
	public String info(int c_num, Model model) {
		Clinic clinic = dao.selectOne(c_num); // �Խù� ��ȸ
		List<Clinic> list = dao.list();
		model.addAttribute("list", list);
		model.addAttribute("clinic", clinic);
		return "/clinic/info";
	}
}
