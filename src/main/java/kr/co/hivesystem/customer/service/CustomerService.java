package kr.co.hivesystem.customer.service;

import java.util.List;

import kr.co.hivesystem.customer.vo.CustomerVO;

public interface CustomerService {
	
	// 01. 고객사 목록
	public List<CustomerVO> listCustomer(String searchOption, String keyword) throws Exception;
	
	public List<CustomerVO> findCustomer(String searchOption, String keyword) throws Exception;
	
	// 02. 고객사 등록
	public void insertCustomer(CustomerVO vo) throws Exception;
	
	// 03. 고객사 상세
	public CustomerVO viewCustomer(int BNO) throws Exception;
	
	// 04. 고객사 수정
	public void updateCustomer(CustomerVO vo) throws Exception;
	
	// 05. 고객사 삭제
	public void deleteCustomer(int BNO) throws Exception;
}
