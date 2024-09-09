package kr.co.hivesystem.device.mapper;

import java.util.List;

import kr.co.hivesystem.device.vo.DeviceVO;

public interface DeviceMapper {
	
	List<DeviceVO> listDevice();
	
	void insertDevice(DeviceVO vo);
	
	DeviceVO viewDevice(int BNO);
	
	void updateDevice(DeviceVO vo);
	
	void deleteDevice(int BNO);
}
