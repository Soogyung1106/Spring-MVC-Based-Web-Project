package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;
import org.kpu.myweb.persistence.ScheduleDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	
	//private static final Logger logger = LoggerFactory.getLogger(ScheduleServiceImpl.class);
	
	@Autowired
	private ScheduleDAO scheduleDAO;


	public void addSchedule(ScheduleVO schedule) throws Exception{
		scheduleDAO.add(schedule);
	}
	
	public List<ScheduleVO> readScheduleList() throws Exception{
		return scheduleDAO.readList();
	}
	
	// 일정 조회와 조회수 상승(트랜잭션) 
	public ScheduleVO readSchedule(String schedule_idx) throws Exception{
		/* 원본
		return scheduleDAO.read(schedule_idx);
		*/
		scheduleDAO.updateCount(schedule_idx); //조회수 상승
		return scheduleDAO.read(schedule_idx); //일정 조회 -> 예외발생
		
	}
	
	public void updateSchedule(ScheduleVO schedule) throws Exception{
		scheduleDAO.update(schedule);
	}
	
	public void deleteSchedule(String schedule_idx) throws Exception{
		scheduleDAO.delete(schedule_idx);
	}
	
	//트랜잭션 추가함수
	/*
	public void updateScheduleList(ScheduleVO schedule1, ScheduleVO schedule2) throws Exception {
		scheduleDAO.update(schedule2);
		scheduleDAO.update(schedule1); //예외발생
	}
	*/
	
	
	
}
