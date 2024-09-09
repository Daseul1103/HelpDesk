package kr.co.hivesystem.helpdesk.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.helpdesk.dao.HelpDeskDAO;
import kr.co.hivesystem.helpdesk.service.HelpDeskService;
import kr.co.hivesystem.helpdesk.vo.HelpDeskVO;

@Service
public class HelpDeskServiceImpl implements HelpDeskService{
	
	@Inject
	HelpDeskDAO helpDeskDAO;
	
	// 01. 헬프데스크 목록
	@Override
	public List<HelpDeskVO> listHelpDesk(String searchOption, String keyword) throws Exception {
		return helpDeskDAO.listHelpDesk(searchOption, keyword);
	}
	
	@Override
	public List<HelpDeskVO> myList(String searchOption, String keyword , String nowUser) throws Exception {
		return helpDeskDAO.myList(searchOption, keyword, nowUser);
	}
	
	
	@Override
	public List<HelpDeskVO> myAnswer(String searchOption, String keyword , String nowUser) throws Exception {
		return helpDeskDAO.myAnswer(searchOption, keyword, nowUser);
	}
	
	// 02. 헬프 데스크 등록
	@Override
	public void insertHelpDesk(HelpDeskVO vo) throws Exception {
		helpDeskDAO.insertHelpDesk(vo);
	}
	
	@Override
	public void insertEmp(HelpDeskVO vo)throws Exception {
		helpDeskDAO.insertEmp(vo);
	}
	// 03. 헬프 데스크 상세
	@Override
	public HelpDeskVO viewHelpDesk(int BNO) throws Exception {
		return helpDeskDAO.viewHelpDesk(BNO);
	}
	
	@Override
	public HelpDeskVO viewEmp(int BNO) throws Exception {
		return helpDeskDAO.viewEmp(BNO);
	}
	
	// 04. 헬프 데스크 수정
	@Override
	public void updateHelpDesk(HelpDeskVO vo) throws Exception {
		helpDeskDAO.updateHelpDesk(vo);
	}
	
	// 답변 삭제
	@Override
	public void deleteEmp(int BNO) throws Exception {
		helpDeskDAO.deleteEmp(BNO);
	}
	
	//내부사용자 수정
	@Override
	public void updateEmp(HelpDeskVO vo) throws Exception{
		helpDeskDAO.updateEmp(vo);
	}
	
	// 05. 헬프 데스크 삭제
	@Override
	public void deleteHelpDesk(int BNO) throws Exception {
		helpDeskDAO.deleteHelpDesk(BNO);
	}
}
