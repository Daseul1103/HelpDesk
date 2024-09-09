package kr.co.hivesystem.helpdesk.web;

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

import kr.co.hivesystem.helpdesk.service.HelpDeskService;
import kr.co.hivesystem.helpdesk.vo.HelpDeskVO;

@Controller
public class HelpDeskController {
	
	@Inject
	HelpDeskService helpDeskService;
	
	// 01. 헬프데스크 (일반 사용자)목록
	@RequestMapping("/helpdesk.do")
	public ModelAndView listHelpDesk(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword) throws Exception {
		List<HelpDeskVO> list = helpDeskService.listHelpDesk(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/helpdesk/helpdesk");
		
		return mav;
	}
	
	
	// 01-2. 헬프 데스크(내부 사용자) 목록
	@RequestMapping("/helpDeskEmp.do")
	public ModelAndView listHelpDeskEmp(@RequestParam(defaultValue="all")String searchOption, 
			@RequestParam(defaultValue="")String keyword) throws Exception {
		List<HelpDeskVO> list = helpDeskService.listHelpDesk(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/helpdesk/helpdeskEmp");
		
		return mav;
	}
	
	
	// 01-3. 헬프 데스크에서 내 문의 보기 (일반 사용자 전용) => 미완성
	@RequestMapping("/myQuestion.do")
	public ModelAndView mylist(@RequestParam(defaultValue="all")String searchOption, 
			@RequestParam(defaultValue="")String keyword , HttpSession session) throws Exception {
		
		String nowUser = (String)session.getAttribute("MEMBER_ID");
		
		List<HelpDeskVO> list = helpDeskService.myList(searchOption, keyword , nowUser);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/helpdesk/myQuestion");
		
		return mav;
	}
	
	@RequestMapping("/myAnswer.do")
	public ModelAndView myAnswer(@RequestParam(defaultValue="all")String searchOption, 
			@RequestParam(defaultValue="")String keyword , HttpSession session) throws Exception {
		
		String nowUser = (String)session.getAttribute("MEMBER_ID");
		
		List<HelpDeskVO> list = helpDeskService.myAnswer(searchOption, keyword , nowUser);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/helpdesk/myAnswer");
		
		return mav;
	}
	
	
	
	// 02. 헬프데스크 등록으로 이동
	@RequestMapping(value="/go_insert_helpDesk.do" , method = RequestMethod.GET)
	public String go_insertHelpDesk(){
		return "/helpdesk/normal_insert";
	}
		
	// 02-1. 헬프데스크 등록
	@RequestMapping(value="/insert_helpdesk.do", method = RequestMethod.POST)
	public String insertHelpDesk(@ModelAttribute HelpDeskVO vo, HttpSession session) throws Exception {
		
		String writer = (String)session.getAttribute("MEMBER_ID");
		
		vo.setMEMBER_ID(writer);
		helpDeskService.insertHelpDesk(vo);
		
		return "redirect:helpdesk.do";
	}
	
	// 03. 헬프데스크 상세
	@RequestMapping(value="/view_helpdesk.do", method = RequestMethod.GET)
	public ModelAndView viewHelpDesk(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/helpdesk/normal_view");
		mav.addObject("dto", helpDeskService.viewHelpDesk(BNO));
	
		return mav;
	}
	
	// 03-1. 내부사용자 전용 헬프데스크 상세
	@RequestMapping(value="/view_helpdeskEmp.do", method = RequestMethod.GET)
	public ModelAndView viewEmp(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/helpdesk/employee_view");
		mav.addObject("dto", helpDeskService.viewEmp(BNO));
		
		return mav;
	}
	
	// 04. 헬프데스크 수정
	@RequestMapping(value="/update_helpdesk.do", method = RequestMethod.POST )
	public String updateHelpDesk(@ModelAttribute HelpDeskVO vo) throws Exception {
		helpDeskService.updateHelpDesk(vo);
		return "redirect:helpdesk.do";
	}
	
	// 04-1. 헬프데스크 수정으로 이동
	@RequestMapping(value="/go_update_helpdesk.do", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/helpdesk/normal_update");
		mav.addObject("dto", helpDeskService.viewHelpDesk(BNO));
		
		return mav;
	}
	
	
	// 내부사용자 수정으로 이동
	@RequestMapping(value="/go_update_helpDeskEmp.do", method = RequestMethod.GET)
	public ModelAndView goUpdateEmp(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/helpdesk/employee_update");
		mav.addObject("dto", helpDeskService.viewEmp(BNO));
		
		return mav;
	}
	
	// 내부사용자 수정 기능
	@RequestMapping(value="/update_helpdeskEmp.do", method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute HelpDeskVO vo) throws Exception {
		helpDeskService.updateEmp(vo);
		return "redirect:helpDeskEmp.do";
	}
	
	@RequestMapping(value="/insert_helpdeskEmp.do", method = RequestMethod.POST )
	public String insertEmp(@ModelAttribute HelpDeskVO vo) throws Exception {
		helpDeskService.insertEmp(vo);
		return "redirect:helpDeskEmp.do";
	}
	
	@RequestMapping(value="/go_insert_helpDeskEmp.do", method = RequestMethod.GET)
	public ModelAndView goInsertEmp(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/helpdesk/employee_insert");
		mav.addObject("dto", helpDeskService.viewEmp(BNO));
		
		return mav;
	}
	
	// 답변 삭제
	@RequestMapping(value="/delete_helpdeskEmp.do")
	public String deleteEmp(@RequestParam int BNO) throws Exception {
		helpDeskService.deleteEmp(BNO);
		return "redirect:helpDeskEmp.do";
	}
	
	// 05. 헬프 데스크 삭제
	@RequestMapping("/delete_helpdesk.do")
	public String deleteHelpDesk(@RequestParam int BNO) throws Exception {
		helpDeskService.deleteHelpDesk(BNO);
		return "redirect:helpdesk.do";
	}
}
