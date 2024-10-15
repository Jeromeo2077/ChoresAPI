CREATE TABLE IF NOT EXISTS accounts (
    id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    name varchar(255) COMMENT 'User Name',
    email varchar(255) UNIQUE COMMENT 'User Email',
    picture varchar(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE chores (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    isComplete BOOLEAN DEFAULT false,
    completedAt DATETIME ON UPDATE CURRENT_TIMESTAMP
);

INSERT into
    chores (name, description)
VALUES (
        'Clean Room',
        'Clean the room because I have company coming over'
    ),
    (
        'Wash Dishes',
        'Wash the dishes from the dinner party last night'
    ),
    (
        'Take out Trash',
        'Take out the trash because it is overflowing'
    ),
    (
        'Mop Floor',
        'Mop the floor because it is dirty'
    ),
    (
        'Vacuum Carpet',
        'Vacuum the carpet because it is dirty'
    ),
    (
        'Clean Bathroom',
        'Clean the bathroom because it is dirty'
    ),
    (
        'Clean Kitchen',
        'Clean the kitchen because it is dirty'
    ),
    (
        'Clean Living Room',
        'Clean the living room because it is dirty'
    ),
    (
        'Clean Garage',
        'Clean the garage because it is dirty'
    ),
    (
        'Clean Car',
        'Clean the car because it is dirty'
    ),
    (
        'Clean Windows',
        'Clean the windows because they are dirty'
    ),
    (
        'Do Laundry',
        'Do the laundry'
    );