package kr.co.hivesystem.join.dao;

import kr.co.hivesystem.join.vo.JoinVO;

public interface JoinDAO {
	
	public void joinMember(JoinVO vo);
	
	public JoinVO viewMember();
	
	public String checkId(String id);
}
