package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;

public interface ScheduleService {
	
	public void addSchedule(ScheduleVO schedule) throws Exception;
	public List<ScheduleVO> readScheduleList() throws Exception;
	public ScheduleVO readSchedule(String schedule_idx) throws Exception;
	public void updateSchedule(ScheduleVO schedule) throws Exception;
	public void deleteSchedule(String schedule_idx) throws Exception; 
	public void updateScheduleList(ScheduleVO schedule1, ScheduleVO schedule2) throws Exception;

}
