package kr.co.hivesystem.project.mapper;

import java.util.List;

import kr.co.hivesystem.project.vo.ProjectVO;

public interface ProjectMapper {
	
	List<ProjectVO> listProject();
	
	void insertProject(ProjectVO vo);
	
	ProjectVO viewProject(int BNO);
	
	ProjectVO viewPopup(int BNO);
	
	void updateProject(ProjectVO vo);
	
	void deleteProject(int BNO);
}
