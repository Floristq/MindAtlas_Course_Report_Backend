SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP DATABASE IF EXISTS codetest2;
CREATE DATABASE codetest2;
USE codetest2;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userID`  int NOT NULL auto_increment,
  `firstname` varchar(255),
  `surname` varchar(255),
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO users (firstname, surname) VALUES ("Gustave", "Kateb");
INSERT INTO users (firstname, surname) VALUES ("Julien", "Nizan");
INSERT INTO users (firstname, surname) VALUES ("Samuel", "Fisher");
INSERT INTO users (firstname, surname) VALUES ("Seamus", "Cowden");
INSERT INTO users (firstname, surname) VALUES ("Mike", "Baker");
INSERT INTO users (firstname, surname) VALUES ("Jordan", "Trace");
INSERT INTO users (firstname, surname) VALUES ("Eliza", "Cohen");
INSERT INTO users (firstname, surname) VALUES ("Zofia", "Bosak");
INSERT INTO users (firstname, surname) VALUES ("Jack", "Estrada");
INSERT INTO users (firstname, surname) VALUES ("Monika", "Weiss");
INSERT INTO users (firstname, surname) VALUES ("Elias", "Kotz");
INSERT INTO users (firstname, surname) VALUES ("Timur", "Glazkov");
INSERT INTO users (firstname, surname) VALUES ("Shuhrat", "Kessikbayer");
INSERT INTO users (firstname, surname) VALUES ("James", "Porter");

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `courseID`  int NOT NULL auto_increment,
  `description` varchar(255),
  PRIMARY KEY (`courseID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO courses(description) VALUES ("Bomb Detection");
INSERT INTO courses(description) VALUES ('Defuser lessons');
INSERT INTO courses(description) VALUES ('Wall Reinforcement');
INSERT INTO courses(description) VALUES ('Drone lessons');
INSERT INTO courses(description) VALUES ('Shooting range rules');

-- ----------------------------
-- Table structure for enrolment data
-- ----------------------------
DROP TABLE IF EXISTS `enrolments`;
CREATE TABLE `enrolments`  (
  `enrolmentID`  int NOT NULL auto_increment,
  `userID` int,
  `courseID` int,
  `CompletionStatus` varchar(255),
  PRIMARY KEY (`enrolmentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (1,1, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (1,2, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (1,3, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (1,4, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (1,5, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (2,1, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (2,2, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (2,3, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (2,4, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (2,5, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (3,1, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (3,2, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (3,3, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (3,4, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (3,5, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (4,1, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (4,2, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (4,3, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (4,4, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (4,5, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (5,1, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (5,2, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (5,3, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (5,4, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (5,5, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (6,1, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (6,2, "Not started");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (6,3, "In progress");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (6,4, "Completed");
INSERT INTO enrolments(userID, courseID, CompletionStatus) VALUES (6,5, "Not started");

SET FOREIGN_KEY_CHECKS = 1;
