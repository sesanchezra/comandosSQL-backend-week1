----SCRIPT CREACION DE TABLAS

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "role" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" int,
  "teacher" uuid,
  "category" int
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "course" uuid
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "levels" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "users" ADD FOREIGN KEY ("role") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher") REFERENCES "users" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level") REFERENCES "levels" ("id");




--- SCRIPT POBLACION DE TABLAS


--Poblacion de roles

insert into roles (
	"name" 
)
values(
	'student'
),('teacher'),('admin');

select id as role_id, "name" as role_name from roles;


--Poblacion de categorias

insert into categories (
	"name" 
)values(
	'Web Development'
),('Marketing'),('Finance'),('Data Analytics');

select id as category_id, "name" as category_name from categories;

--Poblacion de niveles

insert into levels (
	"name" 
)values(
	'Beginners'
),('intermediate'),('advanced');

select id as level_id, "name" as "level" from levels;

--Poblacion de usuarios

--

insert into users (
	id,
	"name" ,
	email ,
	"password" ,
	age ,
	"role" 
)values(
	'56aa9559-d46a-4837-b0c0-44e7ac7b3cb7',
	'Sebastian Sanchez Ramirez',
	'sebastiansanra@gmail.com',
	'1234567890',
	23,
	2
);

--

insert into users (
	id,
	"name" ,
	email ,
	"password" ,
	age ,
	"role" 
)values(
	'b6be8bc5-6255-439f-99c1-e37669977780',
	'Laura Franco Burgos',
	'laurafranco@gmail.com',
	'1234567890',
	23,
	1
);

--

insert into users (
	id,
	"name" ,
	email ,
	"password" ,
	age ,
	"role" 
)values(
	'23d0c4f0-76aa-4221-a9c0-d43381066fdd',
	'Elsy Ramirez Ortiz',
	'elsyramirez@gmail.com',
	'1234567890',
	57,
	3
);


select id as user_id, "name" as user_name, "role" as user_role from users;

--Poblacion de courses

--

insert into courses (
	id,
	title,
	description,
	"level" ,
	teacher ,
	category 
)
values(
	'48c35baa-5018-49b2-941e-0f854cccd401',
	'React.js - Level I',
	'The basics concepts to run your first project in react.js',
	1,
	'56aa9559-d46a-4837-b0c0-44e7ac7b3cb7',
	1
);

--

insert into courses (
	id,
	title,
	description,
	"level" ,
	teacher ,
	category 
)
values(
	'9919c91b-8b39-4b18-8ad6-831c1e7e0006',
	'Google Ads',
	'How to create an effective campaign with google ads',
	3,
	'56aa9559-d46a-4837-b0c0-44e7ac7b3cb7',
	2
);

--

insert into courses (
	id,
	title,
	description,
	"level" ,
	teacher ,
	category 
)
values(
	'38576d1d-2d51-4995-bb84-138a73df13c7',
	'¿ How the stock market works ? ',
	'Learn the basics of investing, and put your first buy in the stock market',
	2,
	'56aa9559-d46a-4837-b0c0-44e7ac7b3cb7',
	3
);

select * from courses;


--Poblacion de course_videos

--

insert into course_videos (
	id,
	title,
	url,
	course 
)values(
	'17afd247-36c4-4d53-8bd9-73bf11299897',
	'Our first react App',
	'https://www.youtube.com/watch?v=DutXvNkt11Q',
	'48c35baa-5018-49b2-941e-0f854cccd401'
);

--

insert into course_videos (
	id,
	title,
	url,
	course 
)values(
	'85edceb7-42af-454e-b87d-bd94d784ee8f',
	'Marketing Plan',
	'https://www.youtube.com/watch?v=4ti_uK60nLk',
	'9919c91b-8b39-4b18-8ad6-831c1e7e0006'
);

--

insert into course_videos (
	id,
	title,
	url,
	course 
)values(
	'f8f1d316-80b9-4ee6-9813-5fbd33949f4b',
	'The stock market',
	'https://www.youtube.com/watch?v=p7HKvqRI_Bo',
	'38576d1d-2d51-4995-bb84-138a73df13c7'
);

select title, course as course_id from course_videos;

