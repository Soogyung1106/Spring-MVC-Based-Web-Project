package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;

public interface ScheduleService {
	
	// 일정 등록
	public void addSchedule(ScheduleVO schedule) throws Exception;
	
	// 일정 전체 조회(캘린더)
	public List<ScheduleVO> readScheduleList() throws Exception;
	
	// 일정 조회와 조회수 상승(트랜잭션) 
	public ScheduleVO readSchedule(String schedule_idx) throws Exception;
	
	// 일정 수정
	public void updateSchedule(ScheduleVO schedule) throws Exception;
	
	// 일정 삭제
	public void deleteSchedule(String schedule_idx) throws Exception; 
	
	
	//public void updateScheduleList(ScheduleVO schedule1, ScheduleVO schedule2) throws Exception;
	
}
