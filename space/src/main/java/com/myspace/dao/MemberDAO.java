package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspace.vo.MemberVO;
import com.myspace.vo.SessionVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespasce="mapper.member";
	
	public MemberVO getInfo(String id) {
		return sqlSession.selectOne(namespasce+".info",id); 
	}
	
	public boolean getPassChangeResult(String new_pass,String id) {
	
		boolean result = false;
		
		Map param =new HashMap<String,String>();
		param.put("new_pass", new_pass);
		param.put("id", id);
		
		int value = sqlSession.update(namespasce+".passChange",param);
		if(value != 0) result= true;
		
		
		return result;
		
		
	}
	
	// ��ü ī��Ʈ ��������(<!-- ��ü ROW �� -->)
	public int execTotalCount(){
		return sqlSession.selectOne(namespasce+".count");
	}
	
	//���� ȸ������
	public int getInsertResult0(MemberVO vo) {
		return sqlSession.insert(namespasce+".join_per", vo);   
	}
	//��� ȸ������
	public int getInsertResult1(MemberVO vo) {
		return sqlSession.insert(namespasce+".join_cor", vo);    
	}

	//�α��� ó�� 
	public SessionVO getLoginResult(MemberVO vo) {
		return sqlSession.selectOne(namespasce+".login", vo);  //��񿬰��� ����ȣ���� ��� ����
	}
	
	//��й�ȣ ã��
	public void newPassword(MemberVO vo) {
		sqlSession.update(namespasce+".newPassword",vo);
	}
	
	// ������������ - ����� ���Խ��� ó���ϱ� : choicein�� 0���� 1�� �ٲٱ� 
	public boolean getJoinIn(String id) {
		boolean result = false;
		int value = sqlSession.update(namespasce + ".cor_joinin", id);
		if(value != 0) result = true;  
		System.out.println(value);
		
		
		return result;
		
		/*String sql = "update space_member set choicein=1 where id = ?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, id);
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;*/
	}
	
	
	// ������������ - ����� Ż�� ó���ϱ�
	public boolean getJoinOut(String id) {
		boolean result = false;
		int value = sqlSession.update(namespasce + ".member_joinout", id);
		if(value != 0) result = true;  
		
		return result;
		
		/*String sql = "delete from space_member where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			int value = pstmt.executeUpdate();
			if(value !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();		}
		close();
		return result;*/
	}
	
	// ������������ - Ż�� ��ư Ȱ��ȭ : choiceout�� 0���� 1�� �ٲٱ� 
	public boolean getJoinBdelete(String id) {
		boolean result = false;
		int value = sqlSession.delete(namespasce+".joinout_btn_able", id);
		if(value != 0) result = true;	//����Ÿ�� �ȸ����ϱ�
		
		return result;
		
		/*String sql = "update space_member set choiceout=1 where id = ?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, id);
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;*/
	}
	
	
	 //���� ȸ�� ��ü ����Ʈ :: ����¡ 
	 public ArrayList<MemberVO> getList0(int start, int end) {
		 Map param = new HashMap<String, String>(); 
		 param.put("start", start);
		 param.put("end", end); 
		 List<MemberVO> plist = sqlSession.selectList(namespasce+".plist", param);
		 
		 return (ArrayList<MemberVO>)plist; 
	 }
	 //��� ȸ�� ��ü ����Ʈ :: ����¡ 
	 public ArrayList<MemberVO> getList1(int start, int end) {
		 Map param = new HashMap<String, String>(); 
		 param.put("start", start);
		 param.put("end", end); 
		 List<MemberVO> clist = sqlSession.selectList(namespasce+".clist", param);
		 
		 return (ArrayList<MemberVO>)clist; 
	 }
	 
	 //ȸ�� ������ 
	// public MemberVO getContent(String id) { 
		// return sqlSession.selectOne(namespasce+".content", id); }
	 
			

}
