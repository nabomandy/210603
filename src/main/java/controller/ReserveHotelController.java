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
		String msg = "예약을 실패하였습니다.";
		String url = "reserveForm";
		if (dao.insert(reserveHotel) > 0) {
			msg = "예약이 완료되었습니다.";
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
		String msg = "회원님의 아이디로 예약된 호텔이 아닙니다.";
		String url = "list";
		if (id.equals(dao.selectOne(rh_num).getId())) {
			if (dao.delete(rh_num) > 0) {
				msg = "예약을 취소했습니다.";
			} else {
				msg = "예약을 취소하는데 실패했습니다.";
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
		String msg = "회원님의 아이디로 예약된 호텔이 아닙니다.";
		String url = "list";
		if (id.equals(dao.selectOne(reserveHotel.getRh_num()).getId())) {
			if (dao.update(reserveHotel) > 0) {
				msg = "예약을 성공적으로 수정하였습니다.";
			} else {
				msg = "예약을 수정하는데 실패하였습니다.";
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
		ReserveHotel reserveHotel = dao.selectOne(rh_num); // 게시물 조회
		List<ReserveHotel> list = dao.list(id);
		model.addAttribute("list", list);
		model.addAttribute("reserveHotel", reserveHotel);
		return "/reserveHotel/detail";
	}
}
