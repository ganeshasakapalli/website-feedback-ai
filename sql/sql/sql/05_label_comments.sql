INSERT INTO website_ai_labels (clean_id, sentiment, topic, severity)
SELECT
  c.id,
  CASE
    WHEN c.rating <= 2 THEN 'negative'
    WHEN c.rating = 3 THEN 'neutral'
    ELSE 'positive'
  END,
  CASE
    WHEN c.comment_clean LIKE '%login%' THEN 'login_issue'
    WHEN c.comment_clean LIKE '%OTP%' THEN 'verification_issue'
    WHEN c.comment_clean LIKE '%slow%' THEN 'performance_issue'
    ELSE 'other'
  END,
  CASE
    WHEN c.rating <= 2 THEN 'high'
    ELSE 'low'
  END
FROM website_comments_clean c;
