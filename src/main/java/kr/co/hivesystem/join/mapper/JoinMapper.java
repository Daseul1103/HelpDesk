package kr.co.hivesystem.join.mapper;

import kr.co.hivesystem.join.vo.JoinVO;

public interface JoinMapper {
	void joinMember(JoinVO vo);
	
	JoinVO viewMember(JoinVO vo);
	
	String checkId(String id);
}
