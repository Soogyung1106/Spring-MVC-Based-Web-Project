package org.kpu.myweb.domain;

public class ScheduleVO {
	
	private String schedule_idx; //인덱스
	private String schedule_subject; //일정 제목
	private String schedule_desc; //일정 자세한 설명
	private String schedule_date; //날짜
	private String schedule_count; //조회수
	
	public String getSchedule_idx() {
		return schedule_idx;
	}
	public void setSchedule_idx(String schedule_idx) {
		this.schedule_idx = schedule_idx;
	}
	

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
	
	public String getSchedule_count() {
		return schedule_count;
	}
	public void setSchedule_count(String schedule_count) {
		this.schedule_count = schedule_count;
	}
	

	@Override
	public String toString() {
		return "ScheduleVO [schedule_idx=" + schedule_idx + ", schedule_subject=" + schedule_subject + ", schedule_desc=" + schedule_desc + ", schedule_date=" + schedule_date + ", schedule_count=" + schedule_count+ "]";
		//return "ScheduleVO [schedule_subject=" + schedule_subject + ", schedule_desc=" + schedule_desc + ", schedule_date=" + schedule_date +  "]";
	}

	
}
