package kr.co.hivesystem.user.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.hivesystem.user.service.UserService;
import kr.co.hivesystem.user.vo.UserVO;

@Controller
public class UserController {
	
	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService userService;
	
	// 01. 로그인 화면으로 이동
	@RequestMapping("/index.do")
	public String goLogin() {
		return "index"; // index.jsp = login 화면
	}
	
/*	//01-1. 장비등록(홈) 화면 이동
	@RequestMapping("/home.do")
	public String goHome() {
		return "home";
	}*/
	
	// 02. 일반 사용자 로그인 처리
	@RequestMapping("/userLogin.do")
	public ModelAndView userLogin(@ModelAttribute UserVO vo, HttpSession session){
		boolean result = userService.userLogin(vo, session);
		
		String type = userService.userType(vo);
				
		ModelAndView mav = new ModelAndView();
		
		if(result == true) { // 로그인 성공 했을 시
			if("EMP".equals(type)) { // 내부 사용자일 때 화면 분기처리
				mav.setViewName("redirect:home.do");
				mav.addObject("msg","success");
			} else {
				mav.setViewName("redirect:helpdesk.do");
				mav.addObject("msg","success");
			}
		} 
		else { // 로그인 실패 했을 시
			// 다시 로그인 화면으로 이동
			mav.setViewName("index");
			mav.addObject("msg","fail");
		}
		return mav;
	}
	
	// 03. 로그아웃 처리
	@RequestMapping("/userLogout.do")
	public ModelAndView userLogout(HttpSession session) {
		userService.userLogout(session);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("msg","logout");
		
		return mav;
	}
	
}
