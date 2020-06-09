package org.kpu.myweb.domain;

public class ScheduleVO {
	
	//private String schedule_idx;
	private String schedule_subject;
	private String schedule_desc;
	private String schedule_date;


	public String getSchedule_subject() {
		return schedule_subject;
	}
	public void setSchedule_subject(String schedule_subject) {
		this.schedule_subject = schedule_subject;
	}
	public String getschedule_desc() {
		return schedule_desc;
	}
	public void setschedule_desc(String schedule_desc) {
		this.schedule_desc = schedule_desc;
	}
	public String getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(String schedule_date) {
		this.schedule_date = schedule_date;
	}
	

	@Override
	public String toString() {
		//return "ScheduleVO [schedule_idx=" + schedule_idx + ", schedule_subject=" + schedule_subject + ", schedule_desc=" + schedule_desc + ", schedule_date=" + schedule_date +  "]";
		return "ScheduleVO [schedule_subject=" + schedule_subject + ", schedule_desc=" + schedule_desc + ", schedule_date=" + schedule_date +  "]";
	}

	
}
