package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.MemberDaoMybatis;
import mybatis.Member;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	MemberDaoMybatis dao;
	
	@RequestMapping("/main")
	public String main(HttpSession session) throws Throwable {
		String id = (String) session.getAttribute("id");
		return "redirect:/index";
	}

	@RequestMapping("/join")
	public String join(@ModelAttribute Member member, Model model) throws Throwable {
		SimpleDateFormat joindate_format = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
		Date date = new Date();
		member.setJoin_date(joindate_format.format(date));
		member.setMemlevel("welcome");

		int num = dao.insert(member);
		String msg = "";
		String url = "";
		if (num > 0) {
			msg = member.getName() + " ���ԿϷ�";
			url = "loginForm";
		} else {
			msg = "���Խ���";
			url = "joinForm";
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(name = "id", required = true) String id,
			@RequestParam(name = "pass", required = true) String pass, Model model, HttpSession session)
			throws Throwable {
		Member member = dao.selectOne(id);
		String msg = "���̵� Ȯ���ϼ���";
		String url = "loginForm";
		if (member != null) {
			if (pass.equals(member.getPass())) {
				session.setAttribute("id", id);
				msg = member.getName() + "���� �α��� �ϼ̽��ϴ�.";
				url = "main";
			} else {
				msg = "��й�ȣ�� Ȯ���ϼ���.";
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session, Model model) throws Throwable {
		String id = (String) session.getAttribute("id");
		session.invalidate();
		String msg = id + "���� �α׾ƿ� �Ǿ����ϴ�.";
		String url = "main";
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/alert";
	}

	@RequestMapping("/myPage")
	public String myPage(HttpSession session, Model model) throws Throwable {
		String id = (String) session.getAttribute("id");
		String msg = "";
		String url = "";
		if (id == null || id.trim().equals("")) {
			msg = "�α����� �ʿ��մϴ�.";
			url = "loginForm";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else if (!id.equals("admin") && !id.equals(id)) {
			msg = "�ڽ��� ������ ��ȸ�� �����մϴ�.";
			url = "main";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else {
			Member member = dao.selectOne(id);
			model.addAttribute("member", member);
			return "/member/myPage";
		}
	}

	@RequestMapping("/delete")
	public String delete(String pass, HttpSession session, Model model) throws Throwable {
		String id = (String) session.getAttribute("id");
		String msg = null;
		String url = null;
		if (id == null || id.trim().equals("")) {
			msg = "�α����� �ʿ��մϴ�.";
			url = "loginForm";
		} else if (!id.equals(id) && !id.equals("admin")) {
			msg = "���θ� Ż�� �����մϴ�.";
			url = "main";
		} else if (id.equals("admin")) {
			msg = "�����ڴ� Ż���� �� �����ϴ�.";
			url = "main";
		} else {
			Member member = dao.selectOne(id);
			if (id.equals("admin") || pass.equals(member.getPass())) {
				int result = dao.delete(id);
				if (result > 0) {
					if (id.equals("admin")) {
						msg = id + "����ڸ� ���� Ż�� ����";
						url = "memberList";
					} else {
						msg = id + "���� ȸ��Ż�� �Ϸ�";
						url = "main";
						session.invalidate();
					}
				} else {
					msg = id + "���� Ż�� ���� �߻�.";
					if (id.equals("admin")) {
						url = "memberList";
					} else {
						url = "main";
					}
				}
			} else {
				msg = id + "���� ��й�ȣ�� Ʋ���ϴ�.";
				url = "deleteForm?id=" + id;
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/deleteForm")
	public String deleteForm(HttpSession session, Model model) throws Throwable {
		String id = (String) session.getAttribute("id");
		model.addAttribute("id", id);
		return "/member/deleteForm";
	}

	@RequestMapping("/password")
	public String password(String pass, String chgpass, Model model, HttpSession session)
			throws Throwable {
		String id = (String) session.getAttribute("id");
		boolean opener = false;
		String msg = null;
		String url = null;
		if (id == null || id.trim().equals("")) {
			opener = true;
			msg = "�α����ϼ���.";
			url = "loginForm";
		} else {
			Member member = dao.selectOne(id);
			if (pass.equals(member.getPass())) {
				if (dao.updatePass(id, chgpass) > 0) {
					msg = "��й�ȣ ���� �Ϸ�.";
					url = "myPage?id=" + id;
					opener = true;
				} else {
					msg = "��й�ȣ ����� ���� �߻�.";
					url = "passwordForm";
				}
			} else {
				msg = "��й�ȣ ����. Ȯ���ϼ���.";
				url = "passwordForm";
			}
		}
		model.addAttribute("opener", opener);
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/member/password";
	}

	@RequestMapping("/updateForm")
	public String updateForm(Model model, HttpSession session) throws Throwable {
		String id = (String) session.getAttribute("id");
		String msg = "";
		String url = "";
		if (id == null || id.trim().equals("")) {
			msg = "�α����� �ʿ��մϴ�.";
			url = "loginForm";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else if (!id.equals("admin") && !id.equals(id)) {
			msg = "�ڽ��� ������ ������ �����մϴ�.";
			url = "myPage?id=" + id;
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";
		} else {
			Member member = dao.selectOne(id);
			model.addAttribute("member", member);
			return "/member/updateForm";
		}
	}

	@RequestMapping("/update")
	public String update(@ModelAttribute Member member, Model model) throws Throwable {
		String msg = null;
		String url = null;
		Member dbMem = dao.selectOne(member.getId());
		if (!member.getId().equals("admin") && !member.getPass().equals(dbMem.getPass())) {
			msg = "��й�ȣ�� Ʋ���ϴ�. Ȯ�� �� �ٽ��ϼ���.";
			url = "updateForm?id=" + member.getId();
		} else {
			if (dao.update(member) > 0) {
				msg = member.getId() + "���� ȸ�������� �����Ǿ����ϴ�.";
				url = "myPage?id=" + member.getId();
			} else {
				msg = member.getId() + "���� ȸ������ ���� ����.";
				url = "updateForm?id=" + member.getId();
			}
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		return "/alert";
	}

	@RequestMapping("/memberList")
	public String memberList(HttpSession session, Model model) throws Throwable {

		String id = (String) session.getAttribute("id");
		String msg = "";
		String url = "";
		if (id == null || id.trim().equals("")) {

			msg = "�����ڷ� �α����ϼ���";
			url = "loginForm";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";

		} else if (!id.equals("admin")) {

			msg = "�����ڸ� ������ �ŷ��Դϴ�";
			url = "main";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "/alert";

		} else {
			List<Member> list = dao.list();
			model.addAttribute("list", list);
			return "/member/memberList";
		}
	}

	@RequestMapping("/pictureimg")
	public String pictureimg(MultipartHttpServletRequest request, Member member, Model model) {
		String uploadpath = request.getServletContext().getRealPath("/memimg");
		MultipartFile multiFile = request.getFile("uploadpic");
		String filename = multiFile.getOriginalFilename();
		if (!multiFile.isEmpty()) {
			File file = new File(uploadpath, filename);
			try {
				multiFile.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("filename", filename);
		return "/single/pictureimg";
	}

	/*
	 * 
	 * public String listCoupon(HttpServletRequest request, HttpServletResponse
	 * response) throws Throwable {
	 * 
	 * String login = (String) request.getSession().getAttribute("login"); String
	 * msg = ""; String url = ""; if (login == null || login.trim().equals("")) {
	 * 
	 * msg = "�����ڷ� �α����ϼ���"; url = "loginForm"; request.setAttribute("msg", msg);
	 * request.setAttribute("url", url); return "/alert";
	 * 
	 * } else if (!login.equals("admin")) {
	 * 
	 * msg = "�����ڸ� ������ �ŷ��Դϴ�"; url = "main"; request.setAttribute("msg", msg);
	 * request.setAttribute("url", url); return "/alert";
	 * 
	 * } else { List<Coupon_detail> list = new Coupon_detailDao().list();
	 * request.setAttribute("list", list); return "/coupon/listCoupon"; } }
	 * 
	 * public String addCoupon(HttpServletRequest request, HttpServletResponse
	 * response) throws Throwable { request.setCharacterEncoding("euc-kr");
	 * Coupon_detail cd = new Coupon_detail();
	 * cd.setC_name(request.getParameter("c_name"));
	 * cd.setC_discount(request.getParameter("c_discount"));
	 * cd.setC_price(Integer.parseInt(request.getParameter("c_price")));
	 * cd.setKind(request.getParameter("kind")); Coupon_detailDao dao = new
	 * Coupon_detailDao(); int num = dao.add(cd); String msg = ""; String url = "";
	 * if (num > 0) { msg = "���� �߰� ����"; url = "/member/main"; } else { msg =
	 * "�߰� ����"; url = "addCouponForm"; } request.setAttribute("msg", msg);
	 * request.setAttribute("url", url); return "/alert"; }
	 * 
	 * public String deleteCoupon(HttpServletRequest request, HttpServletResponse
	 * response) throws Throwable { request.setCharacterEncoding("euc-kr");
	 * Coupon_detail cd = new Coupon_detail(); int coupon_seq =
	 * Integer.parseInt(request.getParameter("coupon_seq")); Coupon_detailDao dao =
	 * new Coupon_detailDao(); int num = dao.delete(coupon_seq); String msg = "";
	 * String url = ""; if (num > 0) { msg = "���� ���� ����"; url = "/member/main"; }
	 * else { msg = "���� ����"; url = "deleteCouponForm"; } request.setAttribute("msg",
	 * msg); request.setAttribute("url", url); return "/alert"; }
	 * 
	 * public String getCoupon(HttpServletRequest request, HttpServletResponse
	 * response) throws Throwable { request.setCharacterEncoding("euc-kr"); Coupon c
	 * = new Coupon();
	 * c.setCoupon_seq(Integer.parseInt(request.getParameter("coupon_seq")));
	 * c.setId(request.getParameter("id"));
	 * c.setC_period(request.getParameter("c_period")); CouponDao dao = new
	 * CouponDao(); int num = dao.get(c); String msg = ""; String url = ""; if (num
	 * > 0) { msg = "���� �߱� ����"; url = "/member/main"; } else { msg = "�߱� ����"; url =
	 * "getCouponForm"; } request.setAttribute("msg", msg);
	 * request.setAttribute("url", url); return "/alert"; }
	 * 
	 * public String addCouponForm(HttpServletRequest request, HttpServletResponse
	 * response) throws Throwable { String login = (String)
	 * request.getSession().getAttribute("login"); String msg = ""; String url = "";
	 * if (login == null || login.trim().equals("")) { msg = "�����ڷ� �α����ϼ���"; url =
	 * "loginForm"; request.setAttribute("msg", msg); request.setAttribute("url",
	 * url); return "/alert"; } else if (!login.equals("admin")) { msg =
	 * "�����ڸ� ������ �ŷ��Դϴ�"; url = "main"; request.setAttribute("msg", msg);
	 * request.setAttribute("url", url); return "/alert"; } else { return
	 * "/coupon/addCouponForm"; } }
	 * 
	 * public String deleteCouponForm(HttpServletRequest request,
	 * HttpServletResponse response) throws Throwable { String login = (String)
	 * request.getSession().getAttribute("login"); String msg = ""; String url = "";
	 * if (login == null || login.trim().equals("")) { msg = "�����ڷ� �α����ϼ���"; url =
	 * "loginForm"; request.setAttribute("msg", msg); request.setAttribute("url",
	 * url); return "/alert"; } else if (!login.equals("admin")) { msg =
	 * "�����ڸ� ������ �ŷ��Դϴ�"; url = "main"; request.setAttribute("msg", msg);
	 * request.setAttribute("url", url); return "/alert"; } else { return
	 * "/coupon/deleteCouponForm"; } }
	 * 
	 * public String getCouponForm(HttpServletRequest request, HttpServletResponse
	 * response) throws Throwable { return "/coupon/getCouponForm"; }
	 */

}