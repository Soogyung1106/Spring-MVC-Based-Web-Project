package org.aiw.web.persistence;


import java.util.ArrayList;

import org.aiw.web.domain.DateVO;

public interface ScheduleDAO {
	public int schedule_add(ScheduleDTO scheduleDto);  //Create 
	public int before_schedule_add_search(ScheduleDTO scheduleDto);
	public ArrayList<ScheduleDTO> schedule_list(DateVO dateData);
}
