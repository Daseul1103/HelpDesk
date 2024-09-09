package kr.co.hivesystem.customer.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.hivesystem.customer.service.CustomerService;
import kr.co.hivesystem.customer.vo.CustomerVO;

@Controller
public class CustomerController {
	 
	@Inject
	CustomerService customerService;
	
	// 01. 고객사 목록
	@RequestMapping("/customer.do")
	public ModelAndView listCustomer(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="")String keyword) throws Exception {
		List<CustomerVO> list = customerService.listCustomer(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/customer/customer");
		
		return mav;
	}
	
	//01-1. 프로젝트 팝업창 이동 후 목록 데이터 불러오기& 검색 결과 반환하기
	@RequestMapping("/find_customer.do")
	public ModelAndView findCustomer(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="")String keyword, HttpServletResponse response) throws Exception {
		
		System.out.println(searchOption);
		List<CustomerVO> list = customerService.findCustomer(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/project/projectPop");

		return mav;
	}
	
	
	// 02. 고객사 등록 화면으로 이동
	@RequestMapping (value="/go_insert_customer.do" , method = RequestMethod.GET)
	public String goInsertCustomer() {
		return "/customer/customer_insert";
	}
	
	// 02-1. 고객사 등록
	@RequestMapping(value="/insert_customer.do", method = RequestMethod.POST)
	public String insertCustomer(@ModelAttribute CustomerVO vo, HttpSession session) throws Exception {
		
		String writer = (String)session.getAttribute("MEMBER_ID");
		
		vo.setMEMBER_ID(writer);
		customerService.insertCustomer(vo);
		
		return "redirect:customer.do";
	}
	
	// 03. 고객사 상세 조회
	@RequestMapping(value="/view_customer.do", method = RequestMethod.GET)
	public ModelAndView viewCustomer(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/customer/customer_view");
		mav.addObject("dto",customerService.viewCustomer(BNO));
		
		return mav;
	}
	
	// 04. 고객사 수정
	@RequestMapping(value="/update_customer.do", method =RequestMethod.POST)
	public String updateCustomer(@ModelAttribute CustomerVO vo) throws Exception {
		customerService.updateCustomer(vo);
		return "redirect:customer.do";
	}
	
	// 04-1. 고객사 수정 페이지 이동
	@RequestMapping(value="/go_update_customer.do", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/customer/customer_update");
		mav.addObject("dto", customerService.viewCustomer(BNO));
		
		return mav;
	}
	
	// 05. 고객사 삭제
	@RequestMapping("delete_customer.do")
	public String deleteCustomer(@RequestParam int BNO) throws Exception {
		customerService.deleteCustomer(BNO);
		return "redirect:customer.do";
	}
}
