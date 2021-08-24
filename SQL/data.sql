USE trainingSystem;


INSERT INTO roles(role_id, role_name) VALUES ('1', 'trainee'),
                                             ('2', 'admin'),
											 ('3', 'trainer'),
											 ('4', 'training staff');

SELECT * FROM roles;	

INSERT INTO _user(  _user_id,    user_password,         user_fullname    ,    user_avatar     ,   user_email    ,    user_phone ,     user_address ,   user_detail ,  role_id )    
           VALUES  ('Aa'    ,     'xyz'       ,          'Ng Van A'      ,    'C:\image\1.png',  'A@gmail.com'  ,   '113'       ,       '107-a'    ,   'hhh'       ,  '2'),
				   ('Cc'    ,     'xyz'       ,          'Ng Van A'      ,    'C:\image\1.png',  'C@gmail.com'  ,   '113'       ,       '107-a'    ,   'hhh'       ,  '3'),
				   ('Dd'    ,    '@123'       ,          'Ng VAN B'      ,    'C:\image\2.png',  'D@gmail.com'  ,   '113'       ,       '107-a'    ,   'hhh'       ,  '4');

SELECT * FROM _user;






INSERT INTO topic(topic_id,  topic_name,  topic_description )  VALUES ( '01',     'HTML',        'hoc di' ),
                                                                      ( '02',     'JAVA',        'hoc di' ),
																	  ( '03',     'CSS',         'hoc di' ),
																	  ( '04',    'JavaScript',   'hoc di' );
SELECT * FROM topic;

INSERT INTO category(category_id, category_name , category_description) VALUES ( '1'     ,  'a'     , 'b' ),
                                                                               ( '2'     ,  'a'     , 'b' ),
																			   ( '3'     ,  'a'     , 'b' ),
																			   ( '4'     ,  'a'     , 'b' );
SELECT * FROM category;

INSERT INTO course (course_id   ,     course_name ,   course_enroll_code,   course_content,   course_thumbnail ,  course_description        ,   course_duration,    course_schedule     ,        course_created_time  ,    topic_id,  category_id)
            VALUES ('BH-AF-1911',     'WEB'       ,   '123@123a'        ,   'hoc di'      ,  'C:\image\1.png'  ,  'Website'                 ,   '1 month'      ,    'three days of week',       '2021-06-01'          ,    '04'    ,   '1'),
			       ('BH-AF-1811',     'Ap'        ,   'hkt'             ,   'hoc di'      ,  'C:\image\1.png'  ,  'Advance Programming'     ,   '1 month'      ,    'three days of week',       '2021-05-02'          ,    '03'    ,   '2'),
				   ('BH-AF-1921',     'AP'        ,   'yknl'            ,   'hoc di'      ,  'C:\image\1.png'  ,  'Application Development' ,   '1 month'      ,    'three days of week',       '2021-04-03'          ,    '02'    ,   '3'),
				   ('BH-AF-1821',     'WEB'       ,   'ggh'             ,   'hoc di'      ,  'C:\image\1.png'  ,  'Website'                 ,   '1 month'      ,    'three days of week',       '2021-03-04'          ,    '01'    ,   '4');
SELECT * FROM course;

INSERT INTO user_course ( course_id , _user_id ) VALUES ('BH-AF-1911', 'Aa'),
                                                        ('BH-AF-1811', 'Aa'),
														('BH-AF-1921', 'Cc'),
														('BH-AF-1821', 'Dd');
SELECT * FROM user_course ;

INSERT INTO user_topic (_user_id, topic_id ) VALUES   ('Aa', '01'),
                                                      ('Aa', '02'),
													  ('Cc', '03'),
													  ('Dd', '04');
SELECT * FROM user_course;


		