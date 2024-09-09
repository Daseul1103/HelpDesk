package kr.co.hivesystem.project.web;

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

import kr.co.hivesystem.project.service.ProjectService;
import kr.co.hivesystem.project.vo.ProjectVO;

@Controller
public class ProjectController {
	// ProjectService 객체를 스프링에서 생성하여 주입시킨다.
	@Inject
	ProjectService projectService;
	
	// 01. 프로젝트 목록 
	@RequestMapping("/project.do")
	public ModelAndView listProject(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword) throws Exception {
		List<ProjectVO> list = projectService.listProject(searchOption, keyword);
		
		ModelAndView mav = new ModelAndView();
		
		// 데이터를 Map에 저장
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/project/project");
		
		return mav;
	}
	
	// 02. 프로젝트 등록 - 등록화면으로 이동
	@RequestMapping(value="/go_insert_project.do", method = RequestMethod.GET)
	public String goInsertProject() {
		return "/project/project_insert";
	}
	
	// 02-1. 프로젝트 등록 - 등록 기능
	@RequestMapping(value="/insert_project.do", method = RequestMethod.POST)
	public String insertProject(@ModelAttribute ProjectVO vo, HttpSession session) throws Exception {
		
		String writer = (String)session.getAttribute("MEMBER_ID");
		
		vo.setMEMBER_ID(writer);
		projectService.insertProject(vo);
		
		return "redirect:project.do";
	}
	
	// 03. 프로젝트 상세 기능
	@RequestMapping(value="/view_project.do" , method = RequestMethod.GET)
	public ModelAndView viewProject(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/project/project_view");
		mav.addObject("dto", projectService.viewProject(BNO));
		
		return mav;
	}
	
	// 03-1. 팝업 목록 
	@RequestMapping(value = "/view_popup.do", method = RequestMethod.GET)
	public ModelAndView viewPopup(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/project/project_insert");
		mav.addObject("dto", projectService.viewPopup(BNO));
		
		return mav;
	}

	// 04. 프로젝트 수정 기능
	@RequestMapping(value="/update_project.do", method = RequestMethod.POST)
	public String updateProject(@ModelAttribute ProjectVO vo) throws Exception {
		projectService.updateProject(vo);
		return "redirect:project.do";
	}
	
	// 04-1. 프로젝트 수정 페이지로 이동
	@RequestMapping(value="/go_update_project.do", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/project/project_update");
		mav.addObject("dto", projectService.viewProject(BNO));
		
		return mav;
	}
	
	// 05. 장비 삭제 
	@RequestMapping("delete_project.do")
	public String deleteProject(@RequestParam int BNO) throws Exception {
		projectService.deleteProject(BNO);
		return "redirect:project.do";
	}
}
