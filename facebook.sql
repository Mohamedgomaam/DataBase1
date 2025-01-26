-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 03:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--
CREATE TABLE USew(fname varchar(255),lname varchar(255),DOB date,email varchar(255),phone varchar(22),about varchar(255),passwordd varchar(255),user_id int,PRIMARY KEY(user_id));
CREATE TABLE user_post_relationship(user_id int REFERENCES User (user_id) ,post_id int REFERENCES post (post_id),CONSTRAINT pk PRIMARY KEY (user_id,post_id),
                                    timeofsharing timestamp , Created_or_shared boolean);
CREATE TABLE chat(msg text,user_1 int, user_2 int, Timee timestamp, PRIMARY KEY(Timee,user_1,user_2),FOREIGN KEY (user_1) REFERENCES usew (user_id) ,FOREIGN KEY(user_2) REFERENCES usew(user_id));
CREATE TABLE PAGE(name text, Date_of_Creation timestamp, Created_by int , Company_email text, Total_likes int, page_id int PRIMARY KEY, FOREIGN KEY(Created_by) REFERENCES usew(user_id));
CREATE TABLE post(TITLE text,CREATED_BY int,DATE_OF_CREATION timestamp,LIKES int, post_iD int PRIMARY KEY,FOREIGN KEY(CREATED_BY) REFERENCES usew(user_id));
CREATE TABLE followedby(page_id int,user_id int,PRIMARY KEY(page_id,user_id),FOREIGN KEY(page_id) REFERENCES page(page_id)
                       ,FOREIGN KEY(user_id) REFERENCES usew(user_id));
CREATE TABLE friends ( friends_id  int ,user_id int ,PRIMARY KEY(friends_id,user_id),FOREIGN KEY(friends_id) REFERENCES usew(user_id),FOREIGN KEY(user_id) REFERENCES usew(user_id),timee timestamp);