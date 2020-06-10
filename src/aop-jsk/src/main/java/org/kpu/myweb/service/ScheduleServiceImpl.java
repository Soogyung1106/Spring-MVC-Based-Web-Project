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
	
	public ScheduleVO readSchedule(String schedule_idx) throws Exception{
		return scheduleDAO.read(schedule_idx);
	}
	
	public void updateSchedule(ScheduleVO schedule) throws Exception{
		//logger.info(schedule.toString());
		scheduleDAO.update(schedule);
	}
	
	public void deleteSchedule(String schedule_idx) throws Exception{
		scheduleDAO.delete(schedule_idx);
	}
	
	//트랜잭션 처리가 필요한 메서드 (READ_COMMITTED : 다른 트랜잭션에 의해 커밋된 데이터만 읽을 수 있도록/ REQUIRED: 기존 트랜잭션 있으면 포함되어 실행, 없으면 새롭게 만들기)
	@Transactional ( propagation=Propagation.SUPPORTS, isolation=Isolation.READ_COMMITTED, timeout=10 )
	public void updateScheduleList(ScheduleVO schedule1, ScheduleVO schedule2) throws Exception {
		scheduleDAO.update(schedule2);
		scheduleDAO.update(schedule1);
	}
	
	
	
}
