INSERT INTO website_comments_clean
(raw_id, website_id, gender, city_type, page_name, rating, comment_clean, text_hash, created_at)
SELECT
  id,
  website_id,
  gender,
  city_type,
  page_name,
  rating,
  TRIM(comment_text),
  MD5(LOWER(comment_text)),
  created_at
FROM website_comments_raw;
