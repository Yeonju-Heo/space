package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspace.vo.NoticeVO;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.notice";
	
	//Delete ����� upload�� ���� ������ ���� ���ϸ� ��������
	public String getFile(String nid){
		return sqlSession.selectOne(namespace+".nsfile", nid);
	}
	
	//delete --> �������� ����
	public boolean getDeleteResult(String nid) {
		boolean result = false ;
		int value = sqlSession.delete(namespace+".delete", nid);
		if(value != 0) result=true;
		return result;
	}
	
	//update ---> �������� ������Ʈ : �������� ����
	public boolean getUpdateResultNofile(NoticeVO vo){
		boolean result = false;
		int value = sqlSession.update(namespace+".updatenofile", vo);
		if(value != 0) result= true;
		
		return result;
	}


	//update ---> �������� ������Ʈ : ���ο� ���� ����
	public boolean getUpdateResult(NoticeVO vo){
		boolean result = false;
		int value = sqlSession.update(namespace+".updatefile", vo);
		if(value != 0) result= true;
		
		return result;
	}
	
	
	//update-- > �������� ��ȸ�� ������Ʈ
	public void getUpdateHit(String nid){
		sqlSession.update(namespace+".updatehit", nid);
	}
	
	//select --> �������� ������
	public NoticeVO getContent(String nid) {
		return sqlSession.selectOne(namespace+".content", nid);
	}
	
	
	//select ---> ����¡�� ���� ��ü �ο��
	public int execTotalCount() {
		return sqlSession.selectOne(namespace+".count");
				
	}
	//select ---> �������� �������� ������
	public ArrayList<Object> getnextList(int rno){
		List<Object> list= sqlSession.selectList(namespace+".nextlist", rno); 
		
		return (ArrayList<Object>)list;
	}

	//select ---> �������� ��ü����Ʈ
	public ArrayList<Object> getList(int start, int end){
		Map param = new HashMap<String, String>();
		param.put("start", start);
		param.put("end", end);
		
		List<Object> list= sqlSession.selectList(namespace+".list",param); 
		
		return (ArrayList<Object>)list;
	}
	
	
	// insert --> �������� �۾���
	public boolean getInsertResult(NoticeVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insert", vo);
		if(value != 0) result=true;
		return result;
	}

}
