package kr.co.hivesystem.calendar.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.calendar.dao.CalendarDAO;
import kr.co.hivesystem.calendar.service.CalendarService;
import kr.co.hivesystem.calendar.vo.CalendarVO;

@Service
public class CalendarServiceImpl implements CalendarService{
	@Inject
	CalendarDAO calendarDAO;
	
	@Override
	public List<CalendarVO> readDate(String nowUser) throws Exception {
		return calendarDAO.readDate(nowUser);
	}
	
	@Override
	public void insertDate(CalendarVO vo) throws Exception {
		calendarDAO.insertDate(vo);
	}
	
	@Override
	public CalendarVO readEvent(int ID) throws Exception {
		return calendarDAO.readEvent(ID);
	}
	
	@Override
	public void updateDate(CalendarVO vo) throws Exception {
		calendarDAO.updateDate(vo);
	}
	
	@Override
	public void deleteDate(int ID) throws Exception {
		calendarDAO.deleteDate(ID);
	}
}
