package com.myspace.service;

import java.util.ArrayList;

import com.myspace.vo.MemberVO;
import com.myspace.vo.SessionVO;


public interface MemberService {


	//MemberVO getContent(String id); 
	ArrayList<MemberVO> getList0(int start, int end);
	ArrayList<MemberVO> getList1(int start, int end);
	SessionVO getLoginResult(MemberVO vo);    //�α���ó��
	boolean getInsertResult0(MemberVO vo);   //����
	boolean getInsertResult1(MemberVO vo);    //���
	int execTotalCount();
	boolean getJoinIn(String id);   //���Խ��� & ���� ���ι�ư Ȱ��ȭ
	boolean getJoinOut(String id);   //���� Ż���ư ������ admin�� list�� Ż�� ���� ��ư Ȱ��ȭ
	boolean getJoinBdelete(String id);   //Ż��(ȸ������)
	void newPassword(MemberVO vo);
}
