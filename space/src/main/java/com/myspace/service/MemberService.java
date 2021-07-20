package com.myspace.service;

import java.util.ArrayList;

import com.myspace.vo.MemberVO;
import com.myspace.vo.SessionVO;


public interface MemberService {


	//MemberVO getContent(String id); 
	ArrayList<MemberVO> getList0(int start, int end);
	ArrayList<MemberVO> getList1(int start, int end);
	SessionVO getLoginResult(MemberVO vo);
	boolean getInsertResult0(MemberVO vo);   //����
	boolean getInsertResult1(MemberVO vo);    //���
	int execTotalCount();
	boolean getJoinIn(String id);
	boolean getJoinDelete(String id);
	boolean getJoinOut(String id);
	
	
	
}
