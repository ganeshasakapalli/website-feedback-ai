## 1. Purpose (Objective) :
The objective of this project is to analyze user feedback collected from the website and convert it into structured insights, including sentiment, topic categorization, and summarized reports to support product improvements.

## 2. References Used :
# Database & SQL Logic :
MySQL Official Documentation
https://dev.mysql.com/doc/

Used for:
Table creation (CREATE TABLE)
Data transformation (TRIM, LOWER)
Aggregation (COUNT, SUM, GROUP BY)
Data loading (INSERT INTO ... SELECT)
Joining tables (JOIN)

# NLP & Summarization :
Hugging Face Transformers Documentation
https://huggingface.co/docs/transformers

Used for:
Text summarization using pre-trained models
Pipeline-based NLP implementation

## Data Processing Concept :
ETL (Extract, Transform, Load) concept
https://aws.amazon.com/what-is/etl/

Used for structuring the workflow:
Extract → website comments
Transform → cleaning, classification
Load → summary tables

## 3. Customization Based on Project Requirements :
# A. Custom Database Design :
Standard SQL table structures were modified to create:
website_comments_raw → stores original feedback
website_comments_clean → cleaned and deduplicated data
website_ai_labels → sentiment, topic, severity
website_feedback_summaries → final report

Additional fields were introduced:
gender
city_type (metropolitan / suburban / rural)
page_name
rating
These fields were added to support user segmentation and page-level analysis, which are specific to the business requirement.

# B. Data Cleaning & Deduplication :
Standard SQL functions were combined and customized:

TRIM() → remove unwanted spaces
LOWER() → normalize text
MD5() → generate hash values

This combination was used to:
detect duplicate comments
ensure accurate reporting

# C. Classification Logic :
Instead of using only AI models, an initial rule-based system was implemented:
Sentiment derived from rating
Topics identified using keyword patterns
Severity determined based on issue impact

This approach ensures:
faster implementation
easier explainability
consistent results

# D. Reporting Logic :
Standard SQL aggregation techniques were customized to generate business insights:
total comments count
sentiment distribution
top recurring issues
comments by gender
comments by city type
most affected website pages

This directly aligns with the requirement to identify:
who is reporting issues, where they are from, and what problems they are facing.

# E. AI Summarization Adaptation :
Using Hugging Face transformers:
comments are fetched from the database
combined into a single text input
summarized into a concise report

This step converts:
multiple raw comments → a readable executive summary

## 4. Outcome :
The final system transforms raw website feedback into:
structured data (cleaned and labeled)
analytical insights (counts and distributions)
summarized reports (AI-generated)
