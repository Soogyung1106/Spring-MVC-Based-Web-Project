package org.kpu.myweb.controller;

import java.util.List;

import org.kpu.myweb.domain.ScheduleVO;
import org.kpu.myweb.service.ScheduleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping(value="/schedule")
public class CalendarController {
	
	@Autowired
    private ScheduleService scheduleService;

	private static final Logger logger = LoggerFactory.getLogger(CalendarController.class);
	
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String createScheduleGet() throws Exception {
		logger.info(" /register URL GET method called. then forward schedule_register.jsp.");
		return "schedule/schedule_register";
	}
	
    
    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
	public String createSchedulePost( @ModelAttribute("schedule") ScheduleVO vo) throws Exception {
    	scheduleService.addSchedule(vo);
		logger.info(vo.toString());
		logger.info(" /register URL POST method called. then createSchedule method executed.");
		return "redirect:/schedule/list";
	}
    
    @RequestMapping(value = {"/list"}, method = RequestMethod.GET)
    public String listSchedule(Model model) throws Exception {
    	List<ScheduleVO> schedules = scheduleService.readScheduleList();
    	
		logger.info(" /schedule/list URL called. then listSchedule method executed.");
        model.addAttribute("schedules", schedules);
        return "schedule/schedule_list";
    }
    
    @RequestMapping(value = "/read", method = RequestMethod.GET)
    public String readSchedule(@RequestParam("schedule_idx") String schedule_idx, Model model) throws Exception {
    	ScheduleVO schedule = scheduleService.readSchedule(schedule_idx);
    	
		logger.info(" /read?schedule_idx=OO URL called. then readSchedule method executed.");
        model.addAttribute("schedule", schedule);
        return "schedule/schedule_read";
    }
    
    
    
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyScheduleGet(@RequestParam("schedule_idx") String schedule_idx, Model model) throws Exception {
    	ScheduleVO schedule = scheduleService.readSchedule(schedule_idx);
    	
		logger.info(" /modify?schedule_idx=OO URL GET method called. then forward schedule_modify.jsp.");
        model.addAttribute("schedule", schedule);
        return "schedule/schedule_modify";
    }
    
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifySchedulePost(@ModelAttribute("schedule") ScheduleVO vo) throws Exception {
    	scheduleService.updateSchedule(vo);
		logger.info(vo.toString());
		logger.info(" /modify?schedule_idx=kang URL POST method called. then modifySchedulePost method executed.");
        return "redirect:/schedule/list";
    }
    
    

  
	
	/* 원본
	@RequestMapping(value = {"/list"}, method = RequestMethod.GET)
    public String listMember(Model model) throws Exception {
    	List<StudentVO> students = memberService.readMemberList();
    	
		logger.info(" /member/list URL called. then listMemebr method executed.");
        model.addAttribute("students", students);
        return "member/member_list";
    }
    
    @RequestMapping(value = "/read", method = RequestMethod.GET)
    public String readMember(@RequestParam("id") String id, Model model) throws Exception {
    	StudentVO student = memberService.readMember(id);
    	
		logger.info(" /read?id=kang URL called. then readMemebr method executed.");
        model.addAttribute("student", student);
        return "member/member_read";
    }
    
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String createMemberGet() throws Exception {
		logger.info(" /register URL GET method called. then forward member_register.jsp.");
		return "member/member_register";
	}
	
    
    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
	public String createMemberPost( @ModelAttribute("student") StudentVO vo) throws Exception {
		memberService.addMember(vo);
		logger.info(vo.toString());
		logger.info(" /register URL POST method called. then createMember method executed.");
		return "redirect:/member/list";
	}
	
            
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyMemberGet(@RequestParam("id") String id, Model model) throws Exception {
    	StudentVO student = memberService.readMember(id);
    	
		logger.info(" /modify?id=kang URL GET method called. then forward member_modify.jsp.");
        model.addAttribute("student", student);
        return "member/member_modify";
    }
    
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifyMemberPost(@ModelAttribute("student") StudentVO vo) throws Exception {
    	memberService.updateMember(vo);
		logger.info(vo.toString());
		logger.info(" /modify?id=kang URL POST method called. then modifyMemberPost method executed.");
        return "redirect:/member/list";
    }
    
    */
    
/*  MemberControllerAdvice에 예외처리 기능적용    
    @ExceptionHandler(DataNotFoundException.class)
    public String handleException(DataNotFoundException e) {
        return "member/not_found";
    }
*/
   
}