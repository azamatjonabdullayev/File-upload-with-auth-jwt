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
INSERT INTO uploaded_files (name, filepath, type, size)
VALUES
('report_q1.pdf', '/uploads/report_q1.pdf', 'pdf', 254000),
('profile_photo.jpg', '/uploads/profile_photo.jpg', 'jpg', 120456),
('presentation.pptx', '/uploads/presentation.pptx', 'pptx', 803500),
('backup_2024_03_01.zip', '/uploads/backup_2024_03_01.zip', 'zip', 15234000),
('invoice_145.csv', '/uploads/invoice_145.csv', 'csv', 2200),
('meeting_audio.mp3', '/uploads/meeting_audio.mp3', 'mp3', 2540000),
('contract.docx', '/uploads/contract.docx', 'docx', 54000),
('logo.svg', '/uploads/logo.svg', 'svg', 20480),
('screenshot.png', '/uploads/screenshot.png', 'png', 104600),
('resume.pdf', '/uploads/resume.pdf', 'pdf', 93000),
('financial_report.xlsx', '/uploads/financial_report.xlsx', 'xlsx', 455000),
('video_promo.mp4', '/uploads/video_promo.mp4', 'mp4', 4500000),
('design_mockup.psd', '/uploads/design_mockup.psd', 'psd', 5304000),
('manual.pdf', '/uploads/manual.pdf', 'pdf', 180000),
('test_script.py', '/uploads/test_script.py', 'py', 6400);
