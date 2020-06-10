package org.kpu.myweb.persistence;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;

public interface ScheduleDAO {
	
	public void add(ScheduleVO schedule) throws Exception;
	public List<ScheduleVO> readList() throws Exception;
	public ScheduleVO read(String schedule_idx) throws Exception;
	public void update(ScheduleVO schedule) throws Exception;
	public void delete(String schedule_idx) throws Exception;
	

}
