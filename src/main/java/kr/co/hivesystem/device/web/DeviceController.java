package kr.co.hivesystem.device.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.hivesystem.device.service.DeviceService;
import kr.co.hivesystem.device.vo.DeviceVO;

@Controller
public class DeviceController {
	//DeviceService 객체를 스프링에서 생성하여 주입시킨다.
		@Inject
		DeviceService deviceService;
	
	// 01. 장비 목록
		@RequestMapping("/home.do")
		public ModelAndView listDevice(@RequestParam(defaultValue="all") String searchOption,
				@RequestParam(defaultValue="") String keyword) throws Exception {
			List<DeviceVO> list = deviceService.listDevice(searchOption, keyword);
			
			ModelAndView mav = new ModelAndView();
			
			// 데이터를 Map에 저장
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);  // 목록
			map.put("searchOption", searchOption); // 검색 조건(select)
			map.put("keyword", keyword); // 검색어(input)
			mav.addObject("map", map); // map에 저장된 데이터를 mav에 저장
			mav.setViewName("home"); // 뷰 설정(장비 목록)
			
			return mav;
			
		}
	// 02. 장비 등록 화면으로 이동
		@RequestMapping(value="/device_register.do" , method = RequestMethod.GET)
		public String goDeviceRegister() {
			return "device_register";
		}
				
	// 03. 장비 등록(로그인한 사용자만 등록 가능)
		@RequestMapping(value="/insert_device.do" , method = RequestMethod.POST)
		public String insertDevice(@ModelAttribute DeviceVO vo, HttpSession session) throws Exception{
			
			//Session에 저장된 MEMBER_ID를 writer(현재 로그인 중인 사용자이자, 등록하는 사람 ) 변수에 저장
			String writer = (String)session.getAttribute("MEMBER_ID");
			
			//VO에 witer 셋팅 => VO에는 MEMBER_ID로 들어갈 예정
			vo.setMEMBER_ID(writer);
			deviceService.insertDevice(vo);
			
			return "redirect:home.do"; //등록이 성공적으로 완료 되면 장비 목록 페이지로 이동
		}
	
	// 04. 장비 상세 조회
		@RequestMapping(value="/view_device.do", method = RequestMethod.GET)
		public ModelAndView viewDevice(@RequestParam int BNO, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("device_view");
			mav.addObject("dto",deviceService.viewDevice(BNO));
			
			return mav;
		}
	
	// 05. 장비 수정 
		@RequestMapping(value="/update_device.do", method = RequestMethod.POST)
		public String updateDevice(@ModelAttribute DeviceVO vo) throws Exception {
			deviceService.updateDevice(vo);
			return "redirect:home.do";
		}
		
	// 05-1. 장비 수정 페이지 이동
		@RequestMapping(value="/go_update_device.do", method = RequestMethod.GET)
		public ModelAndView goUpdate(@RequestParam int BNO, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("device_update");
			mav.addObject("dto",deviceService.viewDevice(BNO));
			
			return mav;
		}
	// 06. 장비 삭제
		@RequestMapping("/delete_device.do")
		public String deleteDevice(@RequestParam int BNO) throws Exception {
			deviceService.deleteDevice(BNO);
			return "redirect:home.do";
		}
}
