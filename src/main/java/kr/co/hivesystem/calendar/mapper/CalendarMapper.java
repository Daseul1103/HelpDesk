package kr.co.hivesystem.calendar.mapper;

import java.util.List;

import kr.co.hivesystem.calendar.vo.CalendarVO;

public interface CalendarMapper {
	public List<CalendarVO> readDate(String nowUser);
	
	public void insertDate(CalendarVO vo);
	
	public CalendarVO readEvent(int ID);
	
	public void updateDate(CalendarVO vo);
	
	public void deleteDate(int ID);
}
