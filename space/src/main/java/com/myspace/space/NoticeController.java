package com.myspace.space;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {
		/**
		 *  notice_write_proc.do -->�������� ���� Proc
		 */
		@RequestMapping(value="/notice_write.do", method=RequestMethod.POST)
		public String notice_write_proc() {
			return "notice/notice";
		}
		/**
		 *  notice_write.do -->�������� ����
		 */
		@RequestMapping(value="/notice_write.do", method=RequestMethod.GET)
		public String notice_write() {
			return "notice/notice_write";
		}
		
		/**
		 *  notice_content.do -->�������� �󼼳��� ���
		 */
		@RequestMapping(value="/notice_content.do", method=RequestMethod.GET)
		public String notice_content() {
			return "notice/notice_content";
		}
		
		/**
		 * notice.do ---> ��������
		 */
		@RequestMapping(value="/notice.do", method=RequestMethod.GET)
		public String notice() {
			return "notice/notice";
		}
		
		/**
		 * faq.do --->���� ���� ����
		 */
		@RequestMapping(value="/faq.do", method=RequestMethod.GET)
		public String faq() {
			return "notice/faq";
		}
			
}
