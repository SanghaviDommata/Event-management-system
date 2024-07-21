CREATE TABLE USER (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender VARCHAR(10),
    Contact_no VARCHAR(15),
    User_type VARCHAR(50),
    username VARCHAR(50),
    password VARCHAR(50),
    E_no INT
);

CREATE TABLE EVENT (
    id INT PRIMARY KEY,
    E_manager INT,
    Event_type VARCHAR(50),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (E_manager) REFERENCES USER(id)
);

CREATE TABLE VENUE (
    Event_id INT,
    Date DATE,
    Timing TIME,
    FOREIGN KEY (Event_id) REFERENCES EVENT(id)
);

CREATE TABLE PAYMENT (
    Event_id INT,
    User_id INT,
    payment_mode VARCHAR(50),
    FOREIGN KEY (Event_id) REFERENCES EVENT(id),
    FOREIGN KEY (User_id) REFERENCES USER(id)
);