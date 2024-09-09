package kr.co.hivesystem.user.dao;

import javax.servlet.http.HttpSession;

import kr.co.hivesystem.user.vo.UserVO;

public interface UserDAO {
	
	// 로그인
	public boolean userLogin(UserVO vo);
	
	public String userType(UserVO vo);
	
	// 로그인 정보
	public UserVO viewMember(UserVO vo);
	
	// 로그아웃
	public void userLogout(HttpSession session);
	
}
