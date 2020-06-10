/*테이블 생성*/

CREATE TABLE `tk_schedule` (
    `schedule_idx` int NOT NULL AUTO_INCREMENT,
    `schedule_subject` varchar(10) DEFAULT NULL,
    `schedule_desc` varchar(45) DEFAULT NULL,
    `schedule_date` DATE NOT NULL,

    PRIMARY KEY (`schedule_idx`)
); 

/*샘플 데이터 생성*/

INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('훈련',  '6월 첫째 주 기초 체력 강화 훈련', '2020-06-06');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('훈련',  '6월 둘째 주 기초 체력 강화 훈련', '2020-06-13');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('훈련',  '6월 셋째 주 기초 체력 강화 훈련', '2020-06-20');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('훈련',  '6월 넷째 주 기초 체력 강화 훈련', '2020-06-27');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('결승전',  '최종 결승전', '2020-06-28');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('회식',  '결승전 후 회식입니다. 모두들 꼭 참여하시기 바랍니다', '2020-06-28');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('1차 연습 경기',  '결승전 준비 경기 ', '2020-06-07');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('2차 연습 경기',  '결승전 준비 경기 ', '2020-06-14');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('3차 연습 경기',  '결승전 준비 경기 ', '2020-06-21');
 
 
 /*테이블 삭제*/
drop table tk_schedule;


/* test */
select * from tk_schedule;
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('test',  '테스트', '2020-06-29');            
SELECT date_format(schedule_date, '%Y%m%d'), schedule_desc, schedule_idx, schedule_subject FROM `tk_schedule`; 
update tk_schedule set schedule_subject ='정수경', schedule_desc ='change', schedule_date ='2020-06-01' where schedule_idx = '1';




