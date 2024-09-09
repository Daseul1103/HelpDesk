package kr.co.hivesystem.maintenance.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.maintenance.dao.MaintenanceDAO;
import kr.co.hivesystem.maintenance.service.MaintenanceService;
import kr.co.hivesystem.maintenance.vo.MaintenanceVO;
import kr.co.hivesystem.maintenance.vo.listVO;
import kr.co.hivesystem.project.vo.ProjectVO;

@Service
public class MaintenanceServiceImpl implements MaintenanceService{
	
	@Inject
	MaintenanceDAO maintenanceDAO;
	
	// 01. 유지보수 목록
	@Override
	public List<MaintenanceVO> listMaintenance(String searchOption, String keyword) throws Exception {
		return maintenanceDAO.listMaintenance(searchOption, keyword);
	}
	
	@Override
	public List<ProjectVO> findProject(String searchOption, String keyword) throws Exception {
		return maintenanceDAO.findProject(searchOption, keyword);
	}
	
	@Override
	public List<listVO> monthList(String DATE,int BNO) throws Exception {
		return maintenanceDAO.monthList(DATE,BNO);
	}
	
	@Override
	public List<listVO> callList(int BNO) throws Exception {
		return maintenanceDAO.callList(BNO);
	}
	
	// 02. 유지보수 등록
	@Override
	public void yearInsert(listVO vo) throws Exception {
		maintenanceDAO.yearInsert(vo);
	}
	
	@Override
	public void insertMaintenance(MaintenanceVO vo) throws Exception {
		maintenanceDAO.insertMaintenance(vo);
	}
	
	@Override
	public void insertService(listVO vo) throws Exception {
		maintenanceDAO.insertService(vo);
	}
	
	@Override
	public void insertResult(listVO vo) throws Exception {
		maintenanceDAO.insertResult(vo);
	}
	
	// 03. 유지보수 상세
	@Override
	public MaintenanceVO viewMaintenance(int BNO) throws Exception {
		return maintenanceDAO.viewMaintenance(BNO);
	}
	
	@Override
	public MaintenanceVO viewList(int INO) throws Exception {
		return maintenanceDAO.viewList(INO);
	}
	
	@Override
	public listVO loadService(int INO) throws Exception {
		return maintenanceDAO.loadService(INO);
	}
	
	@Override
	public listVO loadResult(int INO) throws Exception {
		return maintenanceDAO.loadResult(INO);
	}
	
	// 04. 유지보수 수정
	@Override
	public void updateMaintenance(MaintenanceVO vo) throws Exception {
		maintenanceDAO.updateMaintenance(vo);
	}
	
	@Override
	public void result_update(listVO vo) throws Exception {
		maintenanceDAO.result_update(vo);
	}
	
	@Override
	public void service_update(listVO vo) throws Exception {
		maintenanceDAO.service_update(vo);
	}
	
	@Override
	public void updateMaintenanceId(listVO vo) throws Exception {
		maintenanceDAO.updateMaintenanceId(vo);
	}
	
	// 05. 유지보수 삭제
	@Override
	public void deleteMaintenance(int INO) throws Exception {
		maintenanceDAO.deleteMaintenance(INO);
	}
	
	@Override
	public String yChecking(int BNO) throws Exception {
		return maintenanceDAO.yChecking(BNO);
	}
	
	
	
	
	@Override
	public String find_listType(int INO) throws Exception {
		return maintenanceDAO.find_listType(INO);
	}
	
	@Override
	public String find_contractType(int INO) throws Exception {
		return maintenanceDAO.find_contractType(INO);
	}
}
