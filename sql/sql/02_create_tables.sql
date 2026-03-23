-- Raw comments table
CREATE TABLE IF NOT EXISTS website_comments_raw (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  website_id VARCHAR(50),
  user_id VARCHAR(50),
  gender VARCHAR(20),
  city VARCHAR(50),
  city_type VARCHAR(20),
  page_name VARCHAR(100),
  rating INT,
  comment_text TEXT,
  created_at DATETIME
);

-- Clean table
CREATE TABLE IF NOT EXISTS website_comments_clean (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  raw_id BIGINT,
  website_id VARCHAR(50),
  gender VARCHAR(20),
  city_type VARCHAR(20),
  page_name VARCHAR(100),
  rating INT,
  comment_clean TEXT,
  text_hash VARCHAR(100),
  created_at DATETIME
);

-- AI labels
CREATE TABLE IF NOT EXISTS website_ai_labels (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  clean_id BIGINT,
  sentiment VARCHAR(20),
  topic VARCHAR(50),
  severity VARCHAR(20)
);

-- Summary table
CREATE TABLE IF NOT EXISTS website_feedback_summaries (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  website_id VARCHAR(50),
  summary_date DATE,
  window_days INT,
  total_comments INT,
  pos_comments INT,
  neu_comments INT,
  neg_comments INT,
  top_topics TEXT,
  executive_summary TEXT
);
