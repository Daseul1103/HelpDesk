package kr.co.hivesystem.user.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.user.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	//SqlSession 객체를 스프링에서 생성하여 주입 , 의존 관계 주입
	@Inject
	SqlSession sqlSession;
	
	// 01. 로그인
	@Override
	public boolean userLogin(UserVO vo) {
		String name = sqlSession.selectOne("kr.co.hivesystem.user.mapper.UserMapper.userLogin",vo);
		return (name == null) ? false : true ;
	}
	
	@Override
	public String userType(UserVO vo) {
		String type = sqlSession.selectOne("kr.co.hivesystem.user.mapper.UserMapper.userType",vo);
		return type;
	}
	
	// 02. 로그인 정보
	public UserVO viewMember(UserVO vo) {
		return sqlSession.selectOne("kr.co.hivesystem.user.mapper.UserMapper.viewMember",vo);
	}
	
	// 03. 로그아웃
	@Override
	public void userLogout(HttpSession session) {
	}
}
