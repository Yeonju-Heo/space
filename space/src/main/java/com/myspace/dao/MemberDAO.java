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
	//��Ʈ�� ȸ������
	public int getInsertResult2(MemberVO vo) {
		return sqlSession.insert(namespasce+".join_pat", vo);    
	}

	//�α��� ó�� 
	public SessionVO getLoginResult(MemberVO vo) {
		return sqlSession.selectOne(namespasce+".login", vo);  //��񿬰��� ����ȣ���� ��� ����
	}
	
	//������������ - ���Խ��� ��ư Ȱ��ȭ
		/*public boolean join_accept_btn_able(String email) {
			boolean result = false;
			String sql = "update space_member set choicein=0 where email = ?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, email);
				int value = pstmt.executeUpdate();
				
				if(value != 0) {
					result = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			return result;
		}*/
	
	//������������ - ����� Ż�� ��ư Ȱ��ȭ
		/*public boolean delete_btn_able(String email) {
			boolean result = false;
			String sql = "update space_member set choiceout=1 where email = ?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, email);
				int value = pstmt.executeUpdate();
				
				if(value != 0) {
					result = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			return result;
		}*/
	
	/*
	 * //ȸ�� ��ü ����Ʈ :: ����¡ public ArrayList<MemberVO> getList(int start, int end) {
	 * Map param = new HashMap<String, String>(); param.put("start", start);
	 * param.put("end", end); List<MemberVO> list =
	 * sqlSession.selectList(namespasce+".list", param);
	 * 
	 * return (ArrayList<MemberVO>)list; }
	 * 
	 * //ȸ�� ������ public MemberVO getContent(String id) { return
	 * sqlSession.selectOne(namespasce+".content", id); }
	 */
			

}
