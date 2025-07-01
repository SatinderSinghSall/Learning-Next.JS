-- Create the database
CREATE DATABASE hospital_db;

-- Use the created database
USE hospital_db;

-- Create the doctors table
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
    specialization VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT,
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    date_of_birth DATE,
    experience_years INT,
    license_number VARCHAR(50) UNIQUE,
    joining_date DATE,
    is_active BOOLEAN DEFAULT TRUE
);

-- Insert doctors
INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Danielle', 'Johnson', 'Other', 'Neurology', 'jeffreydoyle@hotmail.com', '8196001338',
    '386 Shane Harbors', 'Port Lindachester', 'KY', '20880', '1974-02-23', 2,
    'LIC100001', '2023-06-27', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Matthew', 'Davis', 'Male', 'Pediatrics', 'melanie94@blair.com', '6184959310',
    '1316 Chavez Village', 'Franciscostad', 'TN', '35494', '1964-05-09', 9,
    'LIC100002', '2020-11-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Cynthia', 'Ferguson', 'Other', 'Urology', 'stevennelson@watts.com', '3056413953',
    '7242 Julie Plain Suite 969', 'Coxberg', 'NM', '12416', '1962-09-14', 6,
    'LIC100003', '2025-02-22', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Daniel', 'Burton', 'Male', 'Cardiology', 'cruzcaitlin@yahoo.com', '8480184514',
    '70482 Monica Hills Apt. 252', 'New Mariotown', 'MN', '40807', '1975-10-16', 6,
    'LIC100004', '2011-06-25', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'John', 'Bradley', 'Other', 'Gastroenterology', 'dennislisa@cannon.net', '2489638346',
    '8713 Caleb Brooks Apt. 930', 'Lake Crystalbury', 'AZ', '43810', '1964-04-26', 2,
    'LIC100005', '2019-03-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'John', 'Caldwell', 'Other', 'Urology', 'jenniferkhan@kennedy.com', '1165667010',
    '513 James Mission Apt. 624', 'Wrightland', 'OH', '13334', '1962-12-09', 27,
    'LIC100006', '2021-08-04', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Yvette', 'Huff', 'Other', 'Dermatology', 'gabrieltucker@hancock.com', '6064746872',
    '3098 Julie Centers', 'New Thomashaven', 'AR', '67063', '1964-12-12', 1,
    'LIC100007', '2024-12-24', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jacob', 'Larson', 'Male', 'Oncology', 'kwilson@riley.org', '1699854353',
    '2475 Albert Road Apt. 183', 'Davidstad', 'CA', '32519', '1984-08-22', 22,
    'LIC100008', '2015-05-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Eric', 'Bass', 'Male', 'General Surgery', 'contrerasangela@hotmail.com', '1241182449',
    '534 King Vista', 'North Cynthiaview', 'AL', '44220', '1968-05-25', 7,
    'LIC100009', '2021-05-02', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Tina', 'Martin', 'Male', 'General Surgery', 'hhoffman@gmail.com', '2805982620',
    '0533 Michael Points Suite 923', 'Port Lisa', 'MT', '03749', '1971-09-14', 23,
    'LIC100010', '2023-01-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Sandra', 'Patton', 'Male', 'Radiology', 'josephcobb@gmail.com', '6073375433',
    '365 Lin Trail', 'Michaelhaven', 'TX', '70783', '1982-01-11', 35,
    'LIC100011', '2010-12-19', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Darrell', 'Waller', 'Female', 'Neurology', 'benjamin96@chandler-edwards.org', '8169340608',
    '6159 Alvarado Crossing', 'Williamchester', 'MO', '91885', '1979-08-13', 36,
    'LIC100012', '2019-12-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'David', 'Fisher', 'Other', 'Gastroenterology', 'christinaturner@hotmail.com', '0443699577',
    '387 Donna Haven Suite 134', 'Port James', 'AZ', '32593', '1991-10-30', 24,
    'LIC100013', '2020-11-23', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Melissa', 'Jones', 'Other', 'Neurology', 'jennifercruz@yahoo.com', '3201632870',
    '72788 Dodson Mills', 'Rivasside', 'GA', '97973', '1991-10-19', 3,
    'LIC100014', '2018-02-25', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jonathon', 'Wright', 'Female', 'Neurology', 'rsims@yahoo.com', '1434558122',
    '2316 Rivera Mountain', 'Brownchester', 'WI', '77057', '1960-10-28', 15,
    'LIC100015', '2025-01-26', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Nicole', 'Johnston', 'Female', 'Dermatology', 'benderkenneth@yahoo.com', '6889373467',
    '5627 Tina Place', 'South Brittanytown', 'SD', '56680', '1968-09-23', 30,
    'LIC100016', '2025-03-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Steven', 'Williams', 'Female', 'Orthopedics', 'jason55@yahoo.com', '4641708053',
    '003 Mary Road', 'East David', 'DE', '74421', '1974-04-30', 24,
    'LIC100017', '2018-05-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Holly', 'Wang', 'Other', 'Dermatology', 'stricklandfrank@rodriguez-johnson.com', '9663193149',
    '058 Stanley Cliff', 'Alexanderchester', 'NM', '14334', '1988-12-30', 5,
    'LIC100018', '2016-08-28', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Cynthia', 'Poole', 'Male', 'Urology', 'hthompson@nelson.info', '7694531473',
    '965 Troy Islands Apt. 735', 'Matthewview', 'AL', '68216', '1972-06-30', 16,
    'LIC100019', '2011-12-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'John', 'Russell', 'Female', 'Dermatology', 'fbrewer@mcguire-davis.com', '6349578856',
    '7444 David Fields Suite 182', 'East Joanna', 'VA', '77779', '1995-03-13', 36,
    'LIC100020', '2020-08-25', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Justin', 'Garcia', 'Female', 'Cardiology', 'jeremy24@erickson.com', '0084271094',
    '7520 Everett Neck Apt. 167', 'New Crystalton', 'FL', '74273', '1980-03-03', 15,
    'LIC100021', '2011-12-12', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Victoria', 'Wilson', 'Female', 'Oncology', 'kimberlyjames@yahoo.com', '4964990913',
    '1232 Eric Lodge', 'Norrisfort', 'AZ', '30841', '1979-02-06', 18,
    'LIC100022', '2022-07-10', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Justin', 'Heath', 'Other', 'General Surgery', 'sandrafrench@lawrence.com', '8324210249',
    '1746 Mason Park Suite 190', 'Navarroview', 'CO', '30506', '1960-11-27', 14,
    'LIC100023', '2023-07-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Emily', 'Adams', 'Female', 'Radiology', 'thomaspearson@white-richards.info', '1756551256',
    '6807 Leonard Islands Apt. 680', 'Gutierrezborough', 'MN', '82110', '1993-06-02', 10,
    'LIC100024', '2021-02-19', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Scott', 'Williams', 'Male', 'Urology', 'sarakim@hotmail.com', '7109324808',
    '31712 Cantu Highway Suite 677', 'South Andrea', 'ID', '79062', '1994-01-30', 35,
    'LIC100025', '2023-03-12', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Natasha', 'Shields', 'Other', 'Oncology', 'ymorgan@hotmail.com', '4044997278',
    '5886 Cantu Ways Apt. 396', 'Port Kimberly', 'MD', '98110', '1991-09-06', 38,
    'LIC100026', '2022-06-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Robin', 'James', 'Male', 'Orthopedics', 'ihanna@sanford.info', '1870262174',
    '615 Finley Road Suite 809', 'East Crystalport', 'WA', '12347', '1989-01-10', 33,
    'LIC100027', '2012-03-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Kathleen', 'Padilla', 'Male', 'Neurology', 'tjackson@williams.com', '5562386922',
    '96937 Jesse Route', 'Stevetown', 'NH', '38201', '1996-09-09', 10,
    'LIC100028', '2013-03-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Charles', 'Landry', 'Other', 'Oncology', 'dvaughn@yahoo.com', '3671369594',
    '64090 Wall Heights Apt. 953', 'New John', 'VA', '86901', '1968-10-20', 39,
    'LIC100029', '2021-03-08', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Colton', 'Burton', 'Female', 'Gastroenterology', 'kristina09@oconnor-davis.com', '5623285884',
    '7451 Mccarty Divide', 'Port Erica', 'MO', '73549', '1984-05-21', 30,
    'LIC100030', '2012-01-13', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Krystal', 'Smith', 'Other', 'Cardiology', 'vrichardson@baker.com', '1370985931',
    '461 Brandon Camp Suite 711', 'New Derek', 'MN', '88382', '1996-04-03', 8,
    'LIC100031', '2017-08-17', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Brenda', 'Barber', 'Other', 'Dermatology', 'basschristina@yahoo.com', '0537735158',
    '64317 Elizabeth Row Apt. 053', 'Port Anne', 'WV', '73142', '1973-08-04', 22,
    'LIC100032', '2020-06-21', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jason', 'Kane', 'Female', 'Orthopedics', 'kristinacarlson@yahoo.com', '2284210205',
    '502 Williams Streets', 'Foxland', 'NV', '47954', '1994-06-03', 30,
    'LIC100033', '2020-08-05', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Daniel', 'Gordon', 'Other', 'Dermatology', 'stephen00@boone-simmons.com', '7711592124',
    '9847 Garcia Squares Apt. 836', 'Beasleychester', 'NH', '52763', '1987-10-21', 33,
    'LIC100034', '2022-11-28', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Cody', 'Simmons', 'Other', 'Neurology', 'stephanie71@gmail.com', '1161528098',
    '165 Parrish Stravenue Apt. 494', 'Dalehaven', 'FL', '86580', '1992-04-22', 20,
    'LIC100035', '2014-04-24', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Melanie', 'Bell', 'Other', 'Gastroenterology', 'farmeraudrey@yahoo.com', '8998094024',
    '5022 Jones Streets Apt. 183', 'Barnesmouth', 'MN', '41347', '1981-07-27', 13,
    'LIC100036', '2023-09-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Shelly', 'Carlson', 'Male', 'Urology', 'ericwilliamson@miller.org', '7643815614',
    '403 Joyce Centers Apt. 343', 'Port Jonathan', 'DE', '01514', '1993-05-05', 34,
    'LIC100037', '2023-03-16', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ryan', 'Anderson', 'Other', 'General Surgery', 'charles06@stevens.com', '9696641605',
    '751 Richard Gardens', 'Chapmanhaven', 'MO', '41169', '1982-08-07', 32,
    'LIC100038', '2014-04-07', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Mason', 'Jackson', 'Female', 'Dermatology', 'rebeccabailey@mullen.com', '2432921277',
    '995 Hernandez Cliff Suite 744', 'West Williamport', 'NV', '05430', '1963-05-15', 16,
    'LIC100039', '2016-10-08', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Marie', 'Jones', 'Other', 'Neurology', 'jford@huang.com', '5978207151',
    '37788 Michael Haven', 'Ortizmouth', 'PA', '07364', '1982-04-08', 6,
    'LIC100040', '2011-08-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Mark', 'Grant', 'Male', 'Urology', 'johnathan92@yahoo.com', '1925462914',
    '528 Debbie Manors Suite 054', 'East Matthew', 'NM', '25667', '1974-11-29', 9,
    'LIC100041', '2012-11-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Eric', 'Phillips', 'Female', 'Urology', 'stanleynancy@anderson.org', '2706537947',
    '347 Micheal Ports', 'Murrayport', 'MS', '66417', '1995-05-23', 11,
    'LIC100042', '2017-08-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Tammy', 'Montoya', 'Other', 'Oncology', 'brett75@villa.com', '4124782613',
    '0606 Young Common Suite 305', 'Port Jennifermouth', 'FL', '18536', '1962-02-07', 14,
    'LIC100043', '2015-05-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Samantha', 'Kennedy', 'Other', 'Pediatrics', 'awest@smith.com', '8986143410',
    '9711 Carlson Brook', 'Lake Douglas', 'AL', '81085', '1983-07-04', 20,
    'LIC100044', '2014-08-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ashley', 'Lopez', 'Other', 'General Surgery', 'carlos88@hartman.info', '0654051531',
    '05852 Pollard Neck Apt. 217', 'West Jamesborough', 'AZ', '41866', '1980-08-05', 29,
    'LIC100045', '2019-04-07', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Raymond', 'Ochoa', 'Female', 'Neurology', 'benjamin34@yahoo.com', '0541566765',
    '7584 Jessica Common', 'Morrisonburgh', 'LA', '42602', '1966-06-24', 16,
    'LIC100046', '2011-11-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Mark', 'Phillips', 'Female', 'Cardiology', 'cjackson@yahoo.com', '7059640165',
    '29702 Joel Rue', 'Michaelshire', 'PA', '20612', '1990-02-10', 38,
    'LIC100047', '2016-10-22', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Nathan', 'Hines', 'Other', 'Pediatrics', 'raymond43@johnson.info', '8681447394',
    '12172 Osborn Valleys Suite 518', 'Patriciaburgh', 'VT', '92280', '1971-05-06', 1,
    'LIC100048', '2023-12-31', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Michael', 'Walker', 'Other', 'Cardiology', 'joelsnyder@spencer-wood.net', '2911467866',
    '51778 Anderson Village', 'Port Tammy', 'NY', '07764', '1967-12-12', 15,
    'LIC100049', '2019-04-24', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Eric', 'Martin', 'Male', 'General Surgery', 'michaeleverett@yahoo.com', '1438424981',
    '922 Kirby Port', 'Port Michelleland', 'SD', '76099', '1977-07-04', 5,
    'LIC100050', '2021-07-28', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jason', 'Armstrong', 'Female', 'Radiology', 'ismall@may-turner.com', '6471027677',
    '9255 Hester Curve', 'Zacharyville', 'IA', '61642', '1967-11-01', 14,
    'LIC100051', '2015-01-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Shannon', 'Thomas', 'Other', 'Gastroenterology', 'sonia96@estes.com', '9532787747',
    '68733 Williams Haven', 'Harperfort', 'ND', '01572', '1966-10-23', 37,
    'LIC100052', '2017-10-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Dennis', 'Baker', 'Female', 'Oncology', 'zdiaz@gmail.com', '9835841687',
    '912 Phillip Underpass Suite 852', 'New William', 'AZ', '06439', '1962-02-22', 13,
    'LIC100053', '2012-10-29', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jennifer', 'Brock', 'Other', 'Oncology', 'catherinerobertson@yahoo.com', '9526949588',
    '947 Micheal Spring Apt. 694', 'New Thomasshire', 'IN', '95056', '1962-12-28', 23,
    'LIC100054', '2020-06-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Timothy', 'Warren', 'Female', 'Cardiology', 'lorraineallen@hotmail.com', '1307562636',
    '028 Ann Shore Suite 865', 'South Rhonda', 'ND', '46938', '1977-06-26', 7,
    'LIC100055', '2020-11-15', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Todd', 'Bernard', 'Other', 'General Surgery', 'jeffrey44@hotmail.com', '3757584419',
    '5240 Moses Common Suite 747', 'East Maria', 'OH', '91749', '1977-12-24', 7,
    'LIC100056', '2012-10-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Daniel', 'Yang', 'Male', 'Urology', 'brentstein@little.com', '6571208267',
    '345 Brewer Trafficway Apt. 938', 'East Robertburgh', 'AZ', '52535', '1993-03-16', 29,
    'LIC100057', '2013-08-31', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Sharon', 'Hayden', 'Male', 'Dermatology', 'smithashley@gmail.com', '5478872874',
    '52742 Jill Turnpike', 'Ashleyborough', 'RI', '84220', '1987-02-02', 30,
    'LIC100058', '2024-07-25', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ronald', 'Murphy', 'Male', 'Radiology', 'lopezdonald@yahoo.com', '3046374549',
    '5301 Parker Lodge', 'Hannahport', 'RI', '29448', '1974-05-29', 36,
    'LIC100059', '2012-10-07', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Timothy', 'Gibson', 'Other', 'Urology', 'emiles@hotmail.com', '3391878519',
    '88398 Franklin Walk', 'Wilsonborough', 'OR', '64572', '1965-09-07', 1,
    'LIC100060', '2019-03-07', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Sean', 'Brown', 'Male', 'Orthopedics', 'dbryant@ford.biz', '4039106518',
    '70462 Katie Stream', 'Brooksfurt', 'MS', '49737', '1964-12-15', 27,
    'LIC100061', '2022-02-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Tamara', 'Baxter', 'Male', 'Oncology', 'david86@anderson.com', '4786863375',
    '3106 John Cliff', 'New Arthurton', 'WA', '06299', '1986-11-14', 4,
    'LIC100062', '2017-12-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jimmy', 'Robinson', 'Male', 'Oncology', 'williamroberts@johnston.com', '3428364408',
    '687 Teresa Row', 'Floydmouth', 'MT', '54012', '1969-08-25', 17,
    'LIC100063', '2015-08-07', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Nicholas', 'Webster', 'Female', 'Dermatology', 'melissaturner@hotmail.com', '2708668826',
    '3517 Davis Stream', 'North Joseph', 'PA', '79527', '1962-03-09', 28,
    'LIC100064', '2025-05-11', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Charles', 'Ballard', 'Other', 'Urology', 'vclark@krueger-smith.com', '1739363854',
    '8544 Hunt Parks Suite 175', 'West Lawrence', 'OK', '29503', '1969-06-04', 32,
    'LIC100065', '2010-10-09', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jose', 'Donovan', 'Female', 'Pediatrics', 'elijah53@yahoo.com', '9378547772',
    '28728 Alexandria Villages Apt. 006', 'Port Crystal', 'VT', '20296', '1960-02-13', 4,
    'LIC100066', '2014-03-21', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'William', 'Brooks', 'Other', 'Cardiology', 'ismith@hotmail.com', '6008484086',
    '18233 Ochoa Grove', 'Millerfurt', 'OK', '32378', '1974-11-12', 21,
    'LIC100067', '2015-08-07', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Gabriella', 'Abbott', 'Other', 'Radiology', 'sullivannicholas@brown-smith.com', '1765918033',
    '0148 Harry Vista Suite 039', 'Port Lori', 'MO', '10585', '1979-11-11', 33,
    'LIC100068', '2013-04-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Anne', 'Knight', 'Other', 'Orthopedics', 'patrick21@hotmail.com', '5016315999',
    '0477 Michael Lane Suite 296', 'Port Christinebury', 'CA', '11253', '1977-09-24', 4,
    'LIC100069', '2013-02-13', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Norman', 'Bowers', 'Male', 'Orthopedics', 'gstewart@smith.info', '5412126788',
    '01581 Shields Bridge Suite 661', 'New Adriana', 'MS', '22717', '1968-12-10', 5,
    'LIC100070', '2015-01-27', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Kevin', 'Snyder', 'Other', 'Pediatrics', 'ryanfisher@patton-ward.com', '7993712406',
    '657 Jordan View Apt. 459', 'South Leon', 'MD', '38701', '1992-11-28', 26,
    'LIC100071', '2020-04-17', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Kimberly', 'Nguyen', 'Other', 'Pediatrics', 'kdiaz@gmail.com', '9828073741',
    '724 Johnny Drives Suite 617', 'Aguilarside', 'UT', '55328', '1996-06-28', 38,
    'LIC100072', '2011-02-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Krystal', 'Ward', 'Other', 'Neurology', 'mackdiane@jackson-salazar.org', '6561014388',
    '5679 Michael Burg', 'Garciachester', 'CO', '15714', '1969-02-19', 27,
    'LIC100073', '2016-06-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Larry', 'Gibson', 'Other', 'Urology', 'gbailey@bowen-chavez.com', '4010512382',
    '8673 Soto Ferry', 'Fosterborough', 'OR', '56803', '1985-12-15', 21,
    'LIC100074', '2010-07-28', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Janet', 'Harris', 'Male', 'General Surgery', 'lloydamanda@nguyen-ellis.com', '7859696915',
    '9249 Emily Island Apt. 341', 'West Heather', 'MS', '55320', '1968-11-16', 16,
    'LIC100075', '2020-04-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Patrick', 'Lopez', 'Male', 'Dermatology', 'tracytaylor@wilkinson-harvey.com', '0723688767',
    '772 Ariana Underpass Apt. 404', 'New Keith', 'NH', '74641', '1993-03-15', 30,
    'LIC100076', '2019-11-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'William', 'Armstrong', 'Male', 'Cardiology', 'amber07@hotmail.com', '3613407451',
    '33959 Martin Dam Apt. 309', 'Amandaside', 'MD', '92782', '1979-05-30', 30,
    'LIC100077', '2015-06-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ashley', 'Farley', 'Other', 'Neurology', 'sydneyfloyd@riddle.com', '2325367294',
    '7116 Neal Wells Suite 775', 'Port Kimland', 'NH', '83710', '1983-11-15', 5,
    'LIC100078', '2024-12-16', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Bryan', 'Ferguson', 'Other', 'Dermatology', 'fsummers@morris-campbell.net', '9297500170',
    '77063 Nicole Hollow', 'Port Sarah', 'CO', '86299', '1984-01-09', 9,
    'LIC100079', '2014-10-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Christopher', 'Beck', 'Male', 'Pediatrics', 'sanderskevin@fischer.com', '0371293870',
    '516 Tim Forks', 'Davisville', 'MD', '48678', '1979-11-11', 24,
    'LIC100080', '2012-10-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Patrick', 'Li', 'Female', 'Urology', 'caseyelliott@santos.com', '6973112196',
    '5234 John Rapid Suite 043', 'Lake Peter', 'AR', '31871', '1993-03-04', 20,
    'LIC100081', '2017-01-22', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Daniel', 'Porter', 'Other', 'Urology', 'hatfieldsarah@hughes.biz', '5827109104',
    '06848 Henderson Locks', 'Lake Amandaberg', 'CO', '41121', '1964-11-15', 1,
    'LIC100082', '2019-03-13', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Samantha', 'Mccann', 'Other', 'Dermatology', 'peter14@kim.com', '1617990421',
    '202 Benton Pike', 'Garyberg', 'WI', '35728', '1967-07-13', 7,
    'LIC100083', '2023-08-15', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Rachel', 'Rogers', 'Male', 'Dermatology', 'alexandria49@hotmail.com', '1778507925',
    '1913 Bradley Wall', 'East Brandonstad', 'FL', '23957', '1961-11-25', 8,
    'LIC100084', '2019-11-26', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Linda', 'Klein', 'Other', 'Urology', 'marcbutler@hotmail.com', '5419518023',
    '1744 Miller Motorway', 'West Jamesshire', 'ME', '97438', '1976-01-02', 10,
    'LIC100085', '2018-05-22', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Micheal', 'Bonilla', 'Other', 'Pediatrics', 'edwardrandolph@hall.com', '5064138367',
    '41038 Haynes Landing', 'Villegasland', 'CT', '66748', '1968-07-31', 22,
    'LIC100086', '2021-05-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Lori', 'Jones', 'Other', 'Dermatology', 'ibates@carter.biz', '5574313291',
    '27756 Amanda Trail', 'South Kyle', 'DE', '12352', '1970-03-22', 33,
    'LIC100087', '2024-03-27', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Gina', 'Mckenzie', 'Male', 'Neurology', 'marymurphy@dawson.biz', '8044206788',
    '71210 Maria Forges', 'East Madison', 'TX', '83115', '1965-03-19', 28,
    'LIC100088', '2020-05-27', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Brenda', 'Lowery', 'Male', 'Cardiology', 'osbornjames@ramos.com', '1070296670',
    '625 Rebekah Harbor Suite 720', 'Lake Kenneth', 'OH', '63288', '1963-08-24', 22,
    'LIC100089', '2011-12-28', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Joshua', 'Taylor', 'Other', 'Dermatology', 'crystalpham@mayo.com', '7875985642',
    '9304 Lindsey Mountains', 'Katiebury', 'CT', '32988', '1975-11-27', 11,
    'LIC100090', '2015-01-12', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Amanda', 'Moody', 'Other', 'Oncology', 'barbaramcgrath@kelly-combs.com', '2395590599',
    '378 Thompson Camp', 'North Jessebury', 'NC', '63151', '1959-07-17', 36,
    'LIC100091', '2016-02-21', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Samantha', 'Harris', 'Male', 'Orthopedics', 'jennifer50@hernandez.com', '1851569154',
    '26752 Walker Radial Apt. 644', 'East Jessica', 'OK', '51828', '1961-09-12', 35,
    'LIC100092', '2013-08-05', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Carrie', 'Mccall', 'Female', 'Gastroenterology', 'zunigadonald@miller.com', '5704331541',
    '67626 Macias Keys', 'Garciafort', 'OK', '85824', '1974-11-05', 36,
    'LIC100093', '2013-04-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Shannon', 'Lloyd', 'Male', 'Cardiology', 'andrew41@peterson.com', '1815997062',
    '01533 Terry Stravenue Suite 443', 'North Philipside', 'NM', '20632', '1963-03-16', 20,
    'LIC100094', '2016-08-20', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Adam', 'Miller', 'Male', 'General Surgery', 'collinclark@hotmail.com', '4171467741',
    '56527 Jose Mountain Suite 349', 'East Karenville', 'TN', '45562', '1996-05-04', 14,
    'LIC100095', '2017-07-16', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Tara', 'Lawrence', 'Other', 'Neurology', 'acardenas@mcdaniel.com', '7416089899',
    '72233 Brad Common', 'Harrisberg', 'PA', '34302', '1981-04-03', 23,
    'LIC100096', '2022-11-13', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Robin', 'Jones', 'Female', 'Gastroenterology', 'rarnold@hotmail.com', '7099861622',
    '91485 Baker Shoal', 'Armstrongfort', 'HI', '36600', '1986-12-01', 10,
    'LIC100097', '2012-12-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Christine', 'Becker', 'Male', 'Orthopedics', 'fosternatasha@hotmail.com', '3074505444',
    '132 Mccann Mills Suite 469', 'East Scottchester', 'NM', '68199', '1984-12-09', 12,
    'LIC100098', '2024-06-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Brian', 'Moody', 'Male', 'Orthopedics', 'jenna62@suarez.com', '0307053457',
    '103 Burns Mission Apt. 798', 'Maxview', 'UT', '12348', '1978-11-23', 22,
    'LIC100099', '2010-12-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Paul', 'Martin', 'Female', 'Pediatrics', 'deborahbyrd@pearson-palmer.com', '7229034944',
    '5743 Turner Pike Suite 910', 'Annaport', 'TX', '14670', '1992-04-11', 18,
    'LIC100100', '2011-08-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Matthew', 'Hill', 'Other', 'Neurology', 'jose43@gmail.com', '8309652074',
    '6609 Matthew Station Apt. 875', 'Meganside', 'LA', '13294', '1991-07-14', 25,
    'LIC100101', '2012-09-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Joyce', 'Hardy', 'Female', 'Pediatrics', 'destiny35@garner.biz', '5549471709',
    '3816 Gutierrez Ways', 'East Victoria', 'MT', '75133', '1990-08-19', 13,
    'LIC100102', '2012-12-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Leslie', 'Baldwin', 'Female', 'General Surgery', 'lcook@walters-smith.com', '3292712966',
    '7600 Jessica Bridge Suite 830', 'Lake Jessicabury', 'MI', '41407', '1968-04-08', 20,
    'LIC100103', '2012-03-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Patrick', 'Chapman', 'Male', 'Pediatrics', 'colonkenneth@bryant-meyer.net', '5625753260',
    '23098 David Station', 'South Nancyview', 'ND', '82176', '1962-10-20', 2,
    'LIC100104', '2020-08-07', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Virginia', 'Stanley', 'Female', 'General Surgery', 'norrisrobert@martinez-king.com', '3046184992',
    '89141 Tyler Rest Apt. 483', 'Jadeport', 'AZ', '72346', '1993-04-09', 18,
    'LIC100105', '2014-01-11', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Haley', 'Castillo', 'Female', 'General Surgery', 'smithchristopher@conley.info', '2181143744',
    '12045 Simmons Crescent Apt. 002', 'West Michael', 'RI', '35668', '1965-10-27', 33,
    'LIC100106', '2016-11-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Lisa', 'White', 'Other', 'General Surgery', 'rrivers@yahoo.com', '7621202169',
    '729 Maxwell Ridge Apt. 277', 'South Scottland', 'SD', '41688', '1960-05-03', 2,
    'LIC100107', '2022-06-26', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Miranda', 'Warren', 'Female', 'Orthopedics', 'april91@stanley-wright.com', '6289002877',
    '75354 William Plaza', 'Powellbury', 'NH', '58721', '1989-12-27', 38,
    'LIC100108', '2011-12-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Melissa', 'West', 'Female', 'Cardiology', 'bmcgee@powell.net', '8019948837',
    '0375 Moran Lakes Suite 113', 'West Michaelport', 'NC', '49507', '1966-09-24', 7,
    'LIC100109', '2011-04-11', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Penny', 'Vasquez', 'Female', 'General Surgery', 'kingjames@gmail.com', '6373516091',
    '9827 Alyssa Causeway Suite 978', 'Lake Beth', 'DC', '14074', '1985-11-10', 28,
    'LIC100110', '2021-09-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Caroline', 'Andrade', 'Other', 'Neurology', 'spetty@gmail.com', '4654722698',
    '858 James Road Suite 522', 'Jenniferstad', 'NJ', '76890', '1987-11-27', 25,
    'LIC100111', '2021-12-19', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Julie', 'Skinner', 'Male', 'Dermatology', 'hstokes@gmail.com', '0620034244',
    '43805 Garcia Ways', 'Lake Deborah', 'IA', '67468', '1979-01-26', 3,
    'LIC100112', '2022-04-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Elizabeth', 'House', 'Male', 'Urology', 'rfrye@yahoo.com', '8004397359',
    '347 Tonya Club', 'East Jill', 'MS', '05827', '1988-08-27', 35,
    'LIC100113', '2015-03-31', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Angela', 'Anderson', 'Other', 'Pediatrics', 'riverajenna@gmail.com', '0259094798',
    '58328 Kristie Estate Suite 886', 'West Jeffreyborough', 'MA', '43894', '1984-01-18', 24,
    'LIC100114', '2015-06-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jeffery', 'Goodwin', 'Other', 'General Surgery', 'wilsonmichael@gmail.com', '9930561648',
    '85887 Williams Run Apt. 581', 'East Teresaside', 'AL', '82674', '1963-12-14', 40,
    'LIC100115', '2014-01-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ellen', 'Ayala', 'Male', 'Dermatology', 'harrismaria@hotmail.com', '6120750110',
    '8193 Russell Mission', 'Hamiltontown', 'TX', '16007', '1995-11-22', 33,
    'LIC100116', '2010-08-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Darlene', 'Montgomery', 'Female', 'General Surgery', 'howardwesley@buchanan-turner.com', '4766072832',
    '424 Bernard Branch Apt. 100', 'Medinaland', 'IL', '98581', '1982-11-23', 26,
    'LIC100117', '2014-02-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Robert', 'Brewer', 'Other', 'Orthopedics', 'jackjensen@lee-white.org', '0878141413',
    '5231 Harvey Fields Suite 775', 'Heatherberg', 'OK', '48275', '1981-01-08', 13,
    'LIC100118', '2017-10-13', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Gary', 'Edwards', 'Female', 'Orthopedics', 'xhill@frazier.info', '7754781291',
    '83411 Melissa Roads Apt. 996', 'North Andrea', 'ND', '62380', '1969-08-11', 40,
    'LIC100119', '2016-09-20', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Philip', 'Vance', 'Female', 'Urology', 'stevendixon@yahoo.com', '5803928272',
    '927 Williams Trace', 'Hallview', 'IN', '06111', '1973-07-26', 1,
    'LIC100120', '2019-04-23', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Rebecca', 'Ward', 'Male', 'Oncology', 'ckeith@hotmail.com', '5184498926',
    '9184 Kaufman Fork Suite 557', 'Eatontown', 'DC', '58159', '1970-10-07', 38,
    'LIC100121', '2014-05-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Chris', 'Schneider', 'Female', 'Radiology', 'jacobcox@montoya.com', '1777392603',
    '99228 Patricia Drive', 'East Jonathanburgh', 'MO', '79059', '1960-10-05', 29,
    'LIC100122', '2025-06-10', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jennifer', 'Stanley', 'Male', 'Urology', 'robinsoncatherine@yahoo.com', '7236929298',
    '57991 Nicholas Curve Apt. 038', 'Serranoville', 'NJ', '81077', '1962-02-25', 31,
    'LIC100123', '2025-06-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Kristen', 'Gordon', 'Other', 'Orthopedics', 'olsondavid@ryan.biz', '8650863765',
    '2473 Justin Wells', 'Scotttown', 'WA', '01433', '1995-01-20', 6,
    'LIC100124', '2012-07-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'April', 'Brooks', 'Other', 'Gastroenterology', 'robert12@pearson-king.net', '6959463688',
    '58874 Lane Trail Suite 213', 'Loganburgh', 'IL', '67130', '1986-10-02', 22,
    'LIC100125', '2023-11-14', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Matthew', 'Pierce', 'Male', 'Dermatology', 'paulfields@morrow.org', '6114351906',
    '849 Sonya Viaduct Apt. 770', 'Port Diane', 'NC', '37988', '1972-09-30', 15,
    'LIC100126', '2011-01-25', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Kristen', 'Dixon', 'Male', 'Cardiology', 'emilyward@smith.biz', '5669380118',
    '895 Richmond Harbor Apt. 937', 'Andrewsview', 'MT', '66854', '1966-09-28', 3,
    'LIC100127', '2020-01-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Charles', 'Phillips', 'Female', 'Gastroenterology', 'nancy94@ramos.com', '5779071416',
    '356 Black Branch', 'Johnland', 'TX', '98646', '1982-10-08', 5,
    'LIC100128', '2011-10-16', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Angela', 'White', 'Other', 'Gastroenterology', 'jeffery94@gmail.com', '3733343333',
    '11179 Kathryn Plains Apt. 759', 'Travisshire', 'KY', '64831', '1971-12-10', 13,
    'LIC100129', '2023-07-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Sabrina', 'Ramirez', 'Female', 'Radiology', 'brianlloyd@ayers-johnson.com', '6271875003',
    '155 Lopez Greens Apt. 479', 'Michaelfort', 'IL', '55432', '1984-10-30', 26,
    'LIC100130', '2016-09-15', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Melissa', 'Ramirez', 'Other', 'Cardiology', 'tiffanyparks@le.net', '6632270267',
    '885 Evans Points', 'South Coreyburgh', 'IL', '33831', '1991-12-04', 7,
    'LIC100131', '2024-10-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Crystal', 'Cole', 'Male', 'Orthopedics', 'michael88@yahoo.com', '5061593998',
    '5587 Preston Light', 'Stevenberg', 'GA', '84463', '1982-06-15', 34,
    'LIC100132', '2017-09-03', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Crystal', 'Duncan', 'Other', 'Pediatrics', 'martinjeremy@delgado-page.org', '6475987622',
    '34132 Garcia Circles', 'Kelleytown', 'MO', '69180', '1965-02-28', 8,
    'LIC100133', '2012-04-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jose', 'Moore', 'Female', 'Urology', 'jerome47@hotmail.com', '2282005577',
    '728 Brittany Motorway Suite 884', 'Timothybury', 'CO', '58416', '1980-06-12', 36,
    'LIC100134', '2016-09-19', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Robert', 'Moore', 'Female', 'Gastroenterology', 'millskatherine@cooper.net', '0774064930',
    '68663 Jennifer Rue Suite 634', 'South Colleenhaven', 'RI', '91455', '1977-12-30', 33,
    'LIC100135', '2015-05-04', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Deborah', 'Patel', 'Other', 'Radiology', 'elopez@gmail.com', '2417974973',
    '20802 Julian Crossroad Suite 031', 'North Tristan', 'MT', '41339', '1993-05-30', 11,
    'LIC100136', '2016-10-24', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Steven', 'Moody', 'Female', 'Radiology', 'bridgesstephanie@gmail.com', '4618723460',
    '367 Joan Bypass', 'South Jill', 'NC', '87795', '1973-09-05', 17,
    'LIC100137', '2018-07-17', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Paul', 'Ali', 'Other', 'Dermatology', 'crystalwilliams@hotmail.com', '8147435031',
    '650 Laura Prairie', 'South Kristinatown', 'OR', '91039', '1991-11-02', 34,
    'LIC100138', '2022-03-17', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Caitlyn', 'Watson', 'Male', 'Dermatology', 'ericdavis@morgan.com', '0528127358',
    '3065 John Canyon Suite 784', 'Lopezburgh', 'MI', '42926', '1991-05-16', 29,
    'LIC100139', '2015-03-07', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Mikayla', 'George', 'Female', 'Pediatrics', 'schmidtshannon@weaver-gibson.net', '6209593518',
    '87829 Morris Row Suite 118', 'North Maryberg', 'AZ', '26987', '1966-10-12', 18,
    'LIC100140', '2018-10-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'James', 'Johnson', 'Other', 'Neurology', 'sfox@hotmail.com', '4053910371',
    '058 Short Underpass Apt. 948', 'Lake Chadport', 'IL', '68590', '1966-02-07', 9,
    'LIC100141', '2012-03-20', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jessica', 'Schmidt', 'Female', 'Orthopedics', 'aliciawright@meza.com', '9576122868',
    '289 Mahoney Island Suite 566', 'Charleneshire', 'IL', '49661', '1996-12-09', 14,
    'LIC100142', '2023-03-01', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jonathan', 'Nixon', 'Female', 'General Surgery', 'csmith@yahoo.com', '9082404335',
    '488 Clinton Mount', 'Ericview', 'OR', '33250', '1975-05-09', 35,
    'LIC100143', '2014-11-09', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Lisa', 'Davis', 'Male', 'Pediatrics', 'jessicacummings@yahoo.com', '2791940961',
    '5661 Julie Vista', 'Lake Kimberlyfurt', 'ME', '69232', '1962-04-19', 27,
    'LIC100144', '2015-12-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Amber', 'Hernandez', 'Other', 'Cardiology', 'brentdennis@maddox-mullins.org', '8136462251',
    '086 Miller Parkway Suite 227', 'South Randall', 'ID', '74054', '1995-03-04', 37,
    'LIC100145', '2014-09-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'John', 'Adams', 'Male', 'General Surgery', 'gail91@gmail.com', '6655355904',
    '9792 Williams Viaduct', 'East Gina', 'WV', '95985', '1965-05-02', 20,
    'LIC100146', '2012-05-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jodi', 'Sanchez', 'Female', 'Urology', 'alexander14@ruiz-rivera.net', '3388487920',
    '804 Brian Flats Suite 070', 'South Donnastad', 'CT', '03001', '1979-05-27', 35,
    'LIC100147', '2025-04-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Nicole', 'Hughes', 'Male', 'Radiology', 'mckeetodd@hotmail.com', '8123878003',
    '7620 Sutton Knoll Suite 384', 'Lake Jonathanfurt', 'AK', '73238', '1978-07-25', 15,
    'LIC100148', '2014-05-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Edward', 'Prince', 'Female', 'Cardiology', 'blairabigail@salazar.com', '9264957823',
    '832 Barker Pine', 'South Wendy', 'FL', '86514', '1970-04-02', 25,
    'LIC100149', '2015-11-24', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Carlos', 'Patel', 'Other', 'Oncology', 'lonniehobbs@johnson.biz', '4742312209',
    '993 Jerry Burg Suite 172', 'Josephstad', 'MS', '64915', '1991-09-28', 11,
    'LIC100150', '2012-11-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Frank', 'Perez', 'Male', 'Gastroenterology', 'schaeferstephanie@gmail.com', '3312797573',
    '0965 Carr Summit Apt. 817', 'Wilcoxton', 'IA', '68488', '1996-02-05', 35,
    'LIC100151', '2017-03-24', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Tonya', 'Williams', 'Female', 'Gastroenterology', 'leescott@yahoo.com', '4726490827',
    '81298 Phillip Islands Suite 027', 'South Christopher', 'UT', '85511', '1970-08-28', 37,
    'LIC100152', '2022-09-19', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jessica', 'Davis', 'Male', 'Oncology', 'christopher68@hotmail.com', '2686025922',
    '06447 Sims Crest', 'East Adam', 'KS', '02101', '1990-09-15', 9,
    'LIC100153', '2018-12-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Melissa', 'Stephens', 'Male', 'Cardiology', 'lyoung@alvarez.org', '0384983022',
    '502 Elizabeth Villages', 'Markland', 'CT', '55152', '1971-08-17', 17,
    'LIC100154', '2013-03-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Emily', 'Carr', 'Male', 'Radiology', 'xcurry@davis.com', '5616814721',
    '8683 Cheryl Coves Apt. 794', 'Lynchmouth', 'NC', '75886', '1983-07-30', 21,
    'LIC100155', '2012-09-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Christina', 'Crawford', 'Female', 'Dermatology', 'nmorton@gmail.com', '4301071396',
    '55830 Hannah Glens Apt. 448', 'Katieville', 'MA', '45243', '1986-06-12', 27,
    'LIC100156', '2022-10-27', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ashley', 'Choi', 'Male', 'Radiology', 'markmorgan@mendoza.com', '7278576084',
    '803 Marsh Underpass Suite 124', 'West Tonyaside', 'GA', '75340', '1986-01-02', 2,
    'LIC100157', '2013-09-07', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Brooke', 'Hancock', 'Male', 'General Surgery', 'jennifer46@gmail.com', '7357438421',
    '31780 Stein Drives Apt. 578', 'Kimberlyberg', 'CT', '68153', '1968-07-11', 15,
    'LIC100158', '2013-12-26', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jenny', 'Stevens', 'Other', 'Cardiology', 'collinsbradley@wiggins.com', '8409435334',
    '571 Hernandez Harbor Apt. 098', 'East Amyside', 'KY', '19055', '1978-10-09', 2,
    'LIC100159', '2020-04-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'John', 'Jones', 'Male', 'Cardiology', 'bwilliams@yahoo.com', '0160166299',
    '545 Jennifer Skyway Apt. 792', 'Port Leahmouth', 'NH', '41184', '1991-03-02', 40,
    'LIC100160', '2018-07-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jesse', 'Walker', 'Male', 'Radiology', 'philip55@yahoo.com', '7017157724',
    '928 Richard Station Apt. 581', 'Amandafurt', 'MT', '31771', '1976-01-29', 8,
    'LIC100161', '2019-10-26', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Erik', 'Olson', 'Male', 'Radiology', 'jared96@bradley-peterson.com', '2197199758',
    '2461 Gina Ranch', 'Murphyton', 'IL', '18709', '1959-07-05', 17,
    'LIC100162', '2023-05-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Dwayne', 'Hernandez', 'Male', 'Gastroenterology', 'cgilbert@gmail.com', '3549465190',
    '40580 Jacqueline View Suite 140', 'South Jacqueline', 'SC', '42198', '1985-07-18', 39,
    'LIC100163', '2017-05-27', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Patrick', 'Gardner', 'Other', 'Neurology', 'jtaylor@bridges-ward.biz', '2422010276',
    '26796 Shawn Manors', 'Cruzbury', 'NE', '79743', '1960-01-01', 11,
    'LIC100164', '2020-04-30', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Tyrone', 'Simon', 'Male', 'Gastroenterology', 'khouse@yahoo.com', '0097519712',
    '8189 John Roads Apt. 894', 'West Amandatown', 'NH', '67696', '1991-06-05', 2,
    'LIC100165', '2020-04-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jessica', 'Fisher', 'Other', 'Oncology', 'gary94@hotmail.com', '9407929049',
    '7128 Melissa Harbors', 'Davidview', 'KS', '02362', '1967-02-01', 26,
    'LIC100166', '2020-10-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Greg', 'Vargas', 'Male', 'Neurology', 'lwood@patton-young.com', '8051292766',
    '723 Brown Greens', 'North Garyfurt', 'ME', '62926', '1995-09-25', 38,
    'LIC100167', '2014-06-21', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Noah', 'Thornton', 'Other', 'Pediatrics', 'dustin60@yahoo.com', '7658018569',
    '4414 Murray Spring Apt. 938', 'Ericaburgh', 'OH', '01887', '1960-01-27', 7,
    'LIC100168', '2024-08-23', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Carlos', 'Jenkins', 'Female', 'Gastroenterology', 'ubell@king-johnson.org', '1093911192',
    '921 Jon Mountain Apt. 746', 'Jonathanland', 'WI', '08678', '1985-07-18', 8,
    'LIC100169', '2017-02-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Marvin', 'Brown', 'Other', 'Cardiology', 'scottvasquez@gmail.com', '9627128639',
    '4101 Ashley Glen', 'Smithfort', 'SD', '84431', '1959-07-22', 23,
    'LIC100170', '2011-02-21', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Elizabeth', 'Adams', 'Other', 'General Surgery', 'gandrews@hotmail.com', '7766183067',
    '855 Morales Roads', 'West Amandamouth', 'NH', '38506', '1973-04-26', 5,
    'LIC100171', '2013-07-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Angela', 'Ponce', 'Female', 'Cardiology', 'heather15@miller-chen.com', '2030937618',
    '8700 Brown Turnpike Apt. 613', 'Bentleyside', 'WA', '76437', '1975-05-08', 27,
    'LIC100172', '2011-09-21', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Benjamin', 'Thomas', 'Male', 'Oncology', 'nmeadows@sanchez.com', '0204179291',
    '79931 Ronald Valleys', 'Nguyenshire', 'DC', '42652', '1974-01-02', 24,
    'LIC100173', '2023-07-01', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Brandon', 'Thompson', 'Female', 'Orthopedics', 'hillkatherine@horton.com', '7390219620',
    '00219 Butler Valley Suite 232', 'Alexandrachester', 'HI', '80525', '1962-01-21', 28,
    'LIC100174', '2020-08-22', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Hector', 'Porter', 'Other', 'Dermatology', 'michael08@lee.com', '9588373403',
    '77220 Deanna Haven', 'South John', 'WV', '59895', '1962-06-11', 40,
    'LIC100175', '2012-04-09', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Joy', 'Buckley', 'Other', 'Radiology', 'kristenwashington@jones.info', '9956353153',
    '63631 Richards Center', 'Thomasmouth', 'MS', '49454', '1968-10-11', 30,
    'LIC100176', '2018-04-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jennifer', 'Chen', 'Other', 'Gastroenterology', 'matthewjohnson@hotmail.com', '0421776253',
    '292 Christopher Walks Suite 397', 'Ramirezchester', 'IA', '32984', '1981-10-07', 18,
    'LIC100177', '2017-11-19', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Bethany', 'Snow', 'Male', 'Neurology', 'butlerbradley@quinn-gordon.biz', '8671773180',
    '25431 Timothy Inlet Apt. 799', 'South Stevenberg', 'VT', '53632', '1972-01-30', 18,
    'LIC100178', '2023-12-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Monica', 'Sims', 'Male', 'Radiology', 'cruzhannah@johnson.org', '8931950850',
    '5790 Richardson Rue', 'New Jennaborough', 'MA', '31779', '1996-03-20', 37,
    'LIC100179', '2012-06-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Deborah', 'Mclaughlin', 'Female', 'General Surgery', 'lukehurst@frazier.com', '7788178847',
    '137 Christopher Fall Suite 112', 'Danielberg', 'FL', '27273', '1994-12-05', 2,
    'LIC100180', '2021-03-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Andrew', 'Butler', 'Female', 'Orthopedics', 'creed@newman.com', '8569557988',
    '4924 Kristina Forks Suite 540', 'West Justin', 'RI', '21576', '1995-12-04', 32,
    'LIC100181', '2015-05-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Ian', 'Thompson', 'Female', 'General Surgery', 'johnwilliams@andrews-alexander.com', '2380552578',
    '410 Velazquez Trafficway', 'South Sarah', 'AL', '97297', '1996-08-29', 18,
    'LIC100182', '2019-02-16', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Mark', 'Thornton', 'Other', 'Dermatology', 'tara92@hotmail.com', '7517028140',
    '375 Mark Rest Apt. 983', 'Jamesland', 'NV', '89245', '1965-06-10', 36,
    'LIC100183', '2019-03-16', FALSE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Preston', 'Henry', 'Male', 'Neurology', 'raymond65@watson-mitchell.com', '4781376742',
    '629 Douglas Hollow Suite 851', 'Davischester', 'KY', '54832', '1971-05-25', 16,
    'LIC100184', '2019-12-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Steven', 'Bradley', 'Female', 'Urology', 'jacobjames@henry.org', '4787300244',
    '46273 David Harbor Suite 195', 'Cunninghamview', 'TX', '62896', '1967-08-20', 16,
    'LIC100185', '2016-11-04', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'William', 'Johnston', 'Other', 'Radiology', 'bonniethomas@yahoo.com', '2520456504',
    '183 Kathy Rapid Apt. 855', 'Josephstad', 'ND', '76528', '1983-06-04', 29,
    'LIC100186', '2024-07-02', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Douglas', 'Taylor', 'Male', 'Dermatology', 'kimberly65@gmail.com', '1328338988',
    '7112 Timothy Inlet', 'Donmouth', 'PA', '69067', '1982-10-09', 15,
    'LIC100187', '2013-06-05', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jennifer', 'Johnson', 'Male', 'Dermatology', 'davidbenson@perez.com', '6110760310',
    '1401 Contreras Throughway', 'Port Davidborough', 'ID', '24720', '1983-06-02', 38,
    'LIC100188', '2010-12-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Christopher', 'Singleton', 'Other', 'Urology', 'michael89@gmail.com', '8911908334',
    '013 Richardson Radial', 'South Emily', 'HI', '47008', '1985-04-30', 23,
    'LIC100189', '2017-09-17', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jason', 'Perez', 'Other', 'Urology', 'david18@simpson.com', '8015716479',
    '738 Roberts Walk Suite 317', 'Harryfort', 'CT', '52453', '1989-04-21', 22,
    'LIC100190', '2019-05-22', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Donna', 'Miller', 'Female', 'Dermatology', 'lmorales@figueroa.com', '5353961367',
    '994 Kelly Shores Suite 784', 'Port Shawn', 'KS', '64639', '1993-05-02', 20,
    'LIC100191', '2014-06-04', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Courtney', 'Taylor', 'Male', 'Pediatrics', 'greertyrone@stanton.org', '5249911877',
    '7784 Pacheco Plains', 'Port Anthonychester', 'DE', '50784', '1990-02-15', 21,
    'LIC100192', '2015-11-06', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Melissa', 'Ramos', 'Other', 'Orthopedics', 'thompsondonna@dyer-martin.biz', '2467197889',
    '8280 Baker Ramp Suite 954', 'Bryanshire', 'DC', '48527', '1983-03-28', 13,
    'LIC100193', '2024-04-08', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Judy', 'Johnson', 'Female', 'Dermatology', 'wdavis@yahoo.com', '6503334911',
    '52085 Steven Way Suite 986', 'Andrewfort', 'AK', '41987', '1985-03-14', 38,
    'LIC100194', '2020-03-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Peter', 'Armstrong', 'Other', 'Gastroenterology', 'vazquezjamie@yahoo.com', '8529456371',
    '4049 Ballard Road', 'Lake Meganville', 'MA', '36331', '1964-01-27', 19,
    'LIC100195', '2020-02-18', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Laurie', 'Alvarez', 'Male', 'Dermatology', 'laura48@reynolds-fernandez.com', '6649878208',
    '737 Giles Place', 'Michaelton', 'ID', '48247', '1990-12-20', 15,
    'LIC100196', '2013-01-04', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'John', 'Francis', 'Female', 'Cardiology', 'ejenkins@hotmail.com', '3644249363',
    '30347 Castro Mews', 'Lucaston', 'GA', '36245', '1968-10-12', 35,
    'LIC100197', '2010-12-29', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Jonathan', 'Lara', 'Male', 'Cardiology', 'stuarttodd@brown.com', '9416516231',
    '984 Wilkerson Freeway', 'Port Lindsaymouth', 'OR', '97132', '1986-01-12', 36,
    'LIC100198', '2024-03-16', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Kaitlin', 'Young', 'Male', 'Radiology', 'drewthompson@yahoo.com', '7649078515',
    '3425 Baldwin View Suite 090', 'Lake Samanthabury', 'OH', '50923', '1980-07-16', 7,
    'LIC100199', '2021-05-14', TRUE
);

INSERT INTO doctors (
    first_name, last_name, gender, specialization, email, phone, address, city,
    state, postal_code, date_of_birth, experience_years, license_number,
    joining_date, is_active
) VALUES (
    'Susan', 'Cox', 'Other', 'Dermatology', 'miaprice@pennington-hardin.com', '1343275604',
    '7656 Madison Square', 'Williamstad', 'PA', '96082', '1996-10-07', 31,
    'LIC100200', '2023-01-18', TRUE
);

-- Retrieve all records from doctors table
SELECT * FROM doctors;
