package com.myspace.space;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myspace.service.RoomService;
import com.myspace.vo.OptionVO;
import com.myspace.vo.ReservationVO;
import com.myspace.vo.RoomVO;
import com.myspace.vo.ServiceVO;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService roomService;

	@ResponseBody
	@RequestMapping(value="/get_list.do", method=RequestMethod.POST)  //, produces = "application/json"
	public String getList(String location, String date, String type, String min, String max, String stars, @RequestParam(value="option_list[]") ArrayList<String> option_list) {
		
		//���
		String location1 = "null";  //����
		String location2 = "null";  //������
		
		if(!location.equals("null")) {
			if(location.contains(">")) {
				String[] location_list = location.split(" > ");
				location1 = location_list[0];  //����
				location2 = location_list[1];  //������
			} else {
				location1 = location;
			}
		}
		
		
		//�ݾ� �ּ� �ִ�
		min = min.replace(",", "");
		max = max.replace(",", "");
		
		
		//date�� ��� ����...?
		date = "null";
		
		//Ÿ��, �ο� �и�
		String capacity = "null";
		
		if(!type.equals("null") && type.contains(" ")) {
			String[] type_list = type.split(" ");
			type = type_list[0];
			capacity = type_list[1];
		}

		option_list.remove(0);  //option_list�� �⺻���� �־��� default �� ����

		
/*		
		System.out.println("location>>"+location);
		System.out.println("date>>"+date);
		System.out.println("type>>"+type);
		System.out.println("min>>"+min.replace(",", "")); //replace�� , ���ֱ�
		System.out.println("max>>"+max.replace(",", ""));
		System.out.println("stars>>"+stars);
		System.out.println("option_list>>"+option_list);
		
		option_list.remove(0);  //option_list�� �⺻���� �־��� default �� ����
		
		if(option_list!=null) {
			for(String option : option_list) {
				System.out.println("option>>"+option);
			}
		}
		System.out.println("---------------------------");
*/		
		
		
		ArrayList<RoomVO> rlist = roomService.getList(location1, location2, date, type, Integer.parseInt(capacity), 
						Integer.parseInt(min), Integer.parseInt(max), Integer.parseInt(stars), option_list);
		
		
		
		
        
        return "hello";
	}


	@RequestMapping(value="/room_list.do", method=RequestMethod.GET)
	public ModelAndView room_list() {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<RoomVO> rlist = roomService.getList();
		ArrayList<OptionVO> olist = roomService.getOptionList();
		
		mv.setViewName("room/room_list");
		mv.addObject("rlist", rlist);
		mv.addObject("olist", olist);
		
		return mv;
	}
	
	@RequestMapping(value="/room_reserve_confirm.do", method=RequestMethod.GET)
	public String room_reserve_confirm() {
		return "room/room_reserve_confirm";
	}
	
	@RequestMapping(value="/room_payment.do", method=RequestMethod.GET)
	public String room_payment() {
		return "room/room_payment";
	}
	
	@RequestMapping(value="/room_payment_proc.do", method=RequestMethod.GET)
	public String room_payment_proc() {
		return "room/room_payment_proc";
	}
	
	@RequestMapping(value="/room_payment_success.do", method=RequestMethod.GET)
	public String room_payment_success() {
		return "room/room_payment_success";
	}

	@RequestMapping(value="/room_map.do", method=RequestMethod.GET)
	public String room_map() {
		return "room/room_map";
	}
	
	/**
	 * ȸ�ǽ� ���(��� ����������)
	 */
	@RequestMapping(value="/room_insert_proc.do", method=RequestMethod.POST)
	public ModelAndView room_insert_proc(RoomVO rvo, OptionVO ovo, ServiceVO svo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		UUID uuid = UUID.randomUUID();  

		rvo.setRfile1(rvo.getFile1().getOriginalFilename());  //����1 �ʼ�(if�� ����)
		rvo.setRsfile1(uuid + "_" + rvo.getFile1().getOriginalFilename());	

		if (rvo.getFile2().getSize()!=0) {
			uuid = UUID.randomUUID();
			rvo.setRfile2(rvo.getFile2().getOriginalFilename());
			rvo.setRsfile2(uuid + "_" + rvo.getFile2().getOriginalFilename());
		} 

		if(rvo.getFile3().getSize()!=0) {
			uuid = UUID.randomUUID();
			rvo.setRfile3(rvo.getFile3().getOriginalFilename());
			rvo.setRsfile3(uuid + "_" + rvo.getFile3().getOriginalFilename());
		}
		
		rvo.setId("test");  //�������� �ް� �Ǹ� ����� !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!######################################################
		boolean room_result = roomService.getInsertResult(rvo);  //ȸ�ǽ� ���̺� insert
		
		if(room_result) {
			
			/* ���� �ֱ� */
			File file1 = new File(root_path + attach_path + rvo.getRsfile1());
			rvo.getFile1().transferTo(file1);
			
			if(rvo.getFile2().getSize()!=0) {
				File file2 = new File(root_path + attach_path + rvo.getRsfile2());
				rvo.getFile2().transferTo(file2);
			}
			
			if(rvo.getFile3().getSize()!=0) {
				File file3 = new File(root_path + attach_path + rvo.getRsfile3());
				rvo.getFile3().transferTo(file3);
			}	
			
			String rid = roomService.getInsertedId(); //���� �ֱٿ� ��ϵ� ȸ�ǽ��� rid ��������

			ovo.setRid(rid);
			boolean option_result = roomService.getInserOptiontResult(ovo);  //�ɼ� ���̺� insert
			
			svo.setRid(rid);
			boolean service_result = roomService.getInsertServiceResult(svo);
				
			
			if(option_result && service_result) { mv.setViewName("room/room_list"); }


		}	
		return mv;
	}

	
	
	//����
	
	/* ȸ�ǽ� �� */
    @RequestMapping(value="/room_content.do", method=RequestMethod.GET)
    public ModelAndView room_content(String rid) {
            ModelAndView mv = new ModelAndView();
            
            RoomVO vo = roomService.getRoomContent(rid);
            OptionVO ovo = roomService.getRoomOption(rid);
            mv.setViewName("room/room_content");
            mv.addObject("vo", vo);
            mv.addObject("ovo", ovo);
            
            return mv;
    }
    
    /* ȸ�ǽ� ���� */
    @RequestMapping(value="/room_reserve.do", method=RequestMethod.GET)
    public ModelAndView room_reserve(String rid) {
            ModelAndView mv = new ModelAndView();
            
            RoomVO vo = roomService.getRoomContent(rid);
            OptionVO ovo = roomService.getRoomOption(rid);
            ServiceVO svo = roomService.getService(rid);
            ArrayList<Object> olist = roomService.getAvailableTime(rid);
            ArrayList<ReservationVO> list = new ArrayList<ReservationVO>();
            for(Object obj : olist) {
                    ReservationVO rvo = (ReservationVO)obj;
                    list.add(rvo);
            }
            mv.setViewName("room/room_reserve");
            mv.addObject("vo", vo);
            mv.addObject("ovo", ovo);
            mv.addObject("svo", svo);
            mv.addObject("list",list);
            
            return mv;
    }
	
	
	
	
	
	
	
	
}
