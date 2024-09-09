package kr.co.hivesystem.join.service;

import kr.co.hivesystem.join.vo.JoinVO;

public interface JoinService {
	
	// 1. 회원등록
	public void joinMember(JoinVO vo);
	
	// 2. 회원 정보 가져오기
	public JoinVO viewMember();
	
	public String checkId(String id);

}
