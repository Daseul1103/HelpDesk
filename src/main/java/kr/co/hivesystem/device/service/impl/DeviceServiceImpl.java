package kr.co.hivesystem.device.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.device.dao.DeviceDAO;
import kr.co.hivesystem.device.service.DeviceService;
import kr.co.hivesystem.device.vo.DeviceVO;

@Service
public class DeviceServiceImpl implements DeviceService{
	
	@Inject
	DeviceDAO deviceDAO;
	
	// 01. 장비 목록
	@Override
	public List<DeviceVO> listDevice(String searchOption, String keyword) throws Exception {
		return deviceDAO.listDevice(searchOption, keyword);
	}
	
	// 02. 장비 등록
	@Override
	public void insertDevice(DeviceVO vo) throws Exception {
		deviceDAO.insertDevice(vo);
	}
	
	// 03. 장비 상세
	@Override
	public DeviceVO viewDevice(int BNO) throws Exception {
		return deviceDAO.viewDevice(BNO);
	}
	
	// 04. 장비 수정
	@Override
	public void updateDevice(DeviceVO vo) throws Exception {
		deviceDAO.updateDevice(vo);
	}
	
	// 05. 장비 삭제
	@Override
	public void deleteDevice(int BNO) throws Exception {
		deviceDAO.deleteDevice(BNO);
	}
}
