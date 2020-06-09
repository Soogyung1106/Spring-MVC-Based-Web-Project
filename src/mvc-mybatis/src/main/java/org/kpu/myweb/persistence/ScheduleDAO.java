package org.kpu.myweb.persistence;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;

public interface ScheduleDAO {
	
	public void add(ScheduleVO schedule) throws Exception;
	public List<ScheduleVO> readList() throws Exception;
	public ScheduleVO read(String schedule_idx) throws Exception;
	public void update(ScheduleVO schedule) throws Exception;
	
	
	/* 원본
	public void add(StudentVO student) throws Exception;
	public List<StudentVO> readList() throws Exception;
	public StudentVO read(String id) throws Exception;
	public void delete(String id) throws Exception;
	public void update(StudentVO student) throws Exception;
	*/
}
