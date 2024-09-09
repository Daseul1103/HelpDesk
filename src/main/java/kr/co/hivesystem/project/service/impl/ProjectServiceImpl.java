package kr.co.hivesystem.project.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.hivesystem.project.dao.ProjectDAO;
import kr.co.hivesystem.project.service.ProjectService;
import kr.co.hivesystem.project.vo.ProjectVO;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Inject
	ProjectDAO projectDAO;
	
	// 01. 프로젝트 목록
	@Override
	public List<ProjectVO> listProject(String searchOption, String keyword) throws Exception{
		return projectDAO.listProject(searchOption, keyword);
	}
	
	// 02. 프로젝트 등록
	@Override
	public void insertProject(ProjectVO vo) throws Exception {
		projectDAO.insertProject(vo);
	}
	
	// 03. 프로젝트 상세
	@Override
	public ProjectVO viewProject(int BNO) throws Exception {
		return projectDAO.viewProject(BNO);
	}
	
	// 03-1. 프로젝트 팝업 상세
	@Override
	public ProjectVO viewPopup(int BNO) throws Exception {
		return projectDAO.viewPopup(BNO);
	}
		
	// 04. 프로젝트 수정
	@Override
	public void updateProject(ProjectVO vo) throws Exception {
		projectDAO.updateProject(vo);
	}
	
	// 05. 프로젝트 삭제
	@Override
	public void deleteProject(int BNO) throws Exception {
		projectDAO.deleteProject(BNO);
	}
}
