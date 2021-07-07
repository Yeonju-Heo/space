package com.myspace.space;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * DB������ Controller���� ó���Ѵ�
 * **/
@Controller
public class JoinController {
	
	/**
	 * join_main.do ---> ���� ȸ������ ȭ��
	 * **/
	@RequestMapping(value="/join_main.do", method = RequestMethod.GET)
	public String join_main() {
		return "join/join_main";
	}
	
	/**
	 * join_personal.do ---> ���� ȸ������ ȭ��
	 * **/
	@RequestMapping(value="/join_personal.do", method = RequestMethod.GET)
	public String join_personal() {
		return "join/join_personal";
	}
	
	/**
	 * join_cor.do ---> ��� ȸ������ ȭ��
	 * **/
	@RequestMapping(value="/join_cor.do", method = RequestMethod.GET)
	public String join_cor() {
		return "join/join_cor";
	}
	
	/**
	 * join_partner.do ---> ��Ʈ�� ȸ������ ȭ��
	 * **/
	@RequestMapping(value="/join_partner.do", method = RequestMethod.GET)
	public String join_partner() {
		return "join/join_partner";
	}
	
	/**
	 * join_proc.do   --> ȸ������ ó��
	 * **/
	/*@RequestMapping(value="/join_proc.do", method = RequestMethod.POST)
	public String join_proc(MemberVO vo) {
		String result_page = "";
		
		MemberDAO dao = new MemberDAO();
		boolean join_result = dao.getInsertResult(vo);
		
		if(join_result == true) {
			result_page = "join/joinSuccess";
		} else {
			result_page = "errorPage";
		}
		return result_page;
	}*/
	
	
	
}
