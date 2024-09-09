package kr.co.hivesystem.project.dao;

import java.util.List;

import kr.co.hivesystem.project.vo.ProjectVO;

public interface ProjectDAO {
	
	// 01. 프로젝트 목록
	public List<ProjectVO> listProject(String searchOption, String keyword) throws Exception;
	
	// 02. 프로젝트 등록
	public void insertProject(ProjectVO vo) throws Exception;
	
	// 03. 프로젝트 상세
	public ProjectVO viewProject(int BNO) throws Exception;
	
	// 03. 프로젝트 상세
	public ProjectVO viewPopup(int BNO) throws Exception;
	
	// 04. 프로젝트 수정
	public void updateProject(ProjectVO vo) throws Exception;
	
	// 05. 프로젝트 삭제
	public void deleteProject(int BNO) throws Exception;
}
