create database DatabaseProject;
use DatabaseProject;

create table Faculties(
facultyID int primary key auto_increment,
facultyName varchar(80)
);


create table Departments(
departmentID int primary key auto_increment,
departmentName varchar(100),
facultyID int,
foreign key (facultyID) references Faculties(facultyID)
);


create table Students (
studentID int primary key auto_increment,
name varchar(20) not null,
surname varchar(20) not null,
identificationNumber varchar(15),
dateOfBirth date,
email varchar(50),
gender enum('M','F'),
address varchar(100),
phone varchar(20),
departmentID int,
foreign key (departmentID) references Departments(departmentID)
);


create table Teachers(
teacherID int primary key auto_increment,
name varchar(20) not null,
surname varchar(20) not null,
identificationNumber varchar(15),
dateOfBirth date,
email varchar(30) not null,
gender enum('m','f'),
phoneNumber varchar(15),
address varchar(100),
departmentID int,
foreign key (departmentID) references Departments(departmentID)
);



create table Courses(
CourseID int primary key auto_increment,
CourseCode char(6),
CourseName varchar(65),
CourseCredit int,
CourseECTS int,
CourseType enum ('Compulsory', 'Elective'),
CourseLanguage enum('English', 'Turkish'),
departmentID int,
Foreign key (departmentID) references Departments(departmentID),
teacherID int,
Foreign key (teacherID) references Teachers(teacherID)
);



create table Enrollments(
EnrollmentID int primary key auto_increment,
studentID int,
Foreign key (studentID) references Students(studentID),
CourseID int,
foreign key (CourseID) references Courses(CourseID),
midtermGrade int,
finalGrade int,
totalGrade int default (midtermGrade*0.40+finalGrade*0.60)
);




create table announcments(
announcmentID int primary key auto_increment,
TeacherID int,
foreign key (TeacherID) references Teachers(TeacherID),
studentID int,
Foreign key (studentID) references Students(studentID),
info varchar(200)
);

insert into Faculties (facultyName) values ('Faculty of Applied Sciences');
insert into Faculties (facultyName) values ('Faculty of Dentisty');
insert into Faculties (facultyName) values ('Faculty of Economics Administrative and Social Sciences');
insert into Faculties (facultyName) values ('Faculty of Engineering and Architecture');
insert into Faculties (facultyName) values ('Faculty of Fine Arts and Desing');
insert into Faculties (facultyName) values ('Faculty of Law');
insert into Faculties (facultyName) values ('Faculty of Medicine');
insert into Faculties (facultyName) values ('Faculty of Pharmacy');
insert into Faculties (facultyName) values ('School of Business Administration');
insert into Faculties (facultyName) values ('University Elective Courses');
insert into Faculties (facultyName) values ('Vocational School');
insert into Faculties (facultyName) values ('Vocational School of Health Services');
insert into Faculties (facultyName) values ('Institute of Graduate Studies');
insert into Faculties (facultyName) values ('Faculty of Classics');
insert into Faculties (facultyName) values ('Faculty of Education');
insert into Faculties (facultyName) values ('Faculty of Cultural Studies');
insert into Faculties (facultyName) values ('Faculty of Science and Mathematics');
insert into Faculties (facultyName) values ('Faculty of Chemistry');
insert into Faculties (facultyName) values ('Faculty of English');
insert into Faculties (facultyName) values ('Faculty of Zoology');



insert into Departments (departmentName, facultyID) values ('Gastronomy and Cultural Arts', 1);
insert into Departments (departmentName, facultyID) values ('Managment Information Systems', 1);
insert into Departments (departmentName, facultyID) values ('Helthcare Managment', 1);
insert into Departments (departmentName, facultyID) values ('Digital Game Design', 1);
insert into Departments (departmentName, facultyID) values ('Dentisrty', 2);
insert into Departments (departmentName, facultyID) values ('International Relations', 3);
insert into Departments (departmentName, facultyID) values ('Economics', 3);
insert into Departments (departmentName, facultyID) values ('Psychology', 3);
insert into Departments (departmentName, facultyID) values ('Industrial Engineering', 4);
insert into Departments (departmentName, facultyID) values ('Computer Engineering', 4);
insert into Departments (departmentName, facultyID) values ('Electric Electronics Engineering', 4);
insert into Departments (departmentName, facultyID) values ('Arthitecture', 4);
insert into Departments (departmentName, facultyID) values ('Software Engineering', 4);
insert into Departments (departmentName, facultyID) values ('Graphic Desing', 5);
insert into Departments (departmentName, facultyID) values ('Jewelry Design', 5);
insert into Departments (departmentName, facultyID) values ('Law' , 6);
insert into Departments (departmentName, facultyID) values ('Medicine', 7);
insert into Departments (departmentName, facultyID) values ('Pharmacy', 8);
insert into Departments (departmentName, facultyID) values ('Business Administration', 9);
insert into Departments (departmentName, facultyID) values ('Justice', 11);
insert into Departments (departmentName, facultyID) values ('Computer Programming', 11);
insert into Departments (departmentName, facultyID) values ('Oral and DEntal Health', 12);
insert into Departments (departmentName, facultyID) values ('Electrical and Computer Engineering', 13);
insert into Departments (departmentName, facultyID) values ('Data Analytics', 13);
insert into Departments (departmentName, facultyID) values ('Department of Private Law', 14);
insert into Departments (departmentName, facultyID) values ('Department of Public Law', 15);
insert into Departments (departmentName, facultyID) values ('Orthontics', 16);
insert into Departments (departmentName, facultyID) values ('Periodontology', 17);
insert into Departments (departmentName, facultyID) values ('Legal', 18);
insert into Departments (departmentName, facultyID) values ('Accounting', 19);
insert into Departments (departmentName, facultyID) values ('Sales', 20);



insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Boniface', 'Dimitriev', '67387537000', '1995-04-24', 'bdimitriev0@ucoz.ru', 'M', '20th Floor', '547-429-1295', 20);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Christoforo', 'Taunton', '80660930760', '1988-02-10', 'ctaunton1@hugedomains.com', 'M', 'Suite 85', '999-398-8872', 4);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Symon', 'Synnot', '42096391275', '1991-03-21', 'ssynnot2@tuttocitta.it', 'M', 'PO Box 61242', '819-991-2217', 7);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Alan', 'Dewhirst', '23623152492', '1995-10-06', 'adewhirst3@phoca.cz', 'M', '10th Floor', '411-564-3288', 17);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Aron', 'Macieja', '35897621067', '1997-08-25', 'amacieja4@blogtalkradio.com', 'M', 'Apt 1373', '557-417-5878', 19);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Gerhardt', 'Redding', '78793908447', '1998-08-15', 'gredding5@earthlink.net', 'M', 'Suite 9', '443-714-7346', 11);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Reeva', 'Megarrell', '13016148854', '1997-12-01', 'rmegarrell6@bloomberg.com', 'F', 'PO Box 82859', '953-623-8367', 16);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Ciel', 'Culverhouse', '82179535138', '1993-03-15', 'cculverhouse7@wired.com', 'F', 'Apt 364', '669-471-4575', 3);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Myriam', 'Darmody', '20296751101', '1993-01-17', 'mdarmody8@thetimes.co.uk', 'F', 'Apt 1038', '467-837-9271', 1);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Stormi', 'Cours', '34820864804', '2002-03-27', 'scours9@cnet.com', 'F', 'Suite 19', '853-201-4859', 8);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Jessamyn', 'Eyckel', '26667665396', '1995-06-13', 'jeyckela@amazonaws.com', 'F', '12th Floor', '459-893-9760',15);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Nataline', 'De Lascy', '34853958221', '1987-07-12', 'ndelascyb@unblog.fr', 'F', 'Room 1726', '446-370-6495', 2);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Kathy', 'Menel', '17471507683', '1989-01-08', 'kmenelc@oracle.com', 'F', '3rd Floor', '693-157-8520', 17);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Madelina', 'Lowder', '84537244822', '1990-05-12', 'mlowderd@dot.gov', 'F', 'Room 836', '126-405-6843', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Merry', 'Drance', '97327249252', '2003-01-08', 'mdrancee@bigcartel.com', 'F', 'PO Box 18309', '214-895-1180', 12);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Emogene', 'Bourgeois', '39327370478', '1996-06-25', 'ebourgeoisf@virginia.edu', 'F', 'PO Box 30818', '538-722-5503', 9);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Brena', 'Fane', '25975355841', '1994-06-15', 'bfaneg@wikia.com', 'F', '13th Floor', '317-615-8362', 6);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Christoper', 'Caustic', '35656738630', '1987-05-12', 'ccaustich@businesswire.com', 'M', '1st Floor', '558-393-1535', 3);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Vivianne', 'Browncey', '17885432365', '1991-10-06', 'vbrownceyi@joomla.org', 'F', 'Room 409', '494-911-1474',13);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Bryn', 'Dunbleton', '27657727044', '1993-03-14', 'bdunbletonj@microsoft.com', 'M', '18th Floor', '749-717-6834', 5);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Brynna', 'Pickworth', '94984633897', '2004-07-16', 'bpickworth0@ustream.tv', 'F', 'PO Box 53739', '920-350-2950', 30);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Lyman', 'Cargon', '95248950035', '2003-12-03', 'lcargon1@1und1.de', 'M', 'Suite 50', '780-312-8324', 30);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Drucill', 'Ropartz', '05317234848', '1992-11-22', 'dropartz2@elegantthemes.com', 'M', 'Suite 51', '546-498-8082', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Agata', 'Espinoy', '25908510044', '1999-06-17', 'aespinoy3@creativecommons.org', 'F', 'Apt 500', '615-852-9702', 5);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Lucho', 'Marklew', '88717966613', '2006-04-02', 'lmarklew4@webmd.com', 'M', 'Apt 1542', '253-536-9999', 10);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Cullie', 'McAvinchey', '72755914441', '2008-01-06', 'cmcavinchey5@wiley.com', 'M', 'Room 307', '214-205-7713', 24);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Putnam', 'Gater', '48392389145', '1996-09-21', 'pgater6@army.mil', 'F', 'Suite 27', '205-828-8486', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Stacee', 'Derisly', '75638230232', '2018-08-20', 'sderisly7@cafepress.com', 'M', 'PO Box 57380', '426-642-6931', 22);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Rosemary', 'Couche', '56079500082', '1991-07-11', 'rcouche8@walmart.com', 'M', 'PO Box 78907', '435-313-1502', 23);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Kameko', 'Weildish', '87260620083', '2011-05-10', 'kweildish9@state.gov', 'M', 'Apt 1576', '326-411-7315', 19);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Tori', 'Jeanequin', '78690318143', '1996-01-04', 'tjeanequina@domainmarket.com', 'F', 'Room 1016', '309-681-3713', 18);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Rani', 'Daniells', '05209893512', '1993-10-27', 'rdaniellsb@ocn.ne.jp', 'M', 'Suite 89', '990-142-7112', 19);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Nita', 'McGilroy', '69019067677', '2001-01-10', 'nmcgilroyc@multiply.com', 'M', 'Apt 519', '626-856-2787', 10);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Lennard', 'Dobbing', '63272439404', '1989-02-14', 'ldobbingd@intel.com', 'F', 'PO Box 55186', '858-606-5654', 19);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Tab', 'Muirhead', '20766545692', '2000-04-28', 'tmuirheade@tmall.com', 'F', '13th Floor', '198-287-1104', 4);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Marlow', 'Lorinez', '60056032840', '2016-04-28', 'mlorinezf@google.es', 'M', '18th Floor', '526-262-7650', 16);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Larisa', 'Bordiss', '28239922501', '2021-12-27', 'lbordissg@1688.com', 'M', 'Suite 38', '776-406-7066', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Erna', 'Tapsfield', '07758631010', '2015-08-12', 'etapsfieldh@sbwire.com', 'M', 'Suite 33', '220-129-1166', 8);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Carmella', 'Grgic', '12820501146', '1989-06-12', 'cgrgici@amazon.de', 'M', '16th Floor', '304-994-0077', 1);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Sandor', 'Gumey', '23752448506', '1987-09-13', 'sgumeyj@chron.com', 'F', 'Apt 1744', '111-413-4259', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Rowen', 'Vines', '77925912150', '1990-07-12', 'rvinesk@instagram.com', 'M', 'Suite 64', '942-502-2816', 27);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Emlynn', 'Duggan', '02771283549', '1987-08-09', 'edugganl@domainmarket.com', 'F', '8th Floor', '279-414-8845', 16);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Jana', 'Davidescu', '71386548261', '1997-02-16', 'jdavidescum@ifeng.com', 'F', 'Room 1939', '711-311-0542', 13);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Carolyn', 'Revitt', '94668291459', '2007-02-16', 'crevittn@issuu.com', 'F', 'Suite 46', '686-797-4660', 29);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Glori', 'Wickett', '38933944199', '2007-11-24', 'gwicketto@instagram.com', 'F', '1st Floor', '956-978-4842', 15);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Nickie', 'Duetschens', '27057082174', '1997-03-11', 'nduetschensp@deviantart.com', 'M', '14th Floor', '140-391-6851', 30);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Loni', 'Dobby', '72850892485', '2019-01-01', 'ldobbyq@unc.edu', 'F', 'Apt 1075', '321-882-2069', 3);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Bar', 'Reubbens', '34950071897', '1997-01-07', 'breubbensr@wufoo.com', 'M', '4th Floor', '430-268-8178', 24);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Batsheva', 'Kelemen', '14443348763', '1997-12-22', 'bkelemens@moonfruit.com', 'M', 'PO Box 43089', '847-556-4991', 9);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Ario', 'Kirsch', '00822408691', '2016-06-14', 'akirscht@ed.gov', 'F', 'PO Box 13154', '151-209-9383', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Lorianna', 'Shelliday', '83288878595', '1998-04-11', 'lshellidayu@yelp.com', 'F', 'Apt 402', '880-411-1255', 13);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Shayne', 'Forcer', '28417646723', '1998-01-23', 'sforcerv@pbs.org', 'M', 'Suite 87', '362-995-1174', 21);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Deonne', 'Peacock', '51387204035', '2011-08-01', 'dpeacockw@dagondesign.com', 'F', 'Suite 70', '220-586-6475', 9);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Phillis', 'Penvarden', '58527711712', '1998-02-15', 'ppenvardenx@photobucket.com', 'F', 'PO Box 48487', '640-696-3983', 4);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Celia', 'Sagrott', '75978549647', '1997-11-03', 'csagrotty@baidu.com', 'F', 'Apt 1329', '718-216-1448', 10);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Alaine', 'Regnard', '58608330007', '1992-09-14', 'aregnardz@acquirethisname.com', 'F', 'PO Box 22827', '724-621-6985', 14);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Vevay', 'Banbrick', '27590091134', '2017-09-20', 'vbanbrick10@indiatimes.com', 'M', 'Apt 1694', '598-709-8369', 30);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Hinze', 'Wootton', '82933142795', '2013-05-15', 'hwootton11@zimbio.com', 'F', 'Room 13', '822-868-5902', 7);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Zuzana', 'Naldrett', '27420294754', '2006-06-05', 'znaldrett12@sciencedirect.com', 'F', 'PO Box 1112', '250-312-7313', 23);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Cam', 'Forsyth', '81057444426', '2000-01-04', 'cforsyth13@scribd.com', 'F', 'Suite 60', '238-712-5642', 30);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Jemie', 'Gotcliff', '81054075712', '2019-12-03', 'jgotcliff14@google.de', 'M', '18th Floor', '377-265-8125', 28);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Traver', 'Peake', '82945946567', '2010-09-19', 'tpeake15@histats.com', 'M', 'Apt 1756', '283-548-4901', 23);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Riordan', 'Thorby', '50838872175', '2005-10-18', 'rthorby16@geocities.com', 'F', 'PO Box 93243', '484-632-0061', 11);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Emilee', 'Sykes', '34064148232', '2015-08-03', 'esykes17@answers.com', 'F', '3rd Floor', '556-982-6019', 8);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Ancell', 'Ertelt', '64003230839', '1987-09-27', 'aertelt18@aol.com', 'F', 'Apt 272', '775-451-8543', 18);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Alard', 'Greedyer', '94020306314', '2007-02-14', 'agreedyer19@va.gov', 'F', '7th Floor', '811-253-4768', 12);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Nevins', 'Grutchfield', '30262668349', '2009-08-22', 'ngrutchfield1a@pcworld.com', 'M', 'Room 1720', '837-334-8312', 12);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Bentley', 'Eilhertsen', '44175985727', '1990-12-02', 'beilhertsen1b@multiply.com', 'M', 'Apt 906', '418-809-5447', 19);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Lyndel', 'Pamplin', '94875237202', '2020-07-19', 'lpamplin1c@blinklist.com', 'M', 'PO Box 52264', '957-904-3451', 29);
insert into Students (name, surname, identificationNumber, dateOfBirth, email, gender, address, phone, departmentID) values ('Judon', 'Nafzger', '75136659599', '1994-07-25', 'jnafzger1d@prweb.com', 'F', 'Suite 22', '509-195-6229', 19);



insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Franklyn', 'Meehan', '10616320162', '2001-07-28', 'fmeehan0@tinyurl.com', 'M', '812-884-4309', '5th Floor',1);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Jarib', 'Krol', '03984264294', '1996-05-09', 'jkrol1@dyndns.org', 'M', '281-600-1439', 'Room 1986',2);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Archie', 'Dimbleby', '75273864402', '1988-04-18', 'adimbleby2@yolasite.com', 'M', '932-873-4799', 'Suite 22',3);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Dredi', 'Bowhay', '98181030305', '1997-07-25', 'dbowhay3@china.com.cn', 'F', '422-891-5161', 'Apt 1135',4);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Fitz', 'Algar', '95965723589', '2002-02-21', 'falgar4@about.me', 'M', '616-674-3821', 'Room 791',5);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Terrill', 'Volke', '94239831238', '1999-08-10', 'tvolke5@acquirethisname.com', 'M', '677-824-4836', '12th Floor',6);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Adolphe', 'Gyorgy', '32158859263', '1991-05-21', 'agyorgy6@wikimedia.org', 'M', '540-645-7950', 'Apt 1172',7);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Arlan', 'Hollingdale', '84464209977', '2000-03-22', 'ahollingdale7@barnesand.com', 'M', '387-258-5931', 'PO Box 4281',8);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Katuscha', 'Othen', '93295652486', '1995-12-14', 'kothen8@columbia.edu', 'F', '198-632-5034', 'PO Box 17005',9);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Ricki', 'Melloi', '80937178662', '1997-08-27', 'rmelloi9@msn.com', 'M', '737-869-2046', 'Suite 4',11);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Rriocard', 'Leffek', '68073395154', '1990-02-12', 'rleffeka@edublogs.org', 'M', '992-447-6496', 'Suite 44',12);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Essa', 'Rangle', '37902613718', '1998-03-11', 'erangleb@psu.edu', 'F', '647-710-7983', 'Room 1358',13);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Roth', 'Pavese', '64491014937', '1987-06-19', 'rpavesec@bizjournals.com', 'M', '635-208-4946', 'Suite 43',14);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Fannie', 'Simmons', '71370033878', '1988-05-13', 'fsimmonsd@a8.net', 'F', '750-607-2182', 'PO Box 10752',15);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Shel', 'Ruggen', '62305926389', '1995-12-20', 'sruggene@soundcloud.com', 'F', '410-555-1711', 'PO Box 29985',16);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Jeannette', 'Forestel', '60020428345', '1995-12-07', 'jforestelf@twitter.com', 'F', '858-855-9702', 'Room 1634',17);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Nicki', 'Suermeiers', '65560612738', '1988-09-01', 'nsuermeiersg@booking.com', 'F', '717-891-7435', 'Room 1013',18);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Elene', 'Yushkin', '85401358741', '1990-02-01', 'eyushkinh@ftc.gov', 'F', '387-806-1554', 'Room 1224',19);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Manon', 'Heigl', '86884860219', '2001-07-04', 'mheigli@shutterfly.com', 'F', '849-582-0658', '6th Floor',20);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phoneNumber, address, departmentID) values ('Bartlett', 'Royden', '17791628083', '1987-08-10', 'broydenj@craigslist.org', 'M', '184-694-7838', '7th Floor',21);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Gaspard', 'Ornelas', '98712652754', '1990-11-19', 'gornelas0@stumbleupon.com', 'm', '863-806-7260', 'Apt 1657', 22);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Humbert', 'Keysel', '32507472686', '1994-01-17', 'hkeysel1@slashdot.org', 'f', '200-918-8348', 'Suite 39', 23);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Nara', 'Marrett', '73249224343', '2015-02-26', 'nmarrett2@ucoz.ru', 'f', '323-992-0013', 'Suite 81', 24);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Ardyth', 'Jee', '49717976048', '1998-01-29', 'ajee3@nsw.gov.au', 'm', '430-131-4994', 'Room 1210', 25);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Margie', 'Abotson', '00946529538', '2005-03-03', 'mabotson4@mlb.com', 'm', '242-411-9463', 'PO Box 81086', 26);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Harlen', 'Stobo', '43753487105', '1998-12-31', 'hstobo5@twitpic.com', 'f', '202-828-0860', '5th Floor', 27);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Holt', 'Chesser', '33838486485', '1994-06-20', 'hchesser6@nyu.edu', 'm', '585-155-3413', 'PO Box 91413', 28);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Josephine', 'Skerme', '13165265079', '1995-04-25', 'jskerme7@theglobeandmail.com', 'f', '705-258-3884', 'Apt 48', 29);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Ringo', 'Hatcliffe', '11556723172', '2005-06-02', 'rhatcliffe8@dropbox.com', 'f', '538-260-7754', 'Apt 1748', 30);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Brendis', 'Croux', '49425630278', '2010-03-10', 'bcroux9@ucoz.com', 'm', '708-261-0555', 'Apt 629', 31);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Johanna', 'Frarey', '01765063921', '2004-02-11', 'jfrarey0@va.gov', 'm', '828-118-5847', 'PO Box 78466', 1);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Jock', 'Heelis', '41292493107', '2006-09-19', 'jheelis1@yahoo.co.jp', 'f', '505-611-5840', 'Suite 38', 2);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Dexter', 'Stothard', '50157892012', '2005-04-04', 'dstothard2@vinaora.com', 'm', '989-929-3305', 'PO Box 31847', 3);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Lisha', 'Gamwell', '92539248587', '1996-03-22', 'lgamwell3@theglobeandmail.com', 'f', '951-634-5384', 'Suite 97', 4);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Sophey', 'Krook', '61094308778', '2018-06-18', 'skrook4@ask.com', 'm', '141-309-6634', 'Suite 84', 5);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Jeremiah', 'Beardow', '66929124052', '1990-07-15', 'jbeardow5@aol.com', 'm', '391-511-3118', '11th Floor', 6);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Lian', 'Borne', '45554245892', '1990-03-12', 'lborne6@vinaora.com', 'f', '169-664-2936', 'PO Box 89804', 7);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Jocelin', 'Colston', '59540329982', '2006-11-06', 'jcolston7@timesonline.co.uk', 'f', '722-393-8079', 'Suite 6', 8);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Clerissa', 'Jonsson', '99924310973', '1996-01-18', 'cjonsson8@instagram.com', 'f', '823-365-4946', 'Apt 957', 9);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Krissy', 'Snufflebottom', '46085909624', '1993-08-09', 'kbottom9@liveinternet.ru', 'f', '804-132-7380', '15th Floor', 10);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Murray', 'Reinmar', '54028168660', '2007-10-02', 'mreinmara@cornell.edu', 'f', '287-738-1166', 'Apt 1599', 11);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Shelli', 'Diego', '63074573201', '2011-02-05', 'sdiegob@xinhuanet.com', 'f', '563-892-3744', 'PO Box 25161', 12);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Grove', 'Oret', '72982527769', '2007-07-24', 'goretc@github.io', 'f', '931-646-6691', 'Room 1555', 13);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Cort', 'Filyakov', '10219655917', '1999-01-07', 'cfilyakovd@about.com', 'f', '583-543-9063', '13th Floor', 14);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Gregorio', 'Staines', '83457910624', '2006-12-08', 'gstainese@newsvine.com', 'f', '712-353-7904', 'Apt 1784', 15);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Verena', 'Sabatini', '29433796778', '1995-09-01', 'vsabatinif@archive.org', 'm', '556-121-7109', '17th Floor', 16);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Barron', 'Cothey', '84227994466', '2016-08-09', 'bcotheyg@prlog.org', 'f', '527-412-9392', '1st Floor', 17);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Dulcia', 'Leser', '83254800448', '2016-09-06', 'dleserh@xinhuanet.com', 'f', '179-601-6067', 'Suite 53', 18);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Joelynn', 'Crudge', '88379722497', '1997-11-20', 'jcrudgei@chronoengine.com', 'm', '841-967-3321', 'Suite 59', 19);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Leland', 'Konzel', '64029188770', '2017-12-04', 'lkonzelj@businesswire.com', 'm', '650-460-9076', 'Room 1156', 20);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Bradford', 'Syres', '55558736394', '1992-02-18', 'bsyresk@photobucket.com', 'm', '554-903-3760', 'Room 1366', 21);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Filippo', 'Selwyne', '48923617132', '1993-05-02', 'fselwynel@networksolutions.com', 'f', '175-959-0846', '19th Floor', 22);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Anna-maria', 'Bausmann', '11277089234', '1992-04-11', 'abausmannm@symantec.com', 'm', '814-636-5451', 'Room 788', 23);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Nicoli', 'Boaler', '77397619367', '2003-03-28', 'nboalern@ibm.com', 'm', '626-549-8139', '7th Floor', 24);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Travus', 'Alty', '88686227544', '1998-03-03', 'taltyo@chronoengine.com', 'm', '171-949-3998', 'Suite 87', 25);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Ernestine', 'Yannoni', '85129962594', '2018-11-24', 'eyannonip@xinhuanet.com', 'm', '193-624-4251', 'Room 623', 26);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Vic', 'Hagwood', '08240463186', '1994-11-30', 'vhagwoodq@com.com', 'f', '802-499-5451', '16th Floor', 27);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Everett', 'Roughey', '17369239846', '2022-02-07', 'erougheyr@omniture.com', 'm', '946-828-4138', '17th Floor', 28);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Gwennie', 'Falshaw', '65251888492', '2016-08-31', 'gfalshaws@simplemachines.org', 'm', '342-665-0135', '8th Floor', 29);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Etta', 'Bernette', '92436029237', '2004-07-19', 'ebernettet@economist.com', 'f', '947-234-0762', 'Apt 770', 30);
insert into Teachers (name, surname, identificationNumber, dateOfBirth, email, gender, phonenumber, address, departmentID) values ('Delbert', 'Le febre', '92536520216', '1987-10-28', 'dlefebreu@about.com', 'f', '486-304-6378', 'Apt 351', 31);


insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('TSL100', 'Turkish as a Second Language', 6, 3, 'Compulsory', 'Turkish', 28, 11);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ENG111', 'English I', 4, 3, 'Compulsory', 'English', 30, 56);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('HUK195', 'Basic Principles of Law', 6, 1, 'Compulsory', 'Turkish', 12, 32);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SAY103', 'Medical Terminology', 1, 6, 'Compulsory', 'English', 31, 47);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ENG101', 'Communication Skills and Academic Report Writing I', 7, 7, 'Compulsory', 'Turkish', 7, 54);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('IES100', 'Introduction to Engineering Sciences', 5, 3, 'Elective', 'Turkish', 29, 1);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('MAT151', 'Calculus I', 4, 2, 'Elective', 'Turkish', 16, 34);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('PHY101', 'Physics I', 4, 5, 'Elective', 'Turkish', 16, 49);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE101', 'Computer Programming I', 1, 5, 'Elective', 'English', 26, 50);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE111', 'Introduction to Software Engineering', 4, 2, 'Elective', 'English', 8, 15);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ENG102', 'Communication Skills and Academic Reporting Writing II', 2, 2, 'Elective', 'Turkish', 23, 43);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ESP102', 'Social Responsibility Project and Career Planning', 5, 3, 'Compulsory', 'Turkish', 16, 35);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('MAT152', 'Calculus II', 2, 3, 'Compulsory', 'English', 1, 50);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('PHY102', 'Physics II', 1, 5, 'Elective', 'English', 8, 58);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE102', 'Computer Programming II', 6, 3, 'Compulsory', 'Turkish', 26, 42);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE104', 'Data Structure and Algorithms', 3, 6, 'Elective', 'English', 7, 14);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('HIS101', 'History of Turkish Republic I', 5, 6, 'Compulsory', 'English', 2, 52);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('MAT240', 'Linear Algebra', 1, 1, 'Compulsory', 'Turkish', 9, 34);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('MAT317', 'Numerical Analysis', 5, 7, 'Elective', 'Turkish', 2, 29);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE201', 'Object Oriented Programming', 1, 6, 'Elective', 'English', 24, 15);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE207', 'Discrete Mathematics	', 4, 4, 'Elective', 'Turkish', 5, 53);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE227', 'Database Systems Design I', 5, 3, 'Elective', 'English', 24, 57);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('HIS102', '	History of Turkish Republic II', 4, 3, 'Elective', 'Turkish', 22, 36);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('MAT220', 'Probability and Statistics', 6, 2, 'Compulsory', 'Turkish', 24, 23);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('MAT260', 'Differential Equations', 1, 1, 'Compulsory', 'Turkish', 7, 12);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE212', 'Software Requirements Engineering', 1, 1, 'Compulsory', 'Turkish', 3, 44);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE228', 'Database Systems Design II', 2, 5, 'Compulsory', 'English', 8, 27);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE229', 'Software Engineering Practice I', 7, 2, 'Compulsory', 'Turkish', 2, 59);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('IE371', 'Engineering Economics and Finance', 1, 3, 'Compulsory', 'Turkish', 25, 48);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE331', 'Software Construction', 6, 2, 'Elective', 'English', 2, 61);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE341', 'Introduction to Artifical Intelligence', 6, 3, 'Compulsory', 'English', 2, 61);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('TUR101', 'Turkish for Foreigners I	', 5, 6, 'Compulsory', 'Turkish', 26, 59);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('TUR103', 'Turkish Language and Turkish Communication Skills I', 3, 1, 'Elective', 'English', 30, 48);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('PET100', 'Professional Ethics', 4, 5, 'Elective', 'Turkish', 16, 23);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE326', 'Computer Networks', 5, 3, 'Elective', 'Turkish', 1, 34);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE332', 'Software Architecture', 1, 1, 'Compulsory', 'Turkish', 9, 10);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('TUR102', 'Turkish for Foreigners II', 3, 4, 'Compulsory', 'Turkish', 7, 44);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('TUR104', 'Turkish Language and Turkish Communication Skills II', 5, 6, 'Compulsory', 'English', 23, 46);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ENL418', 'Business Law in Engineering', 6, 7, 'Elective', 'Turkish', 14, 8);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ISG401', 'Occupational Health and Safety I', 2, 7, 'Compulsory', 'English', 15, 60);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE431', 'Software Testing And Validation', 6, 1, 'Elective', 'English', 25, 28);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE491', 'Software Engineering Graduation Project I', 1, 5, 'Elective', 'Turkish', 26, 54);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ERM416', 'Entrepreneurship and Risk Management	', 2, 1, 'Elective', 'English', 11, 55);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('ISG402', 'Occupational Health and Safety II', 4, 6, 'Compulsory', 'English', 17, 50);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE402', 'Internet Programming	', 5, 5, 'Elective', 'English', 5, 58);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE449', 'Parallel Programming	', 6, 4, 'Elective', 'Turkish', 18, 45);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('SWE492', 'Software Engineering Graduation Project II', 7, 4, 'Compulsory', 'Turkish', 6, 6);
insert into Courses (CourseCode, coursename, CourseCredit, CourseECTS, CourseType, CourseLanguage, departmentID, teacherID) values ('�SD103', 'Folk dances', 4, 2, 'Elective', 'English', 4, 51);



insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (16, 45, 35, 99);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (46, 45, 2, 78);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (25, 32, 74, 65);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (44, 24, 70, 46);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (34, 48, 57, 7);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (58, 28, 97, 86);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (60, 20, 36, 8);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (14, 44, 5, 30);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (60, 6, 64, 67);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (37, 41, 32, 97);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (46, 23, 49, 85);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (25, 30, 5, 26);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (30, 13, 5, 72);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (30, 40, 7, 32);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (29, 1, 99, 20);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (49, 34, 46, 46);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (68, 6, 70, 60);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (7, 4, 41, 59);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (27, 1, 53, 34);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (54, 8, 59, 11);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (65, 23, 6, 19);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (55, 34, 34, 62);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (56, 4, 52, 52);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (27, 37, 83, 7);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (67, 35, 37, 35);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (37, 32, 63, 31);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (28, 44, 73, 85);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (40, 26, 87, 5);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (44, 27, 82, 44);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (4, 36, 44, 95);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (21, 36, 14, 93);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (27, 3, 89, 58);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (21, 2, 64, 49);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (63, 9, 94, 30);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (44, 23, 74, 21);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (70, 15, 91, 9);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (41, 36, 86, 81);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (17, 45, 49, 73);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (24, 29, 35, 33);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (50, 24, 37, 9);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (7, 16, 29, 60);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (10, 14, 79, 53);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (1, 28, 52, 70);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (53, 7, 99, 3);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (4, 11, 74, 45);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (14, 14, 10, 46);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (45, 37, 97, 12);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (28, 44, 88, 47);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (14, 43, 91, 67);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (16, 5, 6, 87);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (5, 16, 47, 23);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (35, 39, 9, 48);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (50, 6, 23, 45);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (54, 18, 77, 16);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (34, 20, 31, 85);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (17, 11, 31, 66);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (44, 6, 76, 87);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (43, 1, 8, 44);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (40, 47, 13, 66);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (33, 1, 89, 22);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (12, 28, 10, 2);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (25, 21, 92, 55);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (44, 31, 5, 50);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (4, 19, 39, 3);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (27, 10, 81, 31);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (64, 8, 39, 7);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (66, 5, 83, 23);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (39, 5, 52, 50);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (68, 34, 44, 46);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (54, 26, 37, 72);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (20, 23, 11, 1);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (11, 40, 13, 1);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (41, 3, 95, 90);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (35, 35, 20, 42);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (26, 15, 81, 84);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (64, 31, 42, 98);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (14, 32, 62, 56);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (27, 30, 47, 28);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (41, 25, 78, 38);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (2, 22, 92, 69);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (50, 25, 31, 77);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (23, 42, 36, 74);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (63, 24, 48, 69);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (21, 29, 94, 41);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (50, 20, 78, 45);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (9, 35, 56, 82);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (8, 31, 65, 24);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (33, 2, 67, 32);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (32, 14, 66, 41);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (64, 41, 43, 68);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (35, 19, 2, 8);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (64, 19, 5, 75);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (16, 18, 92, 34);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (48, 18, 52, 9);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (4, 48, 61, 72);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (46, 32, 8, 74);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (8, 8, 28, 38);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (23, 6, 58, 62);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (15, 42, 2, 36);
insert into Enrollments (StudentID, CourseID, midtermGrade, finalGrade) values (37, 15, 11, 15);



insert into announcments (TeacherID, StudentID, info) values (13, 42, 'expedite scalable partnerships');
insert into announcments (TeacherID, StudentID, info) values (61, 54, 'recontextualize leading-edge markets');
insert into announcments (TeacherID, StudentID, info) values (49, 70, 'implement plug-and-play networks');
insert into announcments (TeacherID, StudentID, info) values (46, 40, 'integrate best-of-breed niches');
insert into announcments (TeacherID, StudentID, info) values (59, 69, 'deploy synergistic action-items');
insert into announcments (TeacherID, StudentID, info) values (31, 36, 'facilitate transparent networks');
insert into announcments (TeacherID, StudentID, info) values (12, 9, 'benchmark transparent e-commerce');
insert into announcments (TeacherID, StudentID, info) values (40, 65, 'envisioneer open-source e-services');
insert into announcments (TeacherID, StudentID, info) values (24, 42, 'benchmark magnetic systems');
insert into announcments (TeacherID, StudentID, info) values (60, 64, 'grow leading-edge infrastructures');
insert into announcments (TeacherID, StudentID, info) values (33, 36, 'generate impactful metrics');
insert into announcments (TeacherID, StudentID, info) values (38, 67, 'orchestrate wireless content');
insert into announcments (TeacherID, StudentID, info) values (49, 2, 'synergize compelling platforms');
insert into announcments (TeacherID, StudentID, info) values (55, 43, 'cultivate dot-com experiences');
insert into announcments (TeacherID, StudentID, info) values (55, 51, 'generate 24/7 web-readiness');
insert into announcments (TeacherID, StudentID, info) values (6, 9, 'repurpose viral niches');
insert into announcments (TeacherID, StudentID, info) values (50, 16, 'deploy end-to-end platforms');
insert into announcments (TeacherID, StudentID, info) values (45, 32, 'benchmark sexy e-services');
insert into announcments (TeacherID, StudentID, info) values (24, 43, 'enhance interactive solutions');
insert into announcments (TeacherID, StudentID, info) values (13, 27, 'expedite granular users');
insert into announcments (TeacherID, StudentID, info) values (52, 2, 'expedite enterprise systems');


-- Retrieve all students' names and their corresponding courses.

SELECT Students.Name, Courses.CourseName
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID;


 -- Find the number of enrollments for each course.

SELECT Courses.CourseName, COUNT(*) AS EnrollmentCount
FROM Courses
JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseName;

 -- Get the highest score,lowest score for course which courseID3.


SELECT MAX(Enrollments.totalgrade) AS HighestScore, MIN(Enrollments.totalgrade) AS LowestScore
FROM Enrollments
join Courses on Enrollments.courseID = Courses.courseID
where Courses.courseID =3;
 
 
 -- Find the total credits taken by each student.

SELECT Students.Name, SUM(Courses.CourseCredit) AS TotalCredits
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID
GROUP BY Students.Name;

-- Count the number of male and female students in the system.

SELECT case
    when Gender = 'M' then 'Male'
    when Gender = 'F' then 'Female'
end as Gender, COUNT(*) AS Count
FROM Students
GROUP BY Gender;

-- write the query that  retrieves the names of all departments that belong to the 'Faculty of Applied Sciences'

SELECT departmentName
FROM Departments 
WHERE facultyID IN (SELECT facultyID FROM Faculties WHERE facultyName = 'Faculty of Applied Sciences');

 -- Calculate the average grade for the course which courseID is 3.

SELECT avg(totalgrade) as average_grade from Enrollments where CourseID = 3;

-- write the query that retrieves enrollment information (enrollment ID, course name, midterm grade, final grade and total grade) for the student that the name 'Alan Dewhirst',. 
 
SELECT Enrollments.EnrollmentID, Courses.CourseName, Enrollments.midtermGrade, Enrollments.finalGrade, Enrollments.totalGrade 
FROM Enrollments 
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID 
WHERE studentID = (SELECT studentID FROM Students WHERE name = 'Alan' AND surname =  'Dewhirst');

 -- write a query that retrieves the names of courses taught by a Franklyn 'Meehan teacher.

SELECT CourseName
FROM Courses
WHERE teacherID IN (
  SELECT teacherID
  FROM Teachers
  WHERE name = 'Franklyn' AND surname = 'Meehan'
);


-- write a transaction query  that updates the email address of a student that ID of 2  and commits the changes to the database.

START TRANSACTION;
UPDATE Students
SET email = 'newemail@example.com'
WHERE studentID = 2;
COMMIT; 

-- write the transaction equery that Update the phone number for a teacher with the ID of 4:

START TRANSACTION;
UPDATE Teachers SET phoneNumber = '555-1234' WHERE teacherID = 4;
COMMIT; 

-- write  a transaction query that updates a student's enrollment grade in a course and creates an announcement about the grade change::

START TRANSACTION;
UPDATE Enrollments SET finalGrade = 85, totalGrade = midtermGrade*0.40+finalGrade*0.60 WHERE studentID = 1 AND CourseID = 28;
INSERT INTO announcments (TeacherID, studentID, info) VALUES (59, 1, 'Grade updated for course 2');
COMMIT; 


-- TRANSACTION BY USING ROLLBACK

start transaction;
UPDATE Enrollments SET finalGrade = 85, totalGrade = midtermGrade*0.40+finalGrade*0.60 WHERE studentID = 1 AND CourseID = 28;
INSERT INTO announcments (TeacherID, studentID, info) VALUES (8, 1, 'Grade updated for course 2');
ROLLBACK;