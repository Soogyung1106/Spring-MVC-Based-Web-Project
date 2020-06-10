package org.kpu.myweb.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kpu.myweb.domain.ScheduleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {
	
	@Autowired  
	private SqlSession sqlSession;
	
	private static final String namespace = "org.kpu.myweb.mapper.ScheduleMapper";
	
	public void add(ScheduleVO schedule) throws Exception{
		sqlSession.insert(namespace + ".insert", schedule);
	}
		
	
	public List<ScheduleVO> readList() throws Exception{
		List<ScheduleVO> schedulelist = new ArrayList<ScheduleVO>();
		schedulelist = sqlSession.selectList(namespace + ".selectAll");
		return schedulelist;
	}
	
	public ScheduleVO read(String schedule_idx) throws Exception{
		ScheduleVO vo = sqlSession.selectOne(namespace+".selectByIdx", schedule_idx);
		return vo; 
	}
	
	
	public void update(ScheduleVO schedule) throws Exception{
		sqlSession.update(namespace + ".update", schedule);
	}
	
	public void delete(String schedule_idx) throws Exception{
		sqlSession.delete(namespace + ".delete", schedule_idx);
	}
	
	
	
	
	/* 원본
	public StudentVO read(String id) throws Exception {
	
		StudentVO vo = sqlSession.selectOne(namespace+".selectByid", id);
		return vo;   
	}
 
	public List<StudentVO> readList() throws Exception {
		List<StudentVO> studentlist = new ArrayList<StudentVO>();
		studentlist = sqlSession.selectList(namespace + ".selectAll");
		return studentlist;
	}
	
	public void add(StudentVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void delete(String id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", id);
	}

	public void update(StudentVO student) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".update", student);
	}
	*/

}
