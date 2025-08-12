

--create table  [User] and Task

CREATE TABLE [User] (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);
CREATE TABLE Task (
    id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL,
    updated_at DATETIME NOT NULL,
    user_id INT NULL,
    FOREIGN KEY (user_id) REFERENCES [User](id)
);

 -- Insert Data into Both of Table 

INSERT INTO [User] (name) VALUES('Alice'),('Bob'),('Charlie');
INSERT INTO Task (title, status, updated_at, user_id) VALUES
('Design homepage', 'pending', '2025-08-10 14:00:00', 1),
('Fix login bug', 'completed', '2025-08-09 09:30:00', 2),
('Write unit tests', 'pending', '2025-08-11 10:15:00', NULL), -- no assigned user
('Update documentation', 'completed', '2025-08-10 16:45:00', 1);

 -- Write queries 

 --1. Count tasks by status 
  
Select status, COUNT(*) AS task_count
From Task
Group By status;

--2. List users with no assigned tasks 

SELECT u.id, u.name
FROM [User] u
LEFT JOIN Task t ON u.id = t.user_id
WHERE t.id IS NULL;


--3. Find the most recently updated task
SELECT TOP 1 *
FROM Task
ORDER BY updated_at DESC;


--4. Join two tables to show assignments

SELECT t.id AS task_id, t.title, t.status, u.id AS user_id, u.name AS user_name
FROM Task t
LEFT JOIN [User] u ON t.user_id = u.id;

