CREATE TABLE teacher (
    teacher_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(255) NOT NULL,
    teacher_id INT REFERENCES teacher(teacher_id)
);

CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL
);

CREATE TABLE capitals (
    capital_id SERIAL PRIMARY KEY,
    capital_name VARCHAR(255) NOT NULL,
    country_id INT UNIQUE REFERENCES countries(country_id)
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL
);

CREATE TABLE user_courses (
    user_id INT REFERENCES users(user_id),
    course_id INT REFERENCES courses(course_id),
    PRIMARY KEY (user_id, course_id)
);