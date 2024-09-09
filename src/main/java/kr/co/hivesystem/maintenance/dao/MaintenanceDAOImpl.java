package kr.co.hivesystem.maintenance.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.maintenance.vo.MaintenanceVO;
import kr.co.hivesystem.maintenance.vo.listVO;
import kr.co.hivesystem.project.vo.ProjectVO;

@Repository
public class MaintenanceDAOImpl implements MaintenanceDAO{
	
	@Inject
	SqlSession sqlSession;
	
	// 01. 유지보수 목록
	public List<MaintenanceVO> listMaintenance(String searchOption, String keyword) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.listMaintenance", map);
	}
	
	@Override
	public List<ProjectVO> findProject(String searchOption, String keyword) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.findProject", map);
	}
	
	@Override
	public List<listVO> monthList(String DATE,int BNO) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("DATE", DATE);
		map.put("BNO", BNO);
		
		return sqlSession.selectList("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.monthList", map);
	}
	
	@Override
	public List<listVO> callList(int BNO) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("BNO", BNO);
		
		return sqlSession.selectList("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.callList", map);
	}
	
	// 02. 유지보수 등록
	public void yearInsert(listVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.yearInsert", vo);
	}
	
	public void insertMaintenance(MaintenanceVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.insertMaintenance", vo);
	}
	
	public void insertService(listVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.insertService", vo);
	}
	
	public void insertResult(listVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.insertResult", vo);
	}
	
	// 03. 유지보수 상세
	public MaintenanceVO viewMaintenance(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.viewMaintenance", BNO);
	}
	
	public MaintenanceVO viewList(int INO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.viewList", INO);
	}
	
	public listVO loadService(int INO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.loadService", INO);
	}
	
	public listVO loadResult(int INO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.loadResult", INO);
	}
	
	// 04. 유지보수 수정
	public void updateMaintenance(MaintenanceVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.updateMaintenance", vo);
	}
	
	public void result_update(listVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.result_update", vo);
	}
	
	public void service_update(listVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.service_update", vo);
	}
	
	public void updateMaintenanceId(listVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.updateMaintenanceId", vo);
	}
	// 05. 유지보수 삭제
	public void deleteMaintenance(int INO) throws Exception {
		sqlSession.delete("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.deleteMaintenance", INO);
	}
	
	
	public String yChecking(int BNO) throws Exception {
		String yChecker = sqlSession.selectOne("kr.co.hivesystem.mapper.MaintenanceMapper.yChecking", BNO);
		
		return (yChecker == "Year") ? "Y" : "C";
	}
	
	
	
	public String find_listType(int INO) throws Exception {
		String listType = sqlSession.selectOne("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.find_listType", INO);
		
		return listType;
	}
	
	public String find_contractType(int INO) throws Exception {
		String contractType = sqlSession.selectOne("kr.co.hivesystem.maintenance.mapper.MaintenanceMapper.find_contractType", INO);
		
		return contractType;
	}
}
