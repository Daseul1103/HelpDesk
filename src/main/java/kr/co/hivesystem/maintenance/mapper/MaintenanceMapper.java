package kr.co.hivesystem.maintenance.mapper;

import java.util.List;

import kr.co.hivesystem.maintenance.vo.MaintenanceVO;
import kr.co.hivesystem.maintenance.vo.listVO;
import kr.co.hivesystem.project.vo.ProjectVO;

public interface MaintenanceMapper {
	List<MaintenanceVO> listMaintenance();
	
	public ProjectVO viewPopup();
	
	List<ProjectVO> findProject();
	
	List<listVO> monthList();
	
	List<listVO> callList();
	
	void insertService(listVO vo);
	
	void insertResult(listVO vo);
	
	void insertMaintenance(MaintenanceVO vo);
	
	MaintenanceVO viewMaintenance(int BNO);
	
	MaintenanceVO viewList(int INO);
	
	listVO loadService(int INO);
	
	listVO loadResult(int INO);
	
	void updateMaintenance(MaintenanceVO vo);
	
	void service_update(listVO vo);
	
	void result_update(listVO vo);
	
	void updateMaintenanceId(listVO vo);
	
	void deleteMaintenance(int INO);
	
	String find_listType(int INO);
	
	String find_contractType(int INO);
}
