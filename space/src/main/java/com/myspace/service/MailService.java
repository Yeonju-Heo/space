package com.myspace.service;

import com.myspace.vo.Email;

public interface MailService {

	/** mail

	 * @param subject

	 * @param text

	 * @param from ������ �̸���

	 * @param to ����� �̸���


  **/

	boolean send(String subject, String text, String from, String to);
	void SendEmail(Email email) throws Exception;
}
