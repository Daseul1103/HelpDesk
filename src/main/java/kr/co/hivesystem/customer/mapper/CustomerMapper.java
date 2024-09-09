package kr.co.hivesystem.customer.mapper;

import java.util.List;

import kr.co.hivesystem.customer.vo.CustomerVO;

public interface CustomerMapper {
	List<CustomerVO> listCustomer();
	
	List<CustomerVO> findCustomer();
	
	void insertCustomer(CustomerVO vo);
	
	CustomerVO viewCustomer(int BNO);
	
	void updateCustomer(CustomerVO vo);
	
	void deleteCustomer(int BNO);
}
