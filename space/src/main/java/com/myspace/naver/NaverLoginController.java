package com.myspace.naver;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NaverLoginController {
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}


	// �α��� ù ȭ�� ��û �޼ҵ�
	@RequestMapping(value = "/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("���̹�:" + naverAuthUrl);
		// ���̹�
		model.addAttribute("url", naverAuthUrl);
		return "login/login";
	}

	// ���̹� �α��� ������ callbackȣ�� �޼ҵ�
	@RequestMapping(value = "/naverLoginSuccess.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("����� callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		// 1. �α��� ����� ������ �о�´�.
		apiResult = naverLoginBO.getUserProfile(oauthToken); // String������ json������
		/**
		 * apiResult json ���� {"resultcode":"00", "message":"success",
		 * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
		 **/
		model.addAttribute("result", apiResult);
		return "login/naverLoginSuccess";
	}

	// �α׾ƿ�
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) throws IOException {
		System.out.println("����� logout");
		session.invalidate();
		return "redirect:index.jsp";
	}

	// ���̹� �������� ��ȸ
	/*
	 * @RequestMapping(value = "/login/oauth_naver") public String
	 * oauthNaver(HttpServletRequest request, HttpServletResponse response) throws
	 * Exception {
	 * 
	 * JSONParser parser = new JSONParser(); Gson gson = new Gson();
	 * 
	 * HttpSession session = request.getSession(); String code =
	 * request.getParameter("code"); String state = request.getParameter("state");
	 * String error = request.getParameter("error");
	 * 
	 * // �α��� �˾�â���� ��ҹ�ư ��������� if ( error != null ){
	 * if(error.equals("access_denied")){ return "redirect:/login"; } }
	 * 
	 * OAuth2AccessToken oauthToken; oauthToken =
	 * naverLoginBO.getAccessToken(session, code, state); //�α��� ����� ������ �о�´�. String
	 * loginInfo = naverLoginBO.getUserProfile(session, oauthToken);
	 * 
	 * // JSON ���·� ��ȯ Object obj = parser.parse(loginInfo); JSONObject jsonObj =
	 * JSONObject.fromObject(gson.toJson(obj)); JSONObject callbackResponse =
	 * (JSONObject) jsonObj.get("response"); String naverUniqueNo =
	 * callbackResponse.get("id").toString();
	 * 
	 * if (naverUniqueNo != null && !naverUniqueNo.equals("")) {
	 * 
	 * /**
	 * 
	 * TO DO : ���Ϲ��� naverUniqueNo �ش��ϴ� ȸ������ ��ȸ �� �α��� ó�� �� �������� �̵�
	 * 
	 */

	// ���̹� ������ȸ ����
	/*
	 * } else { throw new ErrorMessage("���̹� ������ȸ�� �����߽��ϴ�."); }
	 * 
	 * }
	 */
}
