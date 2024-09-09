package kr.co.hivesystem.device.service;

import java.util.List;

import kr.co.hivesystem.device.vo.DeviceVO;

public interface DeviceService {
	
	// 01. 장비 목록
	public List<DeviceVO> listDevice(String searchOption, String keyword) throws Exception;
	
	// 02. 장비 등록
	public void insertDevice(DeviceVO vo) throws Exception;
	
	// 03. 장비 상세
	public DeviceVO viewDevice(int BNO) throws Exception;
	
	// 04. 장비 수정
	public void updateDevice(DeviceVO vo) throws Exception;
	
	// 05. 장비 삭제
	public void deleteDevice(int BNO) throws Exception;
}
