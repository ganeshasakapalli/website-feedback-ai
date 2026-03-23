SELECT
  COUNT(*) AS total_comments,
  SUM(sentiment='positive') AS pos_comments,
  SUM(sentiment='neutral') AS neu_comments,
  SUM(sentiment='negative') AS neg_comments
FROM website_ai_labels;
