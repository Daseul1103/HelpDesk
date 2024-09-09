package kr.co.hivesystem.device.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.device.vo.DeviceVO;

@Repository // 현재 클래스를 dao bean으로 등록
public class DeviceDAOImpl implements DeviceDAO{
	
	@Inject
	SqlSession sqlSession;
	
	// 01. 장비 목록
	@Override
	public List<DeviceVO> listDevice(String searchOption, String keyword) throws Exception{
		
		// 검색 옵션, 검색어 map에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.device.mapper.DeviceMapper.listDevice", map);
	}
	
	
	// 02. 장비 등록
	@Override 
	public void insertDevice(DeviceVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.device.mapper.DeviceMapper.insertDevice", vo);
	}
	
	// 03. 장비 상세
	@Override
	public DeviceVO viewDevice(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.device.mapper.DeviceMapper.viewDevice", BNO);
	}
	
	// 04. 장비 수정
	@Override
	public void updateDevice(DeviceVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.device.mapper.DeviceMapper.updateDevice", vo);
	}
	
	
	// 05. 장비 삭제
	@Override
	public void deleteDevice(int BNO) throws Exception {
		sqlSession.delete("kr.co.hivesystem.device.mapper.DeviceMapper.deleteDevice",BNO);
	}
	
}
