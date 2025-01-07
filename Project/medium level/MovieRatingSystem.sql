--Creating a table to save the User_information

CREATE TABLE user_info (
User_ID INT PRIMARY KEY AUTO_INCREMENT,
User_Name VARCHAR(200),
User_Age INT,
User_MailID VARCHAR(1000),
User_Gender VARCHAR(50)
);


--Insert the Dataset of the user into the User_info table

INSERT INTO user_info (User_ID, User_Name, User_Age, User_MailID, User_Gender) VALUES
(1, 'Tharun Raj', 28, 'tharun.raj@example.com', 'Male'),
(2, 'Padma Lakshmi', 25, 'padma.lakshmi@example.com', 'Female'),
(3, 'Raghavan Pillai', 32, 'raghavan.pillai@example.com', 'Male'),
(4, 'Chitra Nair', 27, 'chitra.nair@example.com', 'Female'),
(5, 'Venkatesh Babu', 35, 'venkatesh.babu@example.com', 'Male'),
(6, 'Anjali Shenoy', 30, 'anjali.shenoy@example.com', 'Female'),
(7, 'Manoj Reddy', 29, 'manoj.reddy@example.com', 'Male'),
(8, 'Meenakshi Rao', 24, 'meenakshi.rao@example.com', 'Female'),
(9, 'Suraj Kumar', 33, 'suraj.kumar@example.com', 'Male'),
(10, 'Lalitha Iyer', 26, 'lalitha.iyer@example.com', 'Female'),
(11, 'Karthikeyan', 31, 'karthikeyan@example.com', 'Male'),
(12, 'Sita Menon', 22, 'sita.menon@example.com', 'Female'),
(13, 'Gokulakrishnan', 34, 'gokulakrishnan@example.com', 'Male'),
(14, 'Sujatha Pillai', 29, 'sujatha.pillai@example.com', 'Female'),
(15, 'Rajeshwaran', 27, 'rajeshwaran@example.com', 'Male'),
(16, 'Devi Mohan', 32, 'devi.mohan@example.com', 'Female'),
(17, 'Vikram Babu', 30, 'vikram.babu@example.com', 'Male'),
(18, 'Rani Krishnan', 25, 'rani.krishnan@example.com', 'Female'),
(19, 'Pradeep Rajan', 28, 'pradeep.rajan@example.com', 'Male'),
(20, 'Lakshmi Bhaskar', 33, 'lakshmi.bhaskar@example.com', 'Female'),
(21, 'Krishna Hari', 31, 'krishna.hari@example.com', 'Male'),
(22, 'Sowmya Nair', 27, 'sowmya.nair@example.com', 'Female'),
(23, 'Yashwanth Ravi', 26, 'yashwanth.ravi@example.com', 'Male'),
(24, 'Neelima Venkatesh', 29, 'neelima.venkatesh@example.com', 'Female'),
(25, 'Rajendra Krishnan', 32, 'rajendra.krishnan@example.com', 'Male');


--A SQL query to create a table to save the Movie's Data


CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(900),
    Genre VARCHAR(70)
    
);


-- A SQL query to insert the movie Data records into the table 

INSERT INTO movies (Movie_ID, Title, Genre) VALUES
(1, 'Baahubali: The Beginning', 'Action/Drama/Telugu'),
(2, 'Baahubali: The Conclusion', 'Action/Drama/Telugu'),
(3, 'Mersal', 'Action/Thriller/Tamil'),
(4, 'Vikram', 'Action/Thriller/Tamil'),
(5, 'RRR', 'Action/Drama/Telugu'),
(6, 'Super Deluxe', 'Drama/Thriller/Tamil'),
(7, 'Kumbalangi Nights', 'Drama/Malayalam'),
(8, 'Premam', 'Romance/Drama/Malayalam'),
(9, 'Ala Vaikunthapurramuloo', 'Romance/Comedy/Telugu'),
(10, 'Arjun Reddy', 'Romance/Drama/Telugu'),
(11, 'Sye Raa Narasimha Reddy', 'Action/History/Telugu'),
(12, 'Rangasthalam', 'Action/Drama/Telugu'),
(13, 'Kantara', 'Action/Thriller/Kannada'),
(14, 'KGF: Chapter 1', 'Action/Drama/Kannada'),
(15, 'Kantara: Chapter 2', 'Action/Thriller/Kannada'),
(16, 'Thuppakki', 'Action/Thriller/Tamil'),
(17, 'Vada Chennai', 'Crime/Drama/Tamil'),
(18, 'Mahanati', 'Biographical/Drama/Telugu'),
(19, 'Lucifer', 'Action/Thriller/Malayalam'),
(20, 'Ninnindale', 'Romance/Drama/Kannada');






-- Write a SQL query to Create a table for the Ratings


CREATE TABLE Ratings (
    Rating_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Movie_ID INT,
    FOREIGN KEY (User_ID) REFERENCES user_info(User_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID),
    Rating Char(5)
);


INSERT INTO ratings (Rating_ID, User_ID, Movie_ID, Rating) VALUES
(1, 1, 1, 5),  -- Tharun Raj rates 'Baahubali: The Beginning' 5 stars
(2, 2, 2, 4),  -- Padma Lakshmi rates 'Baahubali: The Conclusion' 4 stars
(3, 3, 3, 3),  -- Raghavan Pillai rates 'Mersal' 3 stars
(4, 4, 4, 5),  -- Chitra Nair rates 'Vikram' 5 stars
(5, 5, 5, 4),  -- Venkatesh Babu rates 'RRR' 4 stars
(6, 6, 6, 3),  -- Anjali Shenoy rates 'Super Deluxe' 3 stars
(7, 7, 7, 5),  -- Manoj Reddy rates 'Kumbalangi Nights' 5 stars
(8, 8, 8, 4),  -- Meenakshi Rao rates 'Premam' 4 stars
(9, 9, 9, 5),  -- Suraj Kumar rates 'Ala Vaikunthapurramuloo' 5 stars
(10, 10, 10, 4), -- Lalitha Iyer rates 'Arjun Reddy' 4 stars
(11, 11, 11, 3), -- Karthikeyan rates 'Sye Raa Narasimha Reddy' 3 stars
(12, 12, 12, 5), -- Sita Menon rates 'Rangasthalam' 5 stars
(13, 13, 13, 4), -- Gokulakrishnan rates 'Kantara' 4 stars
(14, 14, 14, 5), -- Sujatha Pillai rates 'KGF: Chapter 1' 5 stars
(15, 15, 15, 4), -- Rajeshwaran rates 'Kantara: Chapter 2' 4 stars
(16, 16, 16, 5), -- Devi Mohan rates 'Thuppakki' 5 stars
(17, 17, 17, 3), -- Vikram Babu rates 'Vada Chennai' 3 stars
(18, 18, 18, 4), -- Rani Krishnan rates 'Mahanati' 4 stars
(19, 19, 19, 5), -- Pradeep Rajan rates 'Lucifer' 5 stars
(20, 20, 20, 3), -- Lakshmi Bhaskar rates 'Ninnindale' 3 stars
(21, 21, 1, 4),  -- Krishna Hari rates 'Baahubali: The Beginning' 4 stars
(22, 22, 2, 3),  -- Sowmya Nair rates 'Baahubali: The Conclusion' 3 stars
(23, 23, 3, 5),  -- Yashwanth Ravi rates 'Mersal' 5 stars
(24, 24, 4, 4),  -- Neelima Venkatesh rates 'Vikram' 4 stars
(25, 25, 5, 5);  -- Rajendra Krishnan rates 'RRR' 5 stars









-- A SQL query to get the Ratings based on the ratings given by the user


SELECT ratings.User_ID, user_info.User_Name, ratings.Movie_ID, movies.Title, ratings.Rating
FROM ratings
JOIN user_info ON ratings.User_ID = user_info.User_ID
JOIN movies ON ratings.Movie_ID = movies.Movie_ID
WHERE 
    ratings.Rating = 5;



--In this Query with the slight change we get the both movie which got 5 star or 4 star Rating


SELECT ratings.User_ID, user_info.User_Name, ratings.Movie_ID, movies.Title, ratings.Rating
FROM ratings
JOIN user_info ON ratings.User_ID = user_info.User_ID
JOIN movies ON ratings.Movie_ID = movies.Movie_ID
WHERE 
    ratings.Rating = 5 or 4;
