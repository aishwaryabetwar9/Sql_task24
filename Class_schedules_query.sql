CREATE TABLE Class_Schedules (
    schedule_id INT PRIMARY KEY,  
    course_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (course_code) REFERENCES Courses(course_code),
    building_id INT NOT NULL,
    FOREIGN KEY (building_id) REFERENCES Campus_Buildings(building_id),
    
    class_room_number VARCHAR(10) NOT NULL CHECK (class_room_number NOT LIKE '%-1%'),
    day_of_week VARCHAR(10) NOT NULL CHECK (day_of_week IN ('Mon', 'Tue', 'Wed', 'Thu', 'Fri')),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL
);

select * from Class_Schedules;

INSERT INTO Class_Schedules (schedule_id, course_code, building_id, class_room_number, day_of_week, start_time, end_time) VALUES
(1001, 'BB122', 106, 'A205', 'Tue', '14:00:00', '15:15:00'),
(1002, 'VV340', 105, 'ENGR110', 'Mon', '10:00:00', '11:50:00'),
(1003, 'TO204', 186, 'ALPHA3', 'Wed', '08:30:00', '09:45:00'),
(1004, 'HEE365', 101, 'SCILAB B', 'Fri', '11:00:00', '11:50:00'),
(1005, 'PO310', 111, 'BUS201', 'Mon', '15:30:00', '16:45:00'),
(1006, 'ENUL220', 137, 'LLC-C', 'Thu', '09:30:00', '10:45:00'),
(1007, 'PM420', 113, 'LAW305', 'Tue', '17:00:00', '18:15:00'),
(1008, 'CA350', 124, 'HSC-4A', 'Wed', '13:00:00', '14:50:00'),
(1009, 'CK480', 143, 'MUSIK 12', 'Fri', '14:00:00', '15:30:00'),
(1010, 'PL410', 105, 'ENGR221', 'Mon', '11:00:00', '12:15:00'),
(1011, 'CS101', 187, 'BETA 1', 'Thu', '16:00:00', '17:50:00'),
(1012, 'CS205', 123, 'CHEM-A', 'Tue', '08:00:00', '09:15:00'),
(1013, 'PH100', 304, 'PSYB 101', 'Wed', '10:00:00', '10:50:00'),
(1014, 'PH450', 226, 'NURSE C', 'Tue', '11:00:00', '12:50:00'),
(1015, 'ENGL101', 165, 'STUDIO A', 'Mon', '18:30:00', '20:00:00'),
(1016, 'MA215', 206, 'MECH LAB', 'Fri', '09:00:00', '10:50:00'),
(1017, 'CS330', 111, 'CONF R1', 'Thu', '14:00:00', '16:00:00'),
(1018, 'CS450', 141, 'TECH 310', 'Wed', '19:00:00', '20:15:00'),
(1019, 'HIST305', 126, 'EDUC 11', 'Mon', '13:00:00', '14:15:00'),
(1020, 'CS250', 106, 'A101', 'Tue', '10:00:00', '10:50:00'),
(1021, 'HDS203', 153, 'BIO201', 'Mon', '11:00:00', '11:50:00'),
(1022, 'PHM302', 106, 'A302', 'Wed', '12:00:00', '12:50:00'),
(1023, 'POL312', 144, 'GALLERY A', 'Fri', '10:00:00', '11:50:00'),
(1024, 'POM313', 341, 'BME101', 'Thu', '08:00:00', '09:15:00'),
(1025, 'SXX302', 141, 'TECH 205', 'Tue', '13:00:00', '14:50:00'),
(1026, 'ECOA302', 282, 'PHL 120', 'Mon', '09:00:00', '10:15:00'),
(1027, 'LIT301', 304, 'PSYB 205', 'Wed', '17:00:00', '18:15:00'),
(1028, 'LJT302', 172, 'JOURN A', 'Thu', '10:30:00', '11:45:00'),
(1029, 'JAA101', 111, 'BUS Conf C', 'Fri', '13:00:00', '15:50:00'),
(1030, 'JAP102', 204, 'CIVIL LAB', 'Tue', '15:30:00', '16:45:00'),
(1031, 'MUS101', 105, 'ENGR 301', 'Mon', '14:00:00', '15:15:00'),
(1032, 'MHS201', 101, 'SCILAB C', 'Wed', '09:00:00', '10:50:00'),
(1033, 'ARM304', 113, 'LAW 105', 'Thu', '11:00:00', '12:15:00'),
(1034, 'KRT434', 301, 'COMP 101', 'Tue', '16:00:00', '17:50:00'),
(1035, 'BRT499', 165, 'STUDIO B', 'Wed', '14:00:00', '15:30:00'),
(1036, 'ER201', 124, 'HSC-6B', 'Fri', '08:30:00', '10:20:00'),
(1037, 'COK101', 114, 'GYM 1', 'Mon', '10:30:00', '12:00:00'),
(1038, 'TYM201', 106, 'A215', 'Tue', '11:00:00', '12:15:00'),
(1039, 'ERUR201', 221, 'DATA 10', 'Thu', '14:00:00', '15:15:00'),
(1040, 'BUS402', 205, 'EELAB A', 'Mon', '16:30:00', '17:45:00');

SELECT * FROM Class_Schedules;

SELECT * FROM Class_Schedules WHERE day_of_week = 'Mon';

SELECT schedule_id, course_code FROM Class_Schedules WHERE start_time = '10:00:00'

SELECT course_code, day_of_week FROM Class_Schedules WHERE day_of_week IN ('Tue', 'Thu');

SELECT * FROM Class_Schedules WHERE building_id = 101;

SELECT * FROM Class_Schedules ORDER BY start_time ASC;

SELECT * FROM Class_Schedules ORDER BY day_of_week, start_time;

SELECT schedule_id FROM Class_Schedules WHERE schedule_id BETWEEN 1050 AND 1100;

SELECT COUNT(*) AS TotalClasses FROM Class_Schedules;

SELECT C.course_title, CS.day_of_week, CS.start_time FROM Class_Schedules CS INNER JOIN Courses C ON CS.course_code = C.course_code;

SELECT C.course_title, CS.day_of_week FROM Courses C LEFT JOIN Class_Schedules CS ON C.course_code = CS.course_code;

SELECT C.course_title, CS.day_of_week FROM Class_Schedules CS RIGHT JOIN Courses C ON CS.course_code = C.course_code;