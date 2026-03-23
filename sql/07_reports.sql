-- By gender
SELECT gender, COUNT(*) FROM website_comments_clean GROUP BY gender;

-- By city type
SELECT city_type, COUNT(*) FROM website_comments_clean GROUP BY city_type;

-- Top topics
SELECT topic, COUNT(*) FROM website_ai_labels GROUP BY topic;
