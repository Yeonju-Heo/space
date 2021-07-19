package com.myspace.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.myspace.vo.OptionVO;
import com.myspace.vo.ReservationVO;
import com.myspace.vo.RoomVO;
import com.myspace.vo.ServiceVO;

@Repository
public class RoomDAO {
	
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
    
/*    
    //ȸ�ǽ� ���
public ArrayList<RoomVO> getList() {
        List<RoomVO> list = sqlSession.selectList(namespace+".list");
        return (ArrayList) list;
        return null;
}

// ȸ�ǽ� ��� - ȸ�ǽ�
public ArrayList<OptionVO> getOptionList() {         
        List<OptionVO> list = sqlSession.selectList(namespace+".optionList");
        return (ArrayList) list;
        return null;
}
*/   
    
    /* ���� - ȸ�ǽ� ��� */
    public ArrayList<RoomVO> getMapList() {
            List<RoomVO> list = sqlSession.selectList(namespace+".mapList");
            return (ArrayList<RoomVO>) list ;
    }
    
/* ȸ�ǽ� �˻� ��� */
    public ArrayList<RoomVO> getList(String location1, String location2, String date, double time, String type, int capacity, 
                    int min, int max, int stars, ArrayList<String> option_list, String order) {
                    
            //Map param = new HashMap<String, String>();
    Map<String, Object> param = new HashMap<String, Object>();
    param.put("location1", location1);
    param.put("location2", location2);
    param.put("date", date);
    param.put("time", time);
    param.put("type", type);
    param.put("capacity", capacity);
    param.put("min", min);
    param.put("max", max);
    param.put("stars", (stars+1));
    param.put("option_list", option_list);
    param.put("order", order);
    
    List<RoomVO> list = sqlSession.selectList(namespace+".searchList", param);
    
    return (ArrayList<RoomVO>) list;
    }
    
    /* ȸ�ǽ� �˻� ��� - �ɼ� */
    public ArrayList<OptionVO> getOptionList(ArrayList<String> rid_list, String order) {
            
            Map<String, Object> param = new HashMap<String, Object>();
            param.put("rid_list", rid_list);
            param.put("order", order);

            List<OptionVO> list = sqlSession.selectList(namespace+".searchOptionList", param);
    
    return (ArrayList<OptionVO>) list;
    }
    
    public boolean getUpdateResult(RoomVO rvo) {
            boolean result = false;
            int value = sqlSession.update(namespace+".update", rvo);

            if(value != 0) result = true;
            return result;
    }

    public boolean getUpdateOptionResult(OptionVO ovo) {
            boolean result = false;
            int value = sqlSession.update(namespace+".updateOption", ovo);

            if(value != 0) result = true;
            return result;
    }

    public boolean getUpdateServiceResult(ServiceVO svo) {
            boolean result = false;
            int value = sqlSession.update(namespace+".updateService", svo);

            if(value != 0) result = true;
            return result;
    }
    
    public boolean getDeleteResult(String rid) {
            boolean result = false;
            int value = sqlSession.delete(namespace+".delete", rid);
            
            if(value != 0) result = true;
            return result;
    }
    
    public String getFile(String rid, String rsfile) {
            Map<String, String> param = new HashMap<String, String>();
            
            param.put("rid", rid);
            param.put("rsfile", rsfile);
            
            String rsfile_result = sqlSession.selectOne(namespace+".rsfile", param);
            
            return rsfile_result;
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
    
    /* ȸ�ǽ� ���� �ð� ����Ʈ */
    public ArrayList<ReservationVO> getAvailableTime(String rid) {
            Map param = new HashMap<String, String>();
            param.put("rid", rid);
            
            List<ReservationVO> list = sqlSession.selectList(namespace+".availabletime", param);
            
            return (ArrayList<ReservationVO>)list;
    }
    
    /* ȸ�ǽ� ����  */
    public boolean getReserveResult(ReservationVO vo) { 
    	boolean result=false; 
    	int	value = sqlSession.insert(namespace+".roomreserve", vo);
    	if(value != 0)	result = true;
    
    	return result; 
    }
    
	
}












