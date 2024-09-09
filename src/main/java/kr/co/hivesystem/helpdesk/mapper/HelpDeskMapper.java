package kr.co.hivesystem.helpdesk.mapper;

import java.util.List;

import kr.co.hivesystem.helpdesk.vo.HelpDeskVO;

public interface HelpDeskMapper {
	List<HelpDeskVO> listHelpDesk();
	
	void insertHelpDesk(HelpDeskVO vo);
	
	void insertEmp(HelpDeskVO vo);
	
	HelpDeskVO viewHelpDesk(int BNO);
	
	HelpDeskVO viewEmp(int BNO);
	
	void updateHelpDesk(HelpDeskVO vo);
	
	// 답변 삭제
	void deleteEmp(HelpDeskVO vo);
	
	// 내부사용자 수정
	void updateEmp(HelpDeskVO vo);
	
	void deleteHelpDesk(int BNO);
	
	List<HelpDeskVO> myList();
	
	List<HelpDeskVO> myAnswer();
}
