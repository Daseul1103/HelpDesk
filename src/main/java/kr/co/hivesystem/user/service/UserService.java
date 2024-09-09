package kr.co.hivesystem.user.service;

import javax.servlet.http.HttpSession;

import kr.co.hivesystem.user.vo.UserVO;

public interface UserService {
	
	// 로그인
	public boolean userLogin(UserVO vo,HttpSession session);
	
	
	// 유저 타입 가져오기
	public String userType(UserVO vo);
	
	// 회원 로그인 정보
	public UserVO viewMember(UserVO vo);
	
	// 로그아웃
	public void userLogout(HttpSession session);
}
