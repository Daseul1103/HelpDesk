package kr.co.hivesystem.join.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.join.vo.JoinVO;

@Repository
public class JoinDAOImpl implements JoinDAO{
	
	@Inject
	SqlSession sqlSession;
	
	// 1. 회원 등록 기능 구현
	@Override
	public void joinMember(JoinVO vo) {
		sqlSession.insert("kr.co.hivesystem.join.mapper.JoinMapper.joinMember",vo);
	}
	
	@Override
	public JoinVO viewMember() {
		return null;
	}
	
	
	@Override
	public String checkId(String id) {
		String checker = sqlSession.selectOne("kr.co.hivesystem.join.mapper.JoinMapper.checkId",id);
		return checker;
	}
}
