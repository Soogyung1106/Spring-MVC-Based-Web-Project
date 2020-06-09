package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;
import org.kpu.myweb.persistence.ScheduleDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	
	@Autowired
	private ScheduleDAO scheduleDAO;
	
	public void addSchedule(ScheduleVO schedule) throws Exception{
		scheduleDAO.add(schedule);
	}
	
	public List<ScheduleVO> readScheduleList() throws Exception{
		return scheduleDAO.readList();
	}
	
	
	/*
	public StudentVO readMember(String id) throws Exception {
		return memberDAO.read(id);
	}
	
	public List<StudentVO> readMemberList() throws Exception{
		return memberDAO.readList();
	}
	
	public void addMember(StudentVO student) throws Exception {
		memberDAO.add(student);
	}
	
	public void deleteMember(String id) throws Exception {
		memberDAO.delete(id);
	}
	
	public void updateMember(StudentVO student) throws Exception {
		memberDAO.update(student);
	}
	*/
	
}
