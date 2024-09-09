package kr.co.hivesystem.helpdesk.dao;

import java.util.List;

import kr.co.hivesystem.helpdesk.vo.HelpDeskVO;

public interface HelpDeskDAO {

	// 01. 헬프 데스크 목록
	public List<HelpDeskVO> listHelpDesk(String searchOption, String keyword) throws Exception;
	
	// 02. 헬프 데스크 등록
	public void insertHelpDesk(HelpDeskVO vo) throws Exception;
	
	public void insertEmp(HelpDeskVO vo) throws Exception;
	
	// 03. 헬프 데스크 상세
	public HelpDeskVO viewHelpDesk(int BNO) throws Exception;
	
	public HelpDeskVO viewEmp(int BNO) throws Exception;
	
	// 04. 헬프 데스크 수정
	public void updateHelpDesk(HelpDeskVO vo) throws Exception;
	
	// 답변 삭제
	public void deleteEmp(int BNO) throws Exception;
	
	// 내부사용자 수정
	public void updateEmp(HelpDeskVO vo) throws Exception;
	
	// 05. 헬프 데스크 삭제
	public void deleteHelpDesk(int BNO) throws Exception;
	
	public List<HelpDeskVO> myList(String searchOption, String keyword, String nowUser) throws Exception;
	
	public List<HelpDeskVO> myAnswer(String searchOption, String keyword, String nowUser) throws Exception;
	
}
