package kr.co.hivesystem.calendar.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.calendar.vo.CalendarVO;

@Repository
public class CalendarDAOImpl implements CalendarDAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<CalendarVO> readDate(String nowUser) throws Exception {
		return sqlSession.selectList("kr.co.hivesystem.calendar.mapper.CalendarMapper.readDate",nowUser);
	}
	
	@Override
	public void insertDate(CalendarVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.calendar.mapper.CalendarMapper.insertDate",vo);
	}
	
	@Override
	public CalendarVO readEvent(int ID) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.calendar.mapper.CalendarMapper.readEvent",ID);
	}
	
	@Override
	public void updateDate(CalendarVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.calendar.mapper.CalendarMapper.updateDate",vo);
	}
	
	@Override
	public void deleteDate(int ID) throws Exception {
		sqlSession.delete("kr.co.hivesystem.calendar.mapper.CalendarMapper.deleteDate",ID);
	}
}
