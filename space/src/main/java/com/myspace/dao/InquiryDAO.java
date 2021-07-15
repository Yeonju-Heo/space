package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspace.vo.InquiryVO;

@Repository
public class InquiryDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="mapper.inquiry";
	
	//���� ���� �亯
	public boolean getUpdateResult(String qid, String acontent){
		boolean result = false;
		
		Map param = new HashMap<String, String>();
		param.put("qid", qid);
		param.put("acontent",acontent);
	
		int value = sqlSession.update(namespace+".inquiryupdate", param);
		if(value != 0) result = true;
		return result;
	}
	//���ǻ��� ����Ʈ
	public ArrayList<InquiryVO> getList(){
		List<InquiryVO> list = sqlSession.selectList(namespace+".list");
		
		return (ArrayList<InquiryVO>)list;
	}
	
	//���ǻ��� ��������
	public InquiryVO getContent(String qid) {
		return sqlSession.selectOne(namespace+".content",qid);
	}
	
	//insert ���ǻ��� �۾���
		public boolean getInsertResult(InquiryVO vo){
			boolean result = false;
			int value = sqlSession.insert(namespace+".insert", vo);
			if(value != 0) result = true;
			return result;
		}
}
