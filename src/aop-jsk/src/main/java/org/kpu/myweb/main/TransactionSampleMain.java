package org.kpu.myweb.main;


import org.kpu.myweb.domain.ScheduleVO;
import org.kpu.myweb.service.ScheduleService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TransactionSampleMain {
	
	private static ApplicationContext ctx = null;
	
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("안녕하세요 TRANSACTION-MYBATIS");
	
		ctx = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

		
		ScheduleService scheduleService = ctx.getBean(ScheduleService.class);  // by Class name
		
		// 예외상황 : max 45자를 넘김.
		String schedule1 = "스케줄1";		ScheduleVO vo1 = new ScheduleVO(); 
		vo1.setSchedule_subject(schedule1);  vo1.setSchedule_date("2020-06-10");
		vo1.setschedule_desc("가나다라마바사자차카타파하가나다라마바사자차카타파하가나다라마바사자차카타파하가나다라마바사자차카타파하가나다라마바사자차카타파하가나다라마바사자차카타파하");
		
		
		String schedule2 = "스케줄2";
		ScheduleVO vo2 = new ScheduleVO(); 
		vo2.setSchedule_subject(schedule2);  vo2.setSchedule_date("2020-06-10");
		vo1.setschedule_desc(schedule2);
		
		
		try {
			scheduleService.updateScheduleList(vo1, vo2);
			System.out.println("TRANSACTION 처리 완료");
		} catch(Exception e) {
			System.out.println(e);
		}
		
	}
}
