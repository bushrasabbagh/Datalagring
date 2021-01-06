DROP DATABASE IF  EXISTS PROJ;
CREATE DATABASE PROJ;
USE PROJ;





CREATE TABLE emeil (
 id INT NOT NULL,
 emeil VARCHAR(30) NOT NULL
);

ALTER TABLE emeil ADD CONSTRAINT PK_emeil PRIMARY KEY (id);
INSERT INTO emeil (id, emeil) VALUES (1, 'test1@test.se');
INSERT INTO emeil(id, emeil) VALUES (2, 'test2@test.se');
INSERT INTO emeil(id, emeil) VALUES (3, 'test3@test.se');
INSERT INTO emeil(id, emeil) VALUES (4, 'test4@test.se');
INSERT INTO emeil(id, emeil) VALUES (5, 'test5@test.se');
INSERT INTO emeil(id, emeil) VALUES (6, 'test6@test.se');
INSERT INTO emeil(id, emeil) VALUES (7, 'test7@test.se');
INSERT INTO emeil(id, emeil) VALUES (8, 'test8@test.se');
INSERT INTO emeil(id, emeil) VALUES (9, 'test9@test.se');
INSERT INTO emeil(id, emeil) VALUES (10, 'test10@test.se');


CREATE TABLE person (
 id INT NOT NULL,
 first_name VARCHAR(30),
 last_name VARCHAR(30),
 personal_number  VARCHAR(10) UNIQUE NOT NULL,
 age VARCHAR(10),
 zip VARCHAR(10),
 street VARCHAR(30),
 city VARCHAR(30)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);
INSERT INTO person VALUES (1, 'Adam', 'Lindberg', '9812200981', '22', '98358', 'Dalgården', 'Stockholm');
INSERT INTO person VALUES (2, 'Bertil', 'Lindberg', '9910200982', '21', '98358', 'Dalgården', 'Stockholm');
INSERT INTO person VALUES (3, 'Cesar', 'Olofson', '9812200983', '22', '12342', 'Röntgenvägen', 'Norsborg');
INSERT INTO person VALUES (4, 'David', 'Johansson', '9812200984', '22', '98728', 'Jatorpsvägen', 'Bålsta');
INSERT INTO person VALUES (5, 'Erik', 'Gustavsson', '9812200985', '22', '14382', 'Dialogvägen', 'Kallhäll');
INSERT INTO person VALUES (6, 'Filip', 'Wilsson', '9812200986', '22', '14562', 'Enköpingsvägen', 'Kista');
INSERT INTO person VALUES (7, 'Gustav', 'LindQvist', '9812200987', '22', '14932', 'Prästgårdsvägen', 'Sollentuna');
INSERT INTO person VALUES (8, 'Helge', 'Beck', '9812200988', '22', '76152', 'Ortopedvägen', 'Häggvik');
INSERT INTO person VALUES (9, 'Ivar', 'Andersson', '9812200989', '22', '14167', 'Odenplanvägen', 'Fredhäll');
INSERT INTO person VALUES (10, 'Johan', 'Eriksson', '9812200959', '22', '14165', 'Flemmanvägen', 'Flemingsberg');
INSERT INTO person VALUES (11, 'Kalle', 'Nilsson', '9812200654', '22', '78965', 'Spångevägen', 'Spånga');
INSERT INTO person VALUES (12, 'Ludvig', 'Larson', '9812200432', '22', '34565', 'Terapivägen', 'Solna');
INSERT INTO person VALUES (13, 'Martin', 'Qvistberg', '9812200921', '22',  '98642', 'Stockholmsvägen', 'Odenplan');



CREATE TABLE person_emeil (
 emeil_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_emeil ADD CONSTRAINT PK_person_emeil PRIMARY KEY (emeil_id,person_id);
INSERT INTO person_emeil VALUES (1, 1);
INSERT INTO person_emeil VALUES (2, 2);
INSERT INTO person_emeil VALUES (3, 3);
INSERT INTO person_emeil VALUES (4, 4);
INSERT INTO person_emeil VALUES (5,5);
INSERT INTO person_emeil VALUES (6,6);
INSERT INTO person_emeil VALUES (7,7);
INSERT INTO person_emeil VALUES (8,8);
INSERT INTO person_emeil VALUES (9,9);
INSERT INTO person_emeil VALUES (10,10);



CREATE TABLE phone (
 id INT NOT NULL,
 phone_no VARCHAR(15) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);
INSERT INTO phone VALUES (1, '07123345678');
INSERT INTO phone VALUES (2, '0723456789');
INSERT INTO phone VALUES (3, '0734567891');
INSERT INTO phone VALUES (4, '0745678912');
INSERT INTO phone VALUES (5, '0756789012');
INSERT INTO phone VALUES (6, '0767890123');
INSERT INTO phone VALUES (7, '0778901234');
INSERT INTO phone VALUES (8, '0789012345');
INSERT INTO phone VALUES (9, '0790123456');
INSERT INTO phone VALUES (10, '0701234567');



CREATE TABLE RentCharge (
 numberOfRentedInstruments VARCHAR(10),
 price_per_rented_instrument VARCHAR(30)
);


CREATE TABLE rented_instruments (
 instrument_type VARCHAR(30),
 instrument_id VARCHAR(10),
 quantity VARCHAR(10),
 rental_period_start DATE,
 rental_period_end DATE,
 instrument_brand VARCHAR(30),
 student_id INT NOT NULL
);

INSERT INTO rented_instruments VALUES ('guitar','1','2', '20210101', '20210201' ,'yamaha', 1);
INSERT INTO rented_instruments VALUES ('piano','2', '1', '20210201','20210301', 'yamaha', 3);
INSERT INTO rented_instruments VALUES ('saxaphone','4', '1', '20210101','20210201', 'yamaha', 4);
INSERT INTO rented_instruments VALUES ('flute','3', '1', '20210101','20210201', 'yamaha', 4);


CREATE TABLE sound_goodschool (
 name VARCHAR(30) NOT NULL,
 zip VARCHAR(10),
 street VARCHAR(30),
 city VARCHAR(30)
);

ALTER TABLE sound_goodschool;
INSERT INTO sound_goodschool VALUES ('soundGood School','41512', 'Körsbärvägen','Stockholm');




CREATE TABLE student (
 id INT NOT NULL,
 skills_level VARCHAR(15),
 person_id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);
INSERT INTO student VALUES (1, 'intermediate', 1);
INSERT INTO student VALUES (2, 'beginner',2);
INSERT INTO student VALUES (3, 'advanced',3);
INSERT INTO student VALUES (4, 'beginner',4);
INSERT INTO student VALUES (5, 'intermediate',5);
INSERT INTO student VALUES (6, 'beginner',6);
INSERT INTO student VALUES (7, 'intermediate',7);



CREATE TABLE administrative_staff (
 staff_id VARCHAR(10)  UNIQUE NOT NULL,
 first_name VARCHAR(30),
 last_name VARCHAR(30)
);

ALTER TABLE administrative_staff;
INSERT INTO administrative_staff  VALUES ('1450', 'Lale', 'Liamsson');


CREATE TABLE application (
 id INT NOT NULL,
 Instrument VARCHAR(30),
 lesson_type VARCHAR(30),
 student_id INT NOT NULL
);

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (id);
INSERT INTO application  VALUES (1, 'Piano', 'individual',1);
INSERT INTO application  VALUES (2, 'Guitar', 'individual',2);
INSERT INTO application  VALUES (3, 'Saxaphone', 'group',3);
INSERT INTO application  VALUES (4, 'Violin', 'group',4);
INSERT INTO application  VALUES (5, 'Cello', 'ensemble',5);
INSERT INTO application  VALUES (6, 'Trumpet', 'ensemble',6);
INSERT INTO application  VALUES (7, 'Flute', 'ensemble',7);


CREATE TABLE lessons (
 id INT NOT NULL,
 lesson_type VARCHAR(15),
 lesson_level VARCHAR(15),
 instrument VARCHAR(15),
 lesson_date DATE
);

INSERT INTO lessons VALUES (1, 'individual', 'intermidiate', 'Piano', 20210110);
INSERT INTO lessons VALUES (2, 'individual', 'beginner', 'Guitar',20210111);
INSERT INTO lessons VALUES (3,'individual', 'intermediate', 'piano',20210111);
INSERT INTO lessons VALUES (4, 'individual', 'intermediate', 'Piano',20210112);
INSERT INTO lessons VALUES (5, 'individual', 'beginner', 'Guitar',20210112);
INSERT INTO lessons VALUES (6, 'individual', 'beginner', 'Guitar',20210113);
INSERT INTO lessons VALUES (7,'individual', 'beginner', 'Guitar',20210113);
INSERT INTO lessons VALUES (8, 'individual', 'beginner', 'Guitar',20210114);
INSERT INTO lessons VALUES (9, 'individual', 'beginner', 'Guitar',20210115);
INSERT INTO lessons VALUES (10, 'individual', 'intermediate', 'violin',20210110);
INSERT INTO lessons VALUES (11, 'individual', 'intermediate', 'violin',20210111);
INSERT INTO lessons VALUES (12, 'individual', 'intermediate', 'violin',20210112);
INSERT INTO lessons VALUES (13, 'individual', 'intermediate', 'violin',20210113);
INSERT INTO lessons VALUES (14, 'individual', 'beginner', 'violin',20210210);
INSERT INTO lessons VALUES (15, 'individual', 'beginner', 'violin',20210211);
INSERT INTO lessons VALUES (16, 'individual', 'beginner', 'violin',202100212);
INSERT INTO lessons VALUES (17, 'individual', 'beginner', 'violin',20210213);
INSERT INTO lessons VALUES (18, 'individual', 'beginner', 'violin',20210214);
INSERT INTO lessons VALUES (19, 'individual', 'beginner', 'violin',20210215);




CREATE TABLE booking (
 id INT NOT NULL,
 lesson_number VARCHAR(10),
 student_id VARCHAR(10) NOT NULL,
 lesson_type VARCHAR(15),
 lesson_level VARCHAR(15),
 instrument VARCHAR(30),
 lesson_date DATE
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (id);
INSERT INTO booking VALUES (1, '3' , '1', 'individual', 'intermidiate', 'Piano', 20210110);
INSERT INTO booking VALUES (2,'5', '2', 'individual', 'beginner', 'Guitar',20210111);
INSERT INTO booking VALUES (3,'5', '7', 'individual', 'intermediate', 'violin',20210110);
INSERT INTO booking VALUES (4,'5', '6', 'individual', 'beginner', 'violin',20210215);
INSERT INTO booking VALUES (5 ,'course','3', 'group', 'advanced', 'Saxaphone',20210215);
INSERT INTO booking VALUES (6 ,'course','4', 'group', 'beginner', 'Violin',20210215);
INSERT INTO booking VALUES (7,'course', '5', 'ensemble', 'intermediate', 'Violin',20210215);
INSERT INTO booking VALUES (8,'course', '1', 'ensemble', 'intermediate', 'Violin',20210215);
INSERT INTO booking VALUES (9,'course', '2', 'ensemble', 'intermediate', 'Violin',20210215);



CREATE TABLE individual_lesson (
 id INT NOT NULL,
 booking_id INT NOT NULL,
 student_id VARCHAR(10)  NOT NULL,
 instrument VARCHAR(30),
 skills_level VARCHAR(15),
 instrunctor_name VARCHAR(30) NOT NULL,
 lesson_date DATE,
 lesson_time TIME(6),
 instructor_id INT NOT NULL
);



ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (id);
INSERT INTO individual_lesson VALUES (1, 1, '1','Piano' , 'intermediate', 'Ivar', '2021-01-10', '10:30:00',2);
INSERT INTO individual_lesson VALUES (2, 2, '2','Guitar' , 'beginner', 'Johan', '2021-01-11', '10:30:00',3);
INSERT INTO individual_lesson VALUES (3, 1, '1','Piano' , 'intermediate', 'Ivar', '2021-01-11', '10:30:00',2);
INSERT INTO individual_lesson VALUES (4, 1, '1','Piano' , 'intermediate', 'Ivar', '2021-01-12', '10:30:00',2);
INSERT INTO individual_lesson VALUES (5, 2, '2','Guitar' , 'beginner', 'Johan', '2021-01-12', '10:30:00',3);
INSERT INTO individual_lesson VALUES (6, 2, '1','Guitar' , 'beginner', 'Johan', '2021-01-13', '10:30:00',3);
INSERT INTO individual_lesson VALUES (7, 2, '1','Guitar' , 'beginner', 'Johaa', '2021-01-14', '10:30:00',3);
INSERT INTO individual_lesson VALUES (8, 2, '1','Guitar' , 'beginner', 'Johan', '2021-01-15', '10:30:00',3);
INSERT INTO individual_lesson VALUES (9, 8, '7','Violin' , 'intermediate', 'Ivar', '2021-01-10', '12:30:00',2);
INSERT INTO individual_lesson VALUES (10, 8, '7','Violin' , 'intermediate', 'Ivar', '2021-01-11', '12:30:00',2);
INSERT INTO individual_lesson VALUES (11, 8, '7','Violin' , 'intermediate', 'Ivar', '2021-01-12', '12:30:00',2);
INSERT INTO individual_lesson VALUES (12, 8, '7','Violin' , 'intermediate', 'Ivar', '2021-01-13', '12:30:00',2);
INSERT INTO individual_lesson VALUES (13, 9, '6','Violin' , 'beginner', 'Johan', '2021-02-10', '10:30:00',3);
INSERT INTO individual_lesson VALUES (14, 9, '6','Violin' , 'beginner', 'Johan', '2021-02-11', '10:30:00',3);
INSERT INTO individual_lesson VALUES (15, 9, '6','Violin' , 'beginner', 'Johan', '2021-02-12', '10:30:00',3);
INSERT INTO individual_lesson VALUES (16, 9, '6','Violin' , 'beginner', 'Johan', '2021-02-13', '10:30:00',3);
INSERT INTO individual_lesson VALUES (17, 9, '6','Violin' , 'beginner', 'Johan', '2021-02-14', '10:30:00',3);
INSERT INTO individual_lesson VALUES (18, 9, '6','Violin' , 'beginner', 'Johan', '2021-02-15', '10:30:00',3);


CREATE TABLE instructor (
 id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);
INSERT INTO instructor VALUES (1, 8);
INSERT INTO instructor VALUES (2, 9); 
INSERT INTO instructor VALUES (3, 10);


CREATE TABLE instruments_to_rent (
 instrument_type VARCHAR(30),
 instrument_id VARCHAR(10),
 instrument_price VARCHAR(10),
 quantity_in_stock VARCHAR(10),
 instrument_brand VARCHAR(30),
 total_quantity VARCHAR(10),
 rented_quantity VARCHAR(10)
);

INSERT INTO instruments_to_rent VALUES ('guitar','1','500', '10' ,'yamaha','30','20');
INSERT INTO instruments_to_rent VALUES ('piano','2','500', '5' ,'yamaha','30','25');
INSERT INTO instruments_to_rent VALUES ('flute','3','300', '6' ,'yamaha','30','24');
INSERT INTO instruments_to_rent VALUES ('saxaphone','4','300', '1' ,'yamaha','30','29');
INSERT INTO instruments_to_rent VALUES ('harmonica','5','250', '2' ,'yamaha','30','28');
INSERT INTO instruments_to_rent VALUES ('violin','6','600', '8' ,'yamaha','30','22');
INSERT INTO instruments_to_rent VALUES ('cello','7','700', '3' ,'yamaha','30','27');
INSERT INTO instruments_to_rent VALUES ('drums','8','1000', '9' ,'yamaha','30','21');



CREATE TABLE parent (
 id INT NOT NULL,
 student_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE parent ADD CONSTRAINT PK_parent PRIMARY KEY (id);
INSERT INTO parent VALUES (1, 1, 11);
INSERT INTO parent VALUES (2, 2, 11);
INSERT INTO parent VALUES (3, 3, 12);
INSERT INTO parent VALUES (4, 4 ,13);


CREATE TABLE person_telefon_number (
 phone_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_telefon_number ADD CONSTRAINT PK_person_telefon_number PRIMARY KEY (phone_id,person_id);


CREATE TABLE salary (
 number_of_lessons VARCHAR(10),
 lesson_day VARCHAR(15),
 lesson_level VARCHAR(15),
 lesson_type VARCHAR(15),
 instructor_id INT NOT NULL
);

ALTER TABLE salary;
INSERT INTO salary VALUES ('2', 'Monday', 'intermediate', 'individuale', 2 );
INSERT INTO salary VALUES ('4', 'Thursday', 'beginner', 'group', 2 );
INSERT INTO salary VALUES ('2', 'Wednesday', 'advanced', 'group', 2 );
INSERT INTO salary VALUES ('4', 'Tuesday', 'intermediate', 'ensemble', 2 );
INSERT INTO salary VALUES ('3', 'Friday', 'intermediate', 'individuale', 2 );
INSERT INTO salary VALUES ('1', 'Sunday', 'beginner', 'group', 2 );
INSERT INTO salary VALUES ('4', 'Monday', 'intermediate', 'individuale', 3 );
INSERT INTO salary VALUES ('2', 'Thursday', 'beginner', 'group', 3 );
INSERT INTO salary VALUES ('1', 'Wednesday', 'advanced', 'group', 3 );
INSERT INTO salary VALUES ('2', 'Tuesday', 'intermediate', 'ensemble', 3 );
INSERT INTO salary VALUES ('3', 'Friday', 'intermediate', 'individuale', 3 );
INSERT INTO salary VALUES ('4', 'Sunday', 'beginner', 'group', 3 );


CREATE TABLE schedule (
 booking_id INT NOT NULL,
 booked_lessons VARCHAR(15),
 lesson_type VARCHAR(15)
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (booking_id);


CREATE TABLE sibling (
 first_name VARCHAR(30),
 last_name VARCHAR(30),
 student_id INT NOT NULL
);


CREATE TABLE student_fees (
 id INT NOT NULL,
 lesson_level VARCHAR(15),
 Lesson_day VARCHAR(30),
 number_of_lessons VARCHAR(10),
 lessonT_type VARCHAR(15),
 booking_id_0 INT NOT NULL
);

ALTER TABLE student_fees ADD CONSTRAINT PK_student_fees PRIMARY KEY (id);


CREATE TABLE audition (
 id INT NOT NULL,
 student_id  VARCHAR(10) UNIQUE NOT NULL,
 result VARCHAR(10),
 booking_id_0 INT NOT NULL
);

ALTER TABLE audition ADD CONSTRAINT PK_audition PRIMARY KEY (id);


CREATE TABLE ensemble_lesson (
 id INT NOT NULL,
 targetGenre VARCHAR(30),
 min_number_of_students VARCHAR(10),
 max_number_of_students VARCHAR(10),
 student_number VARCHAR(10),
 instructor_id INT NOT NULL,
 lesson_date DATE
 );

ALTER TABLE ensemble_lesson ADD CONSTRAINT PK_ensemble_lesson PRIMARY KEY (id);
INSERT INTO ensemble_lesson VALUES (1, 'rock', '4', '10','5', 2, 20210110);
INSERT INTO ensemble_lesson VALUES (2, 'pop', '4', '10','6', 3, 20210310);
INSERT INTO ensemble_lesson VALUES (3, 'hiphop', '4', '10','7', 2, 20210210);
INSERT INTO ensemble_lesson VALUES (4, 'calssic', '4', '10','8', 3, 20210111);
INSERT INTO ensemble_lesson VALUES (5, 'jazz', '4', '10','9', 2, 20210112);
INSERT INTO ensemble_lesson VALUES (6, 'blues', '4', '10','4', 3, 20210210);


CREATE TABLE group_lesson (
 id INT NOT NULL,
 min_number_of_students VARCHAR(10),
 max_number_of_students VARCHAR(10),
 lesson_level VARCHAR(15),
 instrument VARCHAR(30),
 students_number VARCHAR(10),
 lesson_date DATE,
 instructor_id INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);
INSERT INTO group_lesson VALUES (1, '4', '10', 'beginner','piano', '5', 20210220, 2);
INSERT INTO group_lesson VALUES (2, '4', '10', 'intermediate','violin', '6', 20210221, 3);
INSERT INTO group_lesson VALUES (3, '4', '10', 'advanced','saxaphone', '7', 20210222, 2);
INSERT INTO group_lesson VALUES (4, '4', '10', 'beginner','guitar', '8', 20210223, 3);


CREATE TABLE payment (
 amount VARCHAR(10),
 fees_id INT NOT NULL
);


CREATE TABLE discount (
 siblings_first_name VARCHAR(30),
 sibling_last_name VARCHAR(30),
 student_id  VARCHAR(10) UNIQUE NOT NULL
);


ALTER TABLE person_emeil ADD CONSTRAINT FK_person_emeil_0 FOREIGN KEY (emeil_id) REFERENCES emeil (id);
ALTER TABLE person_emeil ADD CONSTRAINT FK_person_emeil_1 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);




ALTER TABLE application ADD CONSTRAINT FK_application_0 FOREIGN KEY (student_id) REFERENCES student (id);



ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (booking_id) REFERENCES booking (id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);




ALTER TABLE parent ADD CONSTRAINT FK_parent_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE parent ADD CONSTRAINT FK_parent_1 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE person_telefon_number ADD CONSTRAINT FK_person_telefon_number_0 FOREIGN KEY (phone_id) REFERENCES phone (id);
ALTER TABLE person_telefon_number ADD CONSTRAINT FK_person_telefon_number_1 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE salary ADD CONSTRAINT FK_salary_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (booking_id) REFERENCES booking (id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_fees ADD CONSTRAINT FK_student_fees_0 FOREIGN KEY (id) REFERENCES booking (id);
ALTER TABLE student_fees ADD CONSTRAINT FK_student_fees_1 FOREIGN KEY (booking_id_0) REFERENCES booking (id);


ALTER TABLE audition ADD CONSTRAINT FK_audition_0 FOREIGN KEY (booking_id_0) REFERENCES booking (id);


ALTER TABLE ensemble_lesson ADD CONSTRAINT FK_ensemble_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);

ALTER TABLE rented_instruments ADD CONSTRAINT FK_rented_instruments_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE payment ADD CONSTRAINT FK_payment_0 FOREIGN KEY (fees_id) REFERENCES student_fees (id);


