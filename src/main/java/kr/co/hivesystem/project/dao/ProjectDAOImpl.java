package kr.co.hivesystem.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.hivesystem.project.vo.ProjectVO;

@Repository
public class ProjectDAOImpl implements ProjectDAO{

	@Inject
	SqlSession sqlSession;
	
	// 01. 프로젝트 목록
	@Override
	public List<ProjectVO> listProject(String searchOption, String keyword) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectList("kr.co.hivesystem.project.mapper.ProjectMapper.listProject", map);
	}
	
	// 02. 프로젝트 등록
	@Override
	public void insertProject(ProjectVO vo) throws Exception{
		sqlSession.insert("kr.co.hivesystem.project.mapper.ProjectMapper.insertProject", vo);
	}
	
	// 03. 프로젝트 상세
	@Override
	public ProjectVO viewProject(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.project.mapper.ProjectMapper.viewProject", BNO);
	}
	
	// 03. 프로젝트 팝업 상세
	@Override
	public ProjectVO viewPopup(int BNO) throws Exception {
		return sqlSession.selectOne("kr.co.hivesystem.project.mapper.ProjectMapper.viewPopup", BNO);
	}
	
	// 04. 프로젝트 수정
	@Override
	public void updateProject(ProjectVO vo) throws Exception {
		sqlSession.update("kr.co.hivesystem.project.mapper.ProjectMapper.updateProject", vo);
	}
	// 05. 프로젝트 삭제
	@Override
	public void deleteProject(int BNO) throws Exception {
		sqlSession.delete("kr.co.hivesystem.project.mapper.ProjectMapper.deleteProject", BNO);
	}
}
