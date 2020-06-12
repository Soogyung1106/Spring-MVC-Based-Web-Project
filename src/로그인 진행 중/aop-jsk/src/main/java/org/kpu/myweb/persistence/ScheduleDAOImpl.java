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
	

	public void updateCount(String schedule_idx) throws Exception{
		sqlSession.update(namespace + ".updateByIdx", schedule_idx);
	}
	

	


}
