package com.myspace.space;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myspace.service.MemberService;
import com.myspace.vo.MemberVO;
import com.myspace.vo.SessionVO;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;  
	
	/**
	 * login.do: �α��� ȭ��
	 * **/
	/*@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login() {
		return "login/login";
	}*/
	
	
	/**
	 * login_check.do: �α��� ó��
	 * **/
	/**���Խ����� �ȵǵ� �α����� ������ login.jsp�ʿ��� jquery�� ����ؼ� ������ �α׾ƿ���Ŵ(logout.do �̿�): �� ������ ����Ϸ��� login.jsp ���� jquery�ּ�ó�� �� �κ� �ּ� Ǯ��!**/
	/*@RequestMapping(value="/login_check.do", method = RequestMethod.POST)
	public String login_check(MemberVO vo, HttpSession session) {
		
		//�α��� ������ �Ѿ���� ������ �ޱ�
		String result_page = "";
		SessionVO svo = memberService.getLoginResult(vo);
		
		if(svo != null) {
			svo.setId(vo.getId());
			session.setAttribute("svo",svo);
			//result_page = "index";  // -> �̷��� �ַ��� index.jsp�� jquery(if�� �� ���δ����)���ǹ� �߰��ؾ���.
			
			if(svo.getChoicein() == 0) {
				result_page = "login/login";
			}else {
				result_page = "index";
			}
			
		} else {
			result_page = "login/loginFail";
		}

		return result_page;
	}*/
	/**���Խ����� �ȵǸ� �ƿ� �α����� �ȵǰ� ó���ϰ� controller�ȿ��� alert(���â)�� ���� ��**/
	@RequestMapping(value="/login_check.do", method = RequestMethod.POST)
	public String login_check(MemberVO vo, HttpSession session,  HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//�α��� ������ �Ѿ���� ������ �ޱ�
		String result_page = "";
		SessionVO svo = memberService.getLoginResult(vo);
		if(svo != null) {
			if(svo.getChoicein() == 1) {
				svo.setId(vo.getId());
				session.setAttribute("svo",svo);
				result_page = "redirect:/index.do";  // -> �̷��� �ַ��� index.jsp�� jquery(if�� �� ���δ����)���ǹ� �߰��ؾ���.
				
			} else {
				result_page = "login/login";
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('���� ��� ���Դϴ�.'); history.go(-1);</script>");  //history.go(-1); :�Ѵܰ� �ڷΰ���(id�� ���� �ƴ����� �״�� ���) //������ �� �׳� login.jsp �����
				out.flush();  //���ϸ� �˶� �ȶ�
			}
		}else {
			result_page = "login/loginFail";
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('ȸ�������� ���ų� ���̵�/��й�ȣ�� Ʋ�Ƚ��ϴ�.'); history.go(-1);</script>");
			out.flush();  //���ϸ� �˶� �ȶ�
		}
		
		return result_page;
	}
	
	/**
	 * logout.do : �α׾ƿ� ó��
	 * **/
	@RequestMapping(value="logout.do", method=RequestMethod.GET)    //Ŭ���ؼ� �Ѿ���⋚���� GET
	public String logout(HttpSession session) {
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		if(svo != null)
			session.invalidate();
		
		return "/index";
	}


	/**
	 * pass_find.do: ��й�ȣ ã�� ȭ��
	 * **/
	@RequestMapping(value="/pass_find.do", method = RequestMethod.GET)
	public String pass_find() {
		return "login/pass_find";
	}
	
	/**
	 * pass_find_check.do: ��й�ȣ ã�� ó��
	 * **/
	@RequestMapping(value="/pass_find_check.do", method = RequestMethod.POST)
	public String pass_find_check(MemberVO vo) {
		return "login/login_find";
	}
	
	
}
