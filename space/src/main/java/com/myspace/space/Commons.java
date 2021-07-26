package com.myspace.space;

import java.util.HashMap;

import com.myspace.service.FaqService;
import com.myspace.service.InquiryService;
import com.myspace.service.MemberService;
import com.myspace.service.NoticeService;
import com.myspace.service.RoomService;

public class Commons {
	//����¡ ó�� �޼ҵ�
	public HashMap<String,Integer> getPage(String rpage, Object obj, String name){
		HashMap<String, Integer>map = new HashMap<String, Integer>();
	
	
	//����¡ ó�� - startCount, endCount ���ϱ�
	int startCount = 0;
	int endCount = 0;
	int listend = 0;
	int pageSize = 15;	//���������� �Խù� ��
	int reqPage = 1;	//��û������	
	int pageCount = 1;	//��ü ������ ��
	int dbCount = 0;	//DB���� ������ ��ü ���
	
	if(name.equals("notice")) {
		NoticeService noticeService =(NoticeService)obj;
		dbCount = noticeService.execTotalCount();
	} 
	else if(name.equals("faq")) {
		FaqService faqService =(FaqService)obj;
		dbCount = faqService.execTotalCount();
	} 
	else if(name.equals("member")) {
		MemberService memberService =(MemberService)obj;
		dbCount = memberService.execTotalCount();
	}else if(name.equals("inquiry")) {
		InquiryService inquriyService =(InquiryService)obj;
		dbCount = inquriyService.execTotalCount();
		pageSize=10;
	}else if(name.equals("room")) {
		RoomService roomService =(RoomService)obj;
		dbCount = roomService.execTotalCount();
		pageSize=5;
	}
	
	//�� ������ �� ���
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;
	}else{
		pageCount = dbCount/pageSize+1;
	}
	
	//��û ������ ���
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		startCount = (reqPage-1) * pageSize+1;
		endCount = reqPage *pageSize;
	}else{
		startCount = 1;
		endCount = 5;
	}
	
	
	map.put("start", startCount);
	map.put("end", endCount);
	map.put("dbCount", dbCount);
	map.put("pageSize", pageSize);
	map.put("rpage", reqPage);
	
	
	//BoardDAO dao = new BoardDAO();
	//ArrayList<BoardVO> list = dao.getList();
	
	return map;
	}
	
	
	
	//����¡ ó�� �޼ҵ�
	   public HashMap<String,Integer> getPage(String rid, String rpage, Object obj, String name){
	      HashMap<String, Integer>map = new HashMap<String, Integer>();
	      
	      
	      //����¡ ó�� - startCount, endCount ���ϱ�
	      int startCount = 0;
	      int endCount = 0;
	      int listend = 0;
	      int pageSize = 5;   //���������� �Խù� ��
	      int reqPage = 1;   //��û������   
	      int pageCount = 1;   //��ü ������ ��
	      int dbCount = 0;   //DB���� ������ ��ü ���
	      
	      if(name.equals("room_content")) {
	         RoomService roomService =(RoomService)obj;
	         dbCount = roomService.getCountReview(rid);
	         System.out.println("################����Ϸ�");
	      } 
	      
	      //�� ������ �� ���
	      if(dbCount % pageSize == 0){
	         pageCount = dbCount/pageSize;
	      }else{
	         pageCount = dbCount/pageSize+1;
	      }
	      
	      //��û ������ ���
	      if(rpage != null){
	         reqPage = Integer.parseInt(rpage);
	         startCount = (reqPage-1) * pageSize+1;
	         endCount = reqPage *pageSize;
	      }else{
	         startCount = 1;
	         endCount = 3;
	      }
	      System.out.println("-------------------------------");
	      System.out.println(dbCount);
	      
	      System.out.println(startCount);
	      System.out.println("123"+endCount);
	      System.out.println("123>>>"+pageSize);
	      map.put("start", startCount);
	      map.put("end", endCount);
	      map.put("dbCount", dbCount);
	      map.put("pageSize", pageSize);
	      map.put("rpage", reqPage);
	      
	      
	      //BoardDAO dao = new BoardDAO();
	      //ArrayList<BoardVO> list = dao.getList();
	      
	      return map;
	   }
}	
	
	
	
	
	
	
	
	
	
	
	
	
