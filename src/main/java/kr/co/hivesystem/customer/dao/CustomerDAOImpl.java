package kr.co.hivesystem.customer.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.customer.vo.CustomerVO;

@Repository
public class CustomerDAOImpl implements CustomerDAO{
	
	@Inject
	SqlSession sqlSession;
	
	// 01. 고객사 목록
	@Override
	public List<CustomerVO> listCustomer(String searchOption, String keyword) throws Exception {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.customer.mapper.CustomerMapper.listCustomer", map);
	}
	
	@Override
	public List<CustomerVO> findCustomer(String searchOption, String keyword) throws Exception {
		Map<String,String> map = new HashMap<String,String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.customer.mapper.CustomerMapper.findCustomer", map);
	}
	// 02. 고객사 등록 
	@Override
	public void insertCustomer(CustomerVO vo) throws Exception {
		sqlSession.insert("kr.co.hivesystem.customer.mapper.CustomerMapper.insertCustomer", vo);
	}
	
	// 03. 고객사 상세
	@Override
	public CustomerVO viewCustomer(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.customer.mapper.CustomerMapper.viewCustomer", BNO);
		
	}
	// 04. 고객사 수정
	@Override
	public void updateCustomer(CustomerVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.customer.mapper.CustomerMapper.updateCustomer", vo);
		
		
	}
	// 05. 고객사 삭제
	@Override
	public void deleteCustomer(int BNO) throws Exception {
		sqlSession.delete("kr.co.hivesystem.customer.mapper.CustomerMapper.deleteCustomer", BNO);
	}
}
