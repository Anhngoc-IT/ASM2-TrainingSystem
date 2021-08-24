CREATE DATABASE trainingSystem;
GO
 -- DROP DATABASE trainingSystem;

USE trainingSystem;
GO

CREATE TABLE roles (
         
		 role_id      VARCHAR(50),
		 role_name    NVARCHAR(100) NOT NULL,

		 CONSTRAINT pk_roles PRIMARY KEY (role_id),
);
GO

CREATE TABLE _user (
       
	   _user_id          VARCHAR(50),
	   user_password     VARCHAR(20) NOT NULL,
	   user_fullname     NVARCHAR(100) NOT NULL,
	   user_avatar       VARCHAR(255) NOT NULL,
	   user_email        VARCHAR(50) NOT NULL UNIQUE,
	   user_phone        VARCHAR(50) NOT NULL,
	   user_address      VARCHAR(100) NOT NULL,
	   user_detail       NVARCHAR(100) NOT NULL,
	   role_id           VARCHAR(50),	   
	  
	  CONSTRAINT pk_user PRIMARY KEY (_user_id),

	  
	  CONSTRAINT fk_user FOREIGN KEY (role_id) REFERENCES roles(role_id),

);
GO

CREATE TABLE topic (
            
		 topic_id                   VARCHAR(50), 
		 topic_name                 NVARCHAR(50) NOT NULL,
		 topic_description          NVARCHAR(100) NOT NULL,

		 CONSTRAINT pk_topic PRIMARY KEY (topic_id),
);
GO

--DELETE FROM category;
CREATE TABLE category (
          
		 category_id                VARCHAR(50),
		 category_name              VARCHAR(50) NOT NULL,
		 category_description       NVARCHAR(100) NOT NULL,

		 CONSTRAINT pk_category PRIMARY KEY (category_id ),
);
GO


CREATE TABLE course (
          
		  course_id                  VARCHAR(50),
		  course_name                VARCHAR(50) NOT NULL, 
		  course_enroll_code         VARCHAR(100) NOT NULL UNIQUE,
		  course_content             NVARCHAR(100) NOT NULL,
		  course_thumbnail           VARCHAR(255) NOT NULL,
		  course_description         NVARCHAR(100) NOT NULL,
		  course_duration            VARCHAR(50) NOT NULL,
		  course_schedule            VARCHAR(50) NOT NULL,
		  course_created_time        DATE,
		 
		  topic_id                   VARCHAR(50) ,
		  category_id                VARCHAR(50) ,

		  CONSTRAINT pk_course PRIMARY KEY (course_id),

		  CONSTRAINT fk_course_topic FOREIGN KEY (topic_id) REFERENCES topic (topic_id),
		  CONSTRAINT fk_course_category FOREIGN KEY (category_id) REFERENCES category (category_id),

);

CREATE TABLE user_course (
          
		  course_id                  VARCHAR(50),
		  _user_id                    VARCHAR(50),

		  CONSTRAINT fk_user_course FOREIGN KEY (course_id) REFERENCES course (course_id),
		  CONSTRAINT fk_course_user FOREIGN KEY (_user_id) REFERENCES _user (_user_id),
);

CREATE TABLE user_topic (
        
		_user_id                      VARCHAR(50),
		topic_id                      VARCHAR(50),

		CONSTRAINT fk_user_topic FOREIGN KEY (_user_id) REFERENCES _user (_user_id),
		CONSTRAINT fk_topic_user FOREIGN KEY (topic_id) REFERENCES topic (topic_id),

);



