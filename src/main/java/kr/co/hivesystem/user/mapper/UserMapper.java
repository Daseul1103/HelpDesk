package kr.co.hivesystem.user.mapper;

import kr.co.hivesystem.user.vo.UserVO;

public interface UserMapper {
	String userLogin(UserVO vo);
	UserVO viewMember(UserVO vo);
	String userType(UserVO vo);
}
