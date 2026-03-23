INSERT INTO website_comments_raw
(website_id, user_id, gender, city, city_type, page_name, rating, comment_text, created_at)
VALUES
('vote_site','u1','Male','NY','metropolitan','Login',1,'Login not working', NOW()),
('vote_site','u2','Female','TX','suburban','Verification',2,'OTP not coming', NOW()),
('vote_site','u3','Female','CA','metropolitan','Home',5,'Good website', NOW()),
('vote_site','u4','Male','AZ','rural','Register',1,'Page is slow', NOW()),
('vote_site','u5','Female','IL','metropolitan','Login',1,'Unable to login', NOW());
