package kr.co.hivesystem.customer.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import org.springframework.stereotype.Service;

import org.springframework.stereotype.Service;

import org.springframework.stereotype.Service;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.customer.dao.CustomerDAO;
import kr.co.hivesystem.customer.service.CustomerService;
import kr.co.hivesystem.customer.vo.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Inject
	CustomerDAO customerDAO;
	
	// 01. 고객사 목록
	@Override
	public List<CustomerVO> listCustomer(String searchOption, String keyword) throws Exception {
		return customerDAO.listCustomer(searchOption, keyword);
	}
	
	@Override
	public List<CustomerVO> findCustomer(String searchOption, String keyword) throws Exception {
		return customerDAO.findCustomer(searchOption, keyword);
	}
	// 02. 고객사 등록
	@Override
	public void insertCustomer(CustomerVO vo) throws Exception {
		customerDAO.insertCustomer(vo);
	}
	
	// 03. 고객사 상세
	@Override
	public CustomerVO viewCustomer(int BNO) throws Exception {
		return customerDAO.viewCustomer(BNO);
	}
	
	// 04. 고객사 수정
	@Override
	public void updateCustomer(CustomerVO vo) throws Exception {
		customerDAO.updateCustomer(vo);
	}
	
	// 05. 고객사 삭제
	public void deleteCustomer(int BNO) throws Exception {
		customerDAO.deleteCustomer(BNO);
	}
}
