package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspace.vo.FaqVO;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.faq";

	
	//select ---> ����¡�� ���� ��ü �ο��
	public int execTotalCount() {
		return sqlSession.selectOne(namespace+".faqcount");
				
	}

	//select ---> �������� ��ü����Ʈ
	public ArrayList<Object> getList(int start, int end){
		Map param = new HashMap<String, String>();
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));
		
		List<Object> list= sqlSession.selectList(namespace+".faqlist",param); 
		
		return (ArrayList<Object>)list;
	}

}
