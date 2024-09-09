package kr.co.hivesystem.calendar.service;

import java.util.List;

import kr.co.hivesystem.calendar.vo.CalendarVO;

public interface CalendarService {

	// 달력 조회
	public List<CalendarVO> readDate(String nowUser) throws Exception;
	
	// 캘린더 일정 등록
	public void insertDate(CalendarVO vo) throws Exception;
	
	// 캘린더 상세 정보
	public CalendarVO readEvent(int ID) throws Exception;
	
	// 캘린더 정보 수정
	public void updateDate(CalendarVO vo) throws Exception;
	
	// 캘린더 정보 삭제
	public void deleteDate(int ID) throws Exception;
}
