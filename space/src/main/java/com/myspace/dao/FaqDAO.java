package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myspace.vo.NoticeVO;

public class FaqDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.faq";

	//select --> �������� ������
	public NoticeVO getContent(String nid) {
		return sqlSession.selectOne(namespace+".content", nid);
	}
	
	
	//select ---> ����¡�� ���� ��ü �ο��
	public int execTotalCount() {
		return sqlSession.selectOne(namespace+".count");
				
	}

	//select ---> �������� ��ü����Ʈ
	public ArrayList<Object> getList(int start, int end){
		Map param = new HashMap<String, String>();
		param.put("start", start);
		param.put("end", end);
		
		List<Object> list= sqlSession.selectList(namespace+".list",param); 
		
		return (ArrayList<Object>)list;
	}

}
