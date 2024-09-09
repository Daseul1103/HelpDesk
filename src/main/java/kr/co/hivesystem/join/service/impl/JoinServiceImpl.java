package kr.co.hivesystem.join.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.join.dao.JoinDAO;
import kr.co.hivesystem.join.service.JoinService;
import kr.co.hivesystem.join.vo.JoinVO;

@Service
public class JoinServiceImpl implements JoinService{
	
	// JoinDAO 객체를 스프링에서 생성하여 주입시킴
	@Inject
	JoinDAO joinDAO;
	
	// 1. 회원 등록 기능 구현
	@Override
	public void joinMember(JoinVO vo) {
		joinDAO.joinMember(vo);
	}
	
	@Override
	public JoinVO viewMember() {
		return null;
	}
	
	
	@Override
	public String checkId(String id) {
		String checker = joinDAO.checkId(id);
		return checker;
	}
	
}
