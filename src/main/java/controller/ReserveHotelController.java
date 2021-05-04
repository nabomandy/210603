package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ReserveHotelDaoMybatis;
import mybatis.ReserveHotel;

@Controller
@RequestMapping("/reserveHotel")
public class ReserveHotelController {
	@Autowired
	ReserveHotelDaoMybatis dao;

	@RequestMapping("/reserveForm")
	public String reserveForm(String id, int h_num, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("h_num", h_num);
		return "/reserveHotel/reserveForm";
	}

	@RequestMapping("/reserve")
	public String reserve(ReserveHotel reserveHotel, Model model) {
		String msg = "������ �����Ͽ����ϴ�.";
		String url = "reserveForm";
		if (dao.insert(reserveHotel) > 0) {
			msg = "������ �Ϸ�Ǿ����ϴ�.";
			url = "list";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/cancelForm")
	public String cancelForm(int rh_num, Model model) {
		model.addAttribute("rh_num", rh_num);
		return "/reserveHotel/cancelForm";
	}

	@RequestMapping("/cancel")
	public String cancel(HttpSession session, int rh_num, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "ȸ������ ���̵�� ����� ȣ���� �ƴմϴ�.";
		String url = "list";
		if (id.equals(dao.selectOne(rh_num).getId())) {
			if (dao.delete(rh_num) > 0) {
				msg = "������ ����߽��ϴ�.";
			} else {
				msg = "������ ����ϴµ� �����߽��ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/editForm")
	public String editForm(int rh_num, Model model) {
		ReserveHotel reserveHotel = dao.selectOne(rh_num);
		model.addAttribute("reserveHotel", reserveHotel);
		return "/reserveHotel/editForm";
	}

	@RequestMapping("/edit")
	public String edit(HttpSession session, ReserveHotel reserveHotel, Model model) {
		String id = (String) session.getAttribute("id");
		String msg = "ȸ������ ���̵�� ����� ȣ���� �ƴմϴ�.";
		String url = "list";
		if (id.equals(dao.selectOne(reserveHotel.getRh_num()).getId())) {
			if (dao.update(reserveHotel) > 0) {
				msg = "������ ���������� �����Ͽ����ϴ�.";
			} else {
				msg = "������ �����ϴµ� �����Ͽ����ϴ�.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/list")
	public String list(HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		List<ReserveHotel> list = dao.list(id);
		model.addAttribute("list", list);
		return "/reserveHotel/list";
	}

	@RequestMapping("/detail")
	public String detail(int rh_num, HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		ReserveHotel reserveHotel = dao.selectOne(rh_num); // �Խù� ��ȸ
		List<ReserveHotel> list = dao.list(id);
		model.addAttribute("list", list);
		model.addAttribute("reserveHotel", reserveHotel);
		return "/reserveHotel/detail";
	}
}
