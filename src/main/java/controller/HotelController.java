package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.HotelDaoMybatis;
import mybatis.Hotel;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	@Autowired
	HotelDaoMybatis dao;

	@RequestMapping("/regist")
	public String regist(HttpSession session, Hotel hotel, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.insert(hotel)>0) {
				msg = "ȣ���� ���������� ����Ͽ����ϴ�.";
			} else {
				msg = "ȣ���� ����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/deleteForm")
	public String deleteForm(int h_num, Model model) {
		model.addAttribute("h_num",h_num);
		return "/hotel/deleteForm";
	}

	@RequestMapping("/delete")
	public String delete(HttpSession session, int h_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.delete(h_num)>0) {
				msg = "ȣ���� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "ȣ���� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/updateForm")
	public String updateForm(int h_num, Model model) {
		Hotel hotel=dao.selectOne(h_num);
		model.addAttribute("hotel",hotel);
		return "/hotel/updateForm";
	}

	@RequestMapping("/update")
	public String update(HttpSession session, Hotel hotel, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "�����ڸ� ȣ�ڸ���� ����/������ �� �ֽ��ϴ�!";
		String url = "list";
		if(id.equals("admin")) {
			if(dao.update(hotel)>0) {
				msg = "ȣ�������� ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "ȣ�������� �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		List<Hotel> list = dao.list();
		model.addAttribute("list", list);
		return "/hotel/list";
	}
	
	@RequestMapping("/info")
	public String info(int h_num, Model model) {
		Hotel hotel = dao.selectOne(h_num); // �Խù� ��ȸ
		List<Hotel> list = dao.list();
		model.addAttribute("list", list);
		model.addAttribute("hotel", hotel);
		return "/hotel/info";
	}
}
