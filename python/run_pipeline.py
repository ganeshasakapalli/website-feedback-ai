from transformers import pipeline
import mysql.connector

# DB connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="YOUR_PASSWORD",
    database="ai_project"
)

cursor = conn.cursor()

# Fetch comments
query = """
SELECT comment_clean
FROM website_comments_clean
"""

cursor.execute(query)
rows = cursor.fetchall()

comments = [row[0] for row in rows]

# Combine comments
text = " ".join(comments[:50])

# Summarization model
summarizer = pipeline("summarization", model="facebook/bart-large-cnn")

summary = summarizer(text, max_length=120, min_length=40, do_sample=False)[0]['summary_text']

print("Summary:")
print(summary)
