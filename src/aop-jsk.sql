/*테이블 생성*/

/*스케줄 테이블*/
CREATE TABLE `tk_schedule` (
    `schedule_idx` int NOT NULL AUTO_INCREMENT,
    `schedule_subject` varchar(10) DEFAULT NULL,
    `schedule_desc` varchar(45) DEFAULT NULL,
    `schedule_date` DATE NOT NULL,
    `schedule_count` int NOT NULL DEFAULT 0,

    PRIMARY KEY (`schedule_idx`)
); 

/*선수 테이블*/
CREATE TABLE `tk_playersignupinfo` (
  `id` varchar(15) NOT NULL,
  `name` varchar(10) NOT NULL,
  `passwd` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `age` int NOT NULL,
  `team` varchar(15) NOT NULL,
  `mainPosition` varchar(15) NOT NULL,
  `subPosition` varchar(15) NOT NULL,
  `power` float DEFAULT NULL,
  `speed` float DEFAULT NULL,
  `endurance` float DEFAULT NULL,
  `shooting` float DEFAULT NULL,
  `pass` float DEFAULT NULL,
  `technic` float DEFAULT NULL,
  `en_name` varchar(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'ROLE_PLAYER',
  constraint fk_player_role foreign key (`role`) references tk_role(`role`),
  
  PRIMARY KEY (`id`)
);



/*감독 테이블*/
CREATE TABLE `tk_coachsignupinfo` (
  `id` varchar(15) NOT NULL,
  `name` varchar(10) NOT NULL,
  `passwd` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `team` varchar(15) NOT NULL,
  `role` varchar(20) DEFAULT 'ROLE_COACH',
  constraint fk_coach_role foreign key (`role`) references tk_role(`role`),
  
  PRIMARY KEY (`id`)
  
); 

/* 인증용 Role 테이블 */
CREATE TABLE `tk_role`(
	`role` varchar(20) NOT NULL,
    `description` varchar(30),
    PRIMARY KEY (`role`)
);

/* 사용자의 id와 권한이 묶어진 테이블*/
CREATE TABLE `tk_user_role`(
	`id` varchar(20),
    `role` varchar(20),
	constraint fk_player_id foreign key (`id`) references tk_playersignupinfo(`id`), 
    constraint fk_coach_id foreign key (`id`) references tk_coachsignupinfo(`id`),     
    constraint user_role_combo_pk PRIMARY KEY (`id`, `role`)
);

INSERT INTO tk_user_role values('messi', 'ROLE_PLAYER');

/*샘플 데이터 생성*/

/* 스케줄 */
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('훈련',  '6월 첫째 주 기초 체력 강화 훈련', '2020-06-06', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('훈련',  '6월 둘째 주 기초 체력 강화 훈련', '2020-06-13', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('훈련',  '6월 셋째 주 기초 체력 강화 훈련', '2020-06-20', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('훈련',  '6월 넷째 주 기초 체력 강화 훈련', '2020-06-27', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('결승전',  '최종 결승전', '2020-06-28', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('회식',  '결승전 후 회식입니다. 모두들 꼭 참여하시기 바랍니다', '2020-06-28', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('1차 연습 경기',  '결승전 준비 경기 ', '2020-06-07', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('2차 연습 경기',  '결승전 준비 경기 ', '2020-06-14', '0');
INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date, schedule_count) VALUE('3차 연습 경기',  '결승전 준비 경기 ', '2020-06-21', '0');

/*감독*/
INSERT INTO tk_coachsignupinfo (id , name , passwd, email, team ) VALUE('kwon',  'kwon', '1234', 'kwon1234@naver.com', 'All Is Well');
INSERT INTO tk_coachsignupinfo (id , name , passwd, email, team ) VALUE('pep',  'pep', '1234', 'pep1234@naver.com', 'Pep');

/*선수*/ 
INSERT INTO tk_playersignupinfo (`id` , `name` , `passwd` , `email`, `height`, `weight`, `age`, `team`, `mainPosition`, `subPosition`) VALUE('messi',  'messi', '1234', 'messi1234@naver.com', '168', '80', '40', 'All Is Well', '공격수', '공격수');
INSERT INTO tk_playersignupinfo (`id` , `name` , `passwd` , `email`, `height`, `weight`, `age`, `team`, `mainPosition`, `subPosition`) VALUE('son',  'messi', '1234', 'son1234@naver.com', '180', '80', '30', 'All Is Well', '공격수', '공격수');
 

/*role*/
INSERT INTO tk_role values('ROLE_PLAYER', '선수');
INSERT INTO tk_role values('ROLE_COACH', '감독');
INSERT INTO tk_role values('ROLE_ADMIN', '관리자');





 /*테이블 삭제*/
drop table tk_schedule;
drop table tk_role;
drop table tk_coachsignupinfo;
drop table tk_playersignupinfo;

/* test query*/
select * from tk_schedule;
select * from tk_coachsignupinfo;
select * from tk_playersignupinfo;
select * from tk_role;
select * from tk_user_role;

INSERT INTO tk_schedule (schedule_subject, schedule_desc, schedule_date) VALUE('test',  '테스트', '2020-06-29');            
SELECT date_format(schedule_date, '%Y%m%d'), schedule_desc, schedule_idx, schedule_subject FROM `tk_schedule`; 
update tk_schedule set schedule_subject ='정수경', schedule_desc ='change', schedule_date ='2020-06-01' where schedule_idx = '1';




