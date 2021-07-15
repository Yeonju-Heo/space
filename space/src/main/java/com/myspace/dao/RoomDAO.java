package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspace.vo.OptionVO;
import com.myspace.vo.RoomVO;
import com.myspace.vo.ServiceVO;

@Repository
public class RoomDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "mapper.room";
	
	/* ȸ�ǽ� ��� */
	public boolean getInsertResult(RoomVO rvo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insert", rvo);
		
		if(value != 0) result = true;
		return result;
	}
	
	/* ȸ�ǽ� �ɼ� ��� */
	public boolean getInserOptiontResult(OptionVO ovo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insertOption", ovo);

		if(value != 0) result = true;
		return result;
	}

	/* ȸ�ǽ� ���� ��� */
	public boolean getInsertServiceResult(ServiceVO svo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insertService", svo);

		if(value != 0) result = true;
		return result;
	}
	
	/* ȸ�ǽ� ��� - �ֱ� ��ϵ� ȸ�ǽ� �̸� �������� */
	public String getInsertedId() {
		return sqlSession.selectOne(namespace+".insertedId");
	}
    
    /* ȸ�ǽ� ��� */
    public ArrayList<RoomVO> getList() {
    	List<RoomVO> list = sqlSession.selectList(namespace+".list");
    	return (ArrayList) list;
    }

    /* ȸ�ǽ� ��� - ȸ�ǽ�  */
    public ArrayList<OptionVO> getOptionList() { 	
    	List<OptionVO> list = sqlSession.selectList(namespace+".optionList");
    	return (ArrayList) list;
    }
    
    /* ȸ�ǽ� ��� - �˻�  */
	public ArrayList<RoomVO> getList(String location1, String location2, String date, String type, int capacity,
			int min, int max, int stars, ArrayList<String> option_list) {

		return null;
	}
    
	
	//����***********************
	
	/* ȸ�ǽ� �� */
    public RoomVO getRoomContent(String rid) {
            return sqlSession.selectOne(namespace+".roomcontent",rid);
    }
    
    /* ȸ�ǽ� �ɼ� */
    public OptionVO getRoomOption(String rid) {
            return sqlSession.selectOne(namespace+".roomoption",rid);
    }
    
    /* ȸ�ǽ� ���� - �ΰ����� */
    public ServiceVO getService(String rid) {
            return sqlSession.selectOne(namespace+".roomservice",rid);
    }
    
    /* ȸ�ǽ� ���� �ð� ��ȸ */
    public ArrayList<Object> getAvailableTime(String rid) {
            Map param = new HashMap<String, String>();
            param.put("rid", rid);
            
            List<Object> list = sqlSession.selectList(namespace+".availabletime", param);
            
            return (ArrayList<Object>)list;
    }
    
    /* ȸ�ǽ� ����  */
    /*
     * public boolean getReserveResult(ReservationVO vo) { boolean result=false; int
     * value = sqlSession.insert(namespace+".roomreserve", vo); if(value != 0)
     * result = true;
     * 
     * return result; }
     */
	
}












