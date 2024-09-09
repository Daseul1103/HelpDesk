package kr.co.hivesystem.helpdesk.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.helpdesk.vo.HelpDeskVO;

@Repository
public class HelpDeskDAOImpl implements HelpDeskDAO{
	
	@Inject
	SqlSession sqlSession;
	
	// 01. 헬프 데스크 목록
	@Override
	public List<HelpDeskVO> listHelpDesk(String searchOption, String keyword) throws Exception {
		
		Map<String, String> map = new HashMap<String, String> ();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.listHelpDesk", map);
	}
	
	
	@Override
	public List<HelpDeskVO> myList(String searchOption, String keyword, String nowUser) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("nowUser", nowUser);
		
		return sqlSession.selectList("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.myList", map);
		
	}

	@Override
	public List<HelpDeskVO> myAnswer(String searchOption, String keyword, String nowUser) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("nowUser", nowUser);
		
		return sqlSession.selectList("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.myAnswer", map);
	}
	
	// 02. 헬프 데스크 등록
	@Override
	public void insertHelpDesk(HelpDeskVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.insertHelpDesk", vo);
	}
	
	@Override
	public void insertEmp(HelpDeskVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.insertEmp", vo);
	}

	// 03. 헬프 데스크 상세
	@Override
	public HelpDeskVO viewHelpDesk(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.viewHelpDesk", BNO);
	}
	
	@Override
	public HelpDeskVO viewEmp(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.viewEmp", BNO);
	}
	
	// 04. 헬프 데스크 수정
	@Override
	public void updateHelpDesk(HelpDeskVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.updateHelpDesk", vo);
	}
	
	
	// 답변 삭제
	@Override
	public void deleteEmp(int BNO) throws Exception {
		sqlSession.update("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.deleteEmp", BNO);
	}
	
	// 내부사용자 수정
	@Override
	public void updateEmp(HelpDeskVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.updateEmp", vo);
	}
	
	// 05. 헬프 데스크 삭제
	@Override
	public void deleteHelpDesk(int BNO) throws Exception {
		sqlSession.delete("kr.co.hivesystem.helpdesk.mapper.HelpDeskMapper.deleteHelpDesk",BNO);
	}
}
