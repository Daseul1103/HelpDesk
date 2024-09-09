package kr.co.hivesystem.maintenance.service;

import java.util.List;

import kr.co.hivesystem.maintenance.vo.MaintenanceVO;
import kr.co.hivesystem.maintenance.vo.listVO;
import kr.co.hivesystem.project.vo.ProjectVO;

public interface MaintenanceService {
	
	// 01. 유지보수 목록
	public List<MaintenanceVO> listMaintenance(String searchOption, String keyword) throws Exception;
	
	public List<ProjectVO> findProject(String searchOption, String keyword) throws Exception;
	
	public List<listVO> monthList(String DATE,int BNO) throws Exception;
	
	public List<listVO> callList(int BNO) throws Exception;

	// 02. 유지보수 등록
	public void yearInsert(listVO vo) throws Exception;
	
	public void insertMaintenance(MaintenanceVO vo) throws Exception;
	
	public void insertService(listVO vo) throws Exception;
	
	public void insertResult(listVO vo) throws Exception;
	// 03. 유지보수 상세
	public MaintenanceVO viewMaintenance(int BNO) throws Exception;
	
	public MaintenanceVO viewList(int INO) throws Exception;
	
	public listVO loadService(int INO) throws Exception;
	
	public listVO loadResult(int INO) throws Exception;
	// 04. 유지보수 수정
	public void updateMaintenance(MaintenanceVO vo) throws Exception;
	
	public void service_update(listVO vo) throws Exception;
	
	public void result_update(listVO vo) throws Exception;
	
	public void updateMaintenanceId(listVO vo) throws Exception;
	// 05. 유지보수 삭제
	public void deleteMaintenance(int INO) throws Exception;
	
	public String yChecking(int BNO) throws Exception;
	
	
	
	
	
	
	//CRUD 이외
	public String find_listType(int INO) throws Exception;
	
	public String find_contractType(int INO) throws Exception;
	
}
