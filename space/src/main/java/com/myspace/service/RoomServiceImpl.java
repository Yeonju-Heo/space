package com.myspace.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myspace.dao.RoomDAO;
import com.myspace.vo.OptionVO;
import com.myspace.vo.ReservationVO;
import com.myspace.vo.RoomVO;
import com.myspace.vo.ServiceVO;

@Service("roomService")
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDAO roomDAO;


    @Override
    public boolean getInsertResult(RoomVO rvo) {
            return roomDAO.getInsertResult(rvo);
    }
    
    @Override
    public boolean getInserOptiontResult(OptionVO ovo) {
            return roomDAO.getInserOptiontResult(ovo);
    }
    
    @Override
    public boolean getInsertServiceResult(ServiceVO svo) {
            return roomDAO.getInsertServiceResult(svo);
    }

    @Override
    public String getInsertedId() {
            return roomDAO.getInsertedId();
    }

    @Override
    public ArrayList<RoomVO> getMapList() {
            return roomDAO.getMapList();
    }

    @Override
    public ArrayList<RoomVO> getList(String location1, String location2, String date, double time, String type, int capacity, 
                                                            int min, int max, int stars, String[] option_list, String order) {

            return roomDAO.getList(location1, location2, date, time, type, capacity, min, max, stars, option_list, order);
    }

    @Override
    public ArrayList<OptionVO> getOptionList(ArrayList<String> rid_list, String order) {
            return roomDAO.getOptionList(rid_list, order);
    }

    @Override
    public boolean getUpdateResult(RoomVO rvo) {
            return roomDAO.getUpdateResult(rvo);
    }

    @Override
    public boolean getUpdateOptionResult(OptionVO ovo) {
            return roomDAO.getUpdateOptionResult(ovo);
    }

    @Override
    public boolean getUpdateServiceResult(ServiceVO svo) {
            return roomDAO.getUpdateServiceResult(svo);
    }
    
    @Override
    public boolean getDeleteResult(String rid) {
            return roomDAO.getDeleteResult(rid);
    }

    @Override
    public String getFile(String rid, String rsfile) {
            return roomDAO.getFile(rid, rsfile);
    }
    
    @Override
	public ReservationVO getReserve(String rid, String reserve_date, String checkin_time) {
		return roomDAO.getReserve(rid, reserve_date, checkin_time);
	}
	
	@Override
	public ReservationVO getReserve(String rsid) {
		return roomDAO.getReserve(rsid);
	}

	//����
    @Override
	public RoomVO getRoomContent(String rid) {
	        return roomDAO.getRoomContent(rid);
	}
	
	@Override
	public OptionVO getRoomOption(String rid) {
	        return roomDAO.getRoomOption(rid);
	}
	
	@Override
	public ServiceVO getService(String rid) {
	        return roomDAO.getService(rid);
	}
	
	@Override
	public ArrayList<ReservationVO> getAvailableTime(String rid) {
	        return roomDAO.getAvailableTime(rid);
	}
	
	    
	@Override
	public boolean getReserveResult(ReservationVO vo) { 
	        return roomDAO.getReserveResult(vo); 
	}
	     
	    
	@Override
	public ReservationVO getReservation(String rsid) { 
	        return roomDAO.getReservation(rsid);
	}
	 
	
	

	
	
	



}
