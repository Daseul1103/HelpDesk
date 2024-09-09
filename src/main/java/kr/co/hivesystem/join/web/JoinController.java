package kr.co.hivesystem.join.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hivesystem.join.service.JoinService;
import kr.co.hivesystem.join.vo.JoinVO;

@Controller
public class JoinController {
	
	//JoinService 객체를 스프링에서 생성하여 주입시킨다.
	@Inject
	JoinService joinService;
	
	// 1. 회원 등록 페이지로 이동
	@RequestMapping("/go_join.do")
	public String goJoin() {
		return "go_join";
	}
	
	// 일반사용자 회원 가입 페이지로 이동
	@RequestMapping("/go_normal.do")
	public String goNormal() {
		return "go_normal";
	}
	
	@RequestMapping("/go_employee.do")
	public String goEmployee() {
		return "go_employee";
	}
	
	// 2. 회원 등록(가입) 기능 구현 => 등록 성공 시 home.jsp로 즉시 이동
	@RequestMapping("/join.do")
	public String joinMember(@ModelAttribute JoinVO vo) {
		joinService.joinMember(vo);
		
		return "redirect:home.do";
	}
	
	
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public String checkId(String id) {
		String checker = joinService.checkId(id);
		
		if(checker != null) {
			return "y";
		} else {
			return "n";
		}
	}
	
}