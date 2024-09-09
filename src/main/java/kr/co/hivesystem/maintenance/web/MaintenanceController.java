package kr.co.hivesystem.maintenance.web;

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

import kr.co.hivesystem.maintenance.service.MaintenanceService;
import kr.co.hivesystem.maintenance.vo.MaintenanceVO;
import kr.co.hivesystem.maintenance.vo.listVO;
import kr.co.hivesystem.project.vo.ProjectVO;

@Controller
public class MaintenanceController {
	
	@Inject
	MaintenanceService maintenanceService;
	
	// 01. 유지보수 목록
	
	@RequestMapping("/maintenance.do")
	public ModelAndView listMaintenance(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword) throws Exception {
		List<MaintenanceVO> list = maintenanceService.listMaintenance(searchOption,keyword);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/maintenance/maintenance");
		
		return mav;
	}
	
	// 모달창에서 월 선택 후 점검 리스트로 이동 (월)
	@RequestMapping("/go_viewList.do")
	public ModelAndView monthList(@RequestParam String DATE, @RequestParam int BNO) throws Exception {
		List<listVO> list = maintenanceService.monthList(DATE,BNO);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("DATE", DATE);
		map.put("BNO", BNO);
		
		mav.addObject("map", map);
		mav.setViewName("/maintenance/view_list");
		
		return mav;
	}
	
	
	// Call 계약일 때, 점검 리스트로 이동
	@RequestMapping("/go_viewList_C.do")
	public ModelAndView callList(@RequestParam int BNO) throws Exception {
		List<listVO> list = maintenanceService.callList(BNO);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("BNO", BNO);
		
		mav.addObject("map", map);
		mav.setViewName("/maintenance/view_list_c");
		
		return mav;
	}
	
/*	@RequestMapping(value="/go_viewList.do", method = RequestMethod.GET)
	public String goviewList() {
		System.out.println("goviewList");
		return "/maintenance/view_list";
	}*/
	
	// 팝업 검색
	@RequestMapping("/find_project.do")
	public ModelAndView findProject(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword) throws Exception {
		List<ProjectVO> list = maintenanceService.findProject(searchOption,keyword);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		mav.addObject("map", map);
		mav.setViewName("/maintenance/maintenancePop");
		
		return mav;
	}
	
	// 02. 유지보수 등록으로 이동
	@RequestMapping(value="/go_insert_maintenance.do", method = RequestMethod.GET)
	public String goInsertMaintenance() {
		return "maintenance/maintenance_insert";
	}
	
	// 유지보수 등록 기능
	@RequestMapping(value="/insert_maintenance.do", method = RequestMethod.POST)
	public String insertMaintenance(@ModelAttribute MaintenanceVO vo, HttpSession session) throws Exception {
		
		String writer = (String)session.getAttribute("MEMBER_ID");
		
		vo.setMEMBER_ID(writer);
		maintenanceService.insertMaintenance(vo);
		
		return "redirect:maintenance.do";
	}
	
	// 서비스 내역 등록 
	@RequestMapping(value="/service_insert.do", method = RequestMethod.POST)
	public String insertService(@ModelAttribute listVO vo, HttpSession session) throws Exception {
	
		maintenanceService.insertService(vo);
		
		maintenanceService.updateMaintenanceId(vo);
		return "redirect:maintenance.do";
	}
	
	// 점검 내역서 등록
	@RequestMapping(value="/result_insert.do", method = RequestMethod.POST)
	public String insertResult(@ModelAttribute listVO vo, HttpSession session) throws Exception {
	
		maintenanceService.insertResult(vo);
		maintenanceService.updateMaintenanceId(vo);
		
		return "redirect:maintenance.do";
	}
	
	
	// 점검 리스트 상세
	@RequestMapping(value="/viewList.do", method = RequestMethod.GET)
	public ModelAndView viewList(@RequestParam int INO, HttpSession session) throws Exception {
		
		String listType = maintenanceService.find_listType(INO);
		String contractType = maintenanceService.find_contractType(INO);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance/viewList");
		mav.addObject("dto", maintenanceService.viewList(INO));
		mav.addObject("INSPECTION_ID",INO);
		mav.addObject("listType",listType);
		mav.addObject("contractType",contractType);
		
		return mav;
	}
	
	@RequestMapping(value="/updateList.do", method = RequestMethod.GET)
	public ModelAndView updateList(@RequestParam int INO, HttpSession session) throws Exception {
		
		String listType = maintenanceService.find_listType(INO);
		String contractType = maintenanceService.find_contractType(INO);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance/updateList");
		mav.addObject("dto", maintenanceService.viewList(INO));
		mav.addObject("INSPECTION_ID",INO);
		mav.addObject("listType",listType);
		mav.addObject("contractType",contractType);
		
		return mav;
	}
	
	// 연간 계약 - 상세(등록)
	@RequestMapping(value="/year_viewI.do", method = RequestMethod.GET)
	public ModelAndView yearView_I(@RequestParam int BNO, @RequestParam String DATE, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance/yearView_I");
		mav.addObject("dto", maintenanceService.viewMaintenance(BNO));
		mav.addObject("date",DATE);
		
		return mav;
	}
	
	
	// 연간 계약 - 상세 (수정)
	@RequestMapping(value="/year_viewU.do", method = RequestMethod.GET)
	public ModelAndView yearView_U(@RequestParam int BNO, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance/yearView_U");
		mav.addObject("dto", maintenanceService.viewMaintenance(BNO));
		
		return mav;
	}
	
	// 콜 - 상세(등록)
	@RequestMapping(value="/call_viewI.do", method = RequestMethod.GET)
	public ModelAndView callView_I(@RequestParam int BNO, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance/callView_I");
		mav.addObject("dto", maintenanceService.viewMaintenance(BNO));
		
		return mav;
	}
	
	// 콜 - 상세(수정)
	@RequestMapping(value="/call_viewU.do", method = RequestMethod.GET)
	public ModelAndView callView_U(@RequestParam int BNO, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance/callView_U");
		mav.addObject("dto", maintenanceService.viewMaintenance(BNO));
		
		return mav;
	}
	
	
	@RequestMapping(value="/serviceLoad.do", method = RequestMethod.GET)
	public ModelAndView loadService(@RequestParam int INO) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("maintenance/serviceView");
		mav.addObject("load", maintenanceService.loadService(INO));
		
		return mav;
	}
	
	@RequestMapping(value="/resultLoad.do", method = RequestMethod.GET)
	public ModelAndView loadResult(@RequestParam int INO) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("maintenance/resultView");
		mav.addObject("load", maintenanceService.loadResult(INO));
		
		return mav;
	}
	
	@RequestMapping(value="/serviceUpdateLoad.do", method = RequestMethod.GET)
	public ModelAndView serviceUpdateLoad(@RequestParam int INO) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("maintenance/serviceUpdate");
		mav.addObject("load", maintenanceService.loadService(INO));
		
		return mav;
	}
	
	@RequestMapping(value="/resultUpdateLoad.do", method = RequestMethod.GET)
	public ModelAndView resultUpdateLoad(@RequestParam int INO) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("maintenance/resultUpdate");
		mav.addObject("load", maintenanceService.loadResult(INO));
		
		return mav;
	}
	
	// 04. 유지보수 수정 페이지 이동
	@RequestMapping(value="/go_update_maintenance.do", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam int BNO, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("maintenance_update");
		mav.addObject("dto", maintenanceService.viewMaintenance(BNO));
		
		return mav;
	}
	
	// 04-1. 유지보수 수정 
	@RequestMapping(value="/update_maintenance.do", method = RequestMethod.POST)
	public String updateMaintenance(@ModelAttribute MaintenanceVO vo) throws Exception {
		maintenanceService.updateMaintenance(vo);
		return "redirect:maintenance.do";
	}
	
	@RequestMapping(value="/service_update.do", method = RequestMethod.POST)
	public String service_update(@ModelAttribute listVO vo) throws Exception {
		maintenanceService.service_update(vo);
		return "redirect:maintenance.do";
	}
	
	@RequestMapping(value="/result_update.do", method = RequestMethod.POST)
	public String result_update(@ModelAttribute listVO vo) throws Exception {
		maintenanceService.result_update(vo);
		return "redirect:maintenance.do";
	}
	
	// 05. 유지보수 삭제
	@RequestMapping("/deleteList.do")
	public String delelteMaintenance(@RequestParam int INO) throws Exception {
		maintenanceService.deleteMaintenance(INO);
		return "redirect:maintenance.do";
	}

	@RequestMapping(value="/yearService.do" , method = RequestMethod.GET)
	public String yearService() {
		return "maintenance/yearService";
	}
	
	@RequestMapping(value="/yearResult.do" , method = RequestMethod.GET)
	public String yearResult() {
		return "maintenance/yearResult";
	}
	
	@RequestMapping(value="/callService.do" , method = RequestMethod.GET)
	public String callService() {
		return "maintenance/callService";
	}
	
	@RequestMapping(value="/callResult.do" , method = RequestMethod.GET)
	public String callResult() {
		return "maintenance/callResult";
	}
	
	
	@RequestMapping(value="/viewService.do" , method = RequestMethod.GET)
	public String viewService() {
		return "maintenance/viewService";
	}
	
	@RequestMapping(value="/viewResult.do" , method = RequestMethod.GET)
	public String viewResult() {
		return "maintenance/viewResult";
	}

}
