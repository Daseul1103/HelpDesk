package kr.co.hivesystem.calendar.dao;

import java.util.List;

import kr.co.hivesystem.calendar.vo.CalendarVO;

public interface CalendarDAO {
	
	// 달력 조회
	public List<CalendarVO> readDate(String nowUser) throws Exception;
	
	// 캘린더 일정 등록
	public void insertDate(CalendarVO vo) throws Exception;
	
	// 캘린더 상세 정보
	public CalendarVO readEvent(int ID) throws Exception;
	
	// 캘린더 수정
	public void updateDate(CalendarVO vo) throws Exception;
	
	// 캘린더 삭제
	public void deleteDate(int ID) throws Exception;
}
