-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users(
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  username VARCHAR(150) UNIQUE,
  email VARCHAR(150) UNIQUE,
  password VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uploaded_files(
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name VARCHAR(255),
  filepath VARCHAR(255),
  type VARCHAR(50),
  size BIGINT,
  uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- User qo'shish
INSERT INTO users (id, username, email, password, created_at) VALUES
(gen_random_uuid(), 'user_1', 'user_1@example.com', 'password_1', NOW()),
(gen_random_uuid(), 'user_2', 'user_2@example.com', 'password_2', NOW()),
(gen_random_uuid(), 'user_3', 'user_3@example.com', 'password_3', NOW()),
(gen_random_uuid(), 'user_4', 'user_4@example.com', 'password_4', NOW()),
(gen_random_uuid(), 'user_5', 'user_5@example.com', 'password_5', NOW()),
(gen_random_uuid(), 'user_6', 'user_6@example.com', 'password_6', NOW()),
(gen_random_uuid(), 'user_7', 'user_7@example.com', 'password_7', NOW()),
(gen_random_uuid(), 'user_8', 'user_8@example.com', 'password_8', NOW()),
(gen_random_uuid(), 'user_9', 'user_9@example.com', 'password_9', NOW()),
(gen_random_uuid(), 'user_10', 'user_10@example.com', 'password_10', NOW()),
(gen_random_uuid(), 'user_11', 'user_11@example.com', 'password_11', NOW()),
(gen_random_uuid(), 'user_12', 'user_12@example.com', 'password_12', NOW()),
(gen_random_uuid(), 'user_13', 'user_13@example.com', 'password_13', NOW()),
(gen_random_uuid(), 'user_14', 'user_14@example.com', 'password_14', NOW()),
(gen_random_uuid(), 'user_15', 'user_15@example.com', 'password_15', NOW()),
(gen_random_uuid(), 'user_16', 'user_16@example.com', 'password_16', NOW()),
(gen_random_uuid(), 'user_17', 'user_17@example.com', 'password_17', NOW()),
(gen_random_uuid(), 'user_18', 'user_18@example.com', 'password_18', NOW()),
(gen_random_uuid(), 'user_19', 'user_19@example.com', 'password_19', NOW()),
(gen_random_uuid(), 'user_20', 'user_20@example.com', 'password_20', NOW()),
(gen_random_uuid(), 'user_21', 'user_21@example.com', 'password_21', NOW()),
(gen_random_uuid(), 'user_22', 'user_22@example.com', 'password_22', NOW()),
(gen_random_uuid(), 'user_23', 'user_23@example.com', 'password_23', NOW()),
(gen_random_uuid(), 'user_24', 'user_24@example.com', 'password_24', NOW()),
(gen_random_uuid(), 'user_25', 'user_25@example.com', 'password_25', NOW());




-- File qo'shish
INSERT INTO uploaded_files (id, name, filepath, type, size, uploaded_at) VALUES
(gen_random_uuid(), 'file_1.txt', '/uploads/file_1.txt', 'image/png', 104857, NOW()),
(gen_random_uuid(), 'file_2.txt', '/uploads/file_2.txt', 'application/pdf', 98234, NOW()),
(gen_random_uuid(), 'file_3.txt', '/uploads/file_3.txt', 'text/plain', 76342, NOW()),
(gen_random_uuid(), 'file_4.txt', '/uploads/file_4.txt', 'image/png', 184221, NOW()),
(gen_random_uuid(), 'file_5.txt', '/uploads/file_5.txt', 'application/pdf', 54124, NOW()),
(gen_random_uuid(), 'file_6.txt', '/uploads/file_6.txt', 'text/plain', 144422, NOW()),
(gen_random_uuid(), 'file_7.txt', '/uploads/file_7.txt', 'image/png', 93322, NOW()),
(gen_random_uuid(), 'file_8.txt', '/uploads/file_8.txt', 'application/pdf', 60213, NOW()),
(gen_random_uuid(), 'file_9.txt', '/uploads/file_9.txt', 'text/plain', 124433, NOW()),
(gen_random_uuid(), 'file_10.txt', '/uploads/file_10.txt', 'image/png', 75523, NOW()),
(gen_random_uuid(), 'file_11.txt', '/uploads/file_11.txt', 'application/pdf', 176123, NOW()),
(gen_random_uuid(), 'file_12.txt', '/uploads/file_12.txt', 'text/plain', 99442, NOW()),
(gen_random_uuid(), 'file_13.txt', '/uploads/file_13.txt', 'image/png', 134543, NOW()),
(gen_random_uuid(), 'file_14.txt', '/uploads/file_14.txt', 'application/pdf', 86521, NOW()),
(gen_random_uuid(), 'file_15.txt', '/uploads/file_15.txt', 'text/plain', 74213, NOW()),
(gen_random_uuid(), 'file_16.txt', '/uploads/file_16.txt', 'image/png', 102345, NOW()),
(gen_random_uuid(), 'file_17.txt', '/uploads/file_17.txt', 'application/pdf', 50312, NOW()),
(gen_random_uuid(), 'file_18.txt', '/uploads/file_18.txt', 'text/plain', 134543, NOW()),
(gen_random_uuid(), 'file_19.txt', '/uploads/file_19.txt', 'image/png', 76432, NOW()),
(gen_random_uuid(), 'file_20.txt', '/uploads/file_20.txt', 'application/pdf', 94212, NOW()),
(gen_random_uuid(), 'file_21.txt', '/uploads/file_21.txt', 'text/plain', 120432, NOW()),
(gen_random_uuid(), 'file_22.txt', '/uploads/file_22.txt', 'image/png', 65721, NOW()),
(gen_random_uuid(), 'file_23.txt', '/uploads/file_23.txt', 'application/pdf', 80421, NOW()),
(gen_random_uuid(), 'file_24.txt', '/uploads/file_24.txt', 'text/plain', 91023, NOW()),
(gen_random_uuid(), 'file_25.txt', '/uploads/file_25.txt', 'image/png', 100324, NOW());
