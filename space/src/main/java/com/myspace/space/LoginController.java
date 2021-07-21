package com.myspace.space;


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
	@RequestMapping(value="/login_check.do", method = RequestMethod.POST)
	public String login_check(MemberVO vo, HttpSession session) {
		
		//�α��� ������ �Ѿ���� ������ �ޱ�
		String result_page = "";
		SessionVO svo = memberService.getLoginResult(vo);
		
		if(svo != null) {
			svo.setId(vo.getId());
			session.setAttribute("svo",svo);
			//result_page = "index";   -> �̷��� �ַ��� index.jsp�� jquery(if�� �� ���δ����)���ǹ� �߰��ؾ���.
			
			if(svo.getChoicein() == 0) {
				result_page = "login/login";
			}else {
			result_page = "index";
			}
			
		} else {
			result_page = "login/loginFail";
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
