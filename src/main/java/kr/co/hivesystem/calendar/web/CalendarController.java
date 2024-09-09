package kr.co.hivesystem.calendar.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.hivesystem.calendar.service.CalendarService;
import kr.co.hivesystem.calendar.vo.CalendarVO;

@Controller
public class CalendarController {
	
	@Inject
	CalendarService calendarService;
	
	// 캘린더로 이동 + 데이터 조회
	@RequestMapping("/calendar.do")
	public ModelAndView readDate(HttpSession session) throws Exception {
		String nowUser = (String)session.getAttribute("MEMBER_ID");
			
		ModelAndView mav = new ModelAndView();
	      
		List<CalendarVO> list = calendarService.readDate(nowUser);
	      
		mav.addObject("list", list);
		mav.setViewName("/calendar/calendar");
	      
		return mav;
	}
	
	// 캘린더 일정 등록
	@RequestMapping(value = "/insertDate.do" , method = RequestMethod.POST)
	public String insertDate(@ModelAttribute CalendarVO vo,HttpSession session) throws Exception {
		calendarService.insertDate(vo);
		
		return "redirect:/calendar.do";
	}
	
		
	// 선택한 캘린더 정보 조회(상세)
	@RequestMapping(value = "/readEvent.do" , method = RequestMethod.GET)
	public ModelAndView readEvent(@RequestParam int ID, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/calendar/calendarModal");
		mav.addObject("dto", calendarService.readEvent(ID));
		
		return mav;
	}
	
	// 캘린더 정보 수정
	@RequestMapping(value = "/updateDate.do", method = RequestMethod.POST)
	public String updateDate(@ModelAttribute CalendarVO vo) throws Exception {
		calendarService.updateDate(vo);
		
		return "redirect:/calendar.do";
	}
	
	
	// 캘린더 정보 삭제
	@RequestMapping("/deleteDate.do")
	public String deleteDate(@RequestParam int ID) throws Exception {
		calendarService.deleteDate(ID);
		
		return "redirect:/calendar.do";
	}
	
}
