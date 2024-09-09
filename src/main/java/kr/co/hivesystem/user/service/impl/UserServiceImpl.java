package kr.co.hivesystem.user.service.impl;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.user.dao.UserDAO;
import kr.co.hivesystem.user.service.UserService;
import kr.co.hivesystem.user.vo.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Inject
	UserDAO userDAO;
	
	@Override // 로그인 기능
	public boolean userLogin(UserVO vo,HttpSession session) {
		boolean result = userDAO.userLogin(vo);
		
		if(result) { //true일 경우 세션에 등록
			
			UserVO vo2 = new UserVO();
			vo2 = viewMember(vo);
			
			//세션 변수 등록
			session.setAttribute("MEMBER_ID", vo2.getMEMBER_ID());
			session.setAttribute("MEMBER_NAME", vo2.getMEMBER_NAME());
			session.setAttribute("MEMBER_TEL", vo2.getMEMBER_TEL());
			session.setAttribute("MEMBER_COMPANY", vo2.getMEMBER_COMPANY());
		}
		
		return result;
	}
	
	@Override
	public String userType(UserVO vo) {
		String type = userDAO.userType(vo);
		return type;
	}
	
	@Override // 로그인 정보
	public UserVO viewMember(UserVO vo) {
		return userDAO.viewMember(vo);
	}
	
	@Override // 회원 로그아웃
	public void userLogout(HttpSession session) {
		
		//세션 정보 초기화
		session.invalidate();
	}
}
