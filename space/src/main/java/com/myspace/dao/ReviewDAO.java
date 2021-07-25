package com.myspace.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspace.vo.ReservationVO;
import com.myspace.vo.ReviewVO;


@Repository
public class ReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace="mapper.review";
	
	//�����ȣ�� ���� ���� üũ
		public ReservationVO getSearchResult(String id, String rsid){
			boolean result = false;
			Map param = new HashMap<String,String>();
			param.put("id", id);
			param.put("rsid", rsid);
			
			ReservationVO revo = sqlSession.selectOne(namespace+".search", param);
			
			
			
			return revo;
		}
		
	//���� �޾ƿ���
		public ReviewVO getReviewContent(String id, String rsid) {
			Map param = new HashMap<String,String>();
			param.put("id", id);
			param.put("rsid", rsid);
			
			ReviewVO vo = sqlSession.selectOne(namespace+".content", param);
			
			
			return vo;
		}
		
	//���� �ۼ�
			public boolean getInsertResult(ReviewVO vo) {
				boolean result =false;
				
				int value = sqlSession.insert(namespace+".insert",vo);
				if(value != 0) {
					
					result=true;
				}
					
					
				return result;
			}
			
	//���� ����
			public boolean getUpdateResult(ReviewVO vo) {
				boolean result =false;
				
				int value = sqlSession.update(namespace+".update",vo);
				if(value != 0) {
					
					result=true;
				}
					
					
				return result;
			}
		
	//���� ����
			public boolean getDeleteResult(String id, String rsid) {
				boolean result =false;
				
				Map param = new HashMap<String,String>();
				param.put("id", id);
				param.put("rsid", rsid);
				
				int value = sqlSession.update(namespace+".delete",param);
				if(value != 0) {
					
					result=true;
				}
					
					
				return result;
			}
			
	//���� ��Ͻ� �ش� ȸ�ǽǿ� ���� ��� ������Ʈ, ���� �� ������Ʈ
			public boolean insertTotallv(ReviewVO vo) {
				boolean result = false;
				
				int value = sqlSession.update(namespace+".updatetotallv",vo);
				if(value != 0) {
					result=true;
				}
				
				return result;
			}
			
	
}
