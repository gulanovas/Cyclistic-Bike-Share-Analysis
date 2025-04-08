Cyclistic Bike-Share Analysis
Google Data Analytics Capstone Project
📌 Overview
This project analyzes Cyclistic’s bike-share data to uncover trends in rider behavior and provide data-driven recommendations for marketing strategies. The goal was to compare casual riders (single-ride or day-pass users) and annual members to identify opportunities for converting casual users into subscribers.

🔗 View the full analysis: R Markdown Report | Tableau Dashboard

🛠️ Tools & Technologies
Data Cleaning & Processing: R (tidyverse), SQL (BigQuery, MySQL), Excel/Google Sheets

Visualization: ggplot2 (R), Tableau

Reporting: R Markdown, PowerPoint

📂 Dataset
Source: Divvy Bikes (Motivate International) (public dataset)

Time Period: 12 months (Jan–Dec 2022)

Size: ~5.7 million rows

📊 Analysis Workflow
Data Collection & Cleaning

Consolidated 12 CSV files into a single dataset.

Removed duplicates, null values, and irrelevant columns.

Added calculated fields (ride duration, day of week, etc.).

Exploratory Data Analysis (EDA)

Compared ride patterns between casual riders and members.

Analyzed peak usage times (hourly, daily, monthly).

Identified most popular stations and ride durations.

Visualization & Insights

Created interactive Tableau dashboards for stakeholder presentation.

Used ggplot2 in R for custom visualizations.

🔑 Key Findings
✔ Casual riders take longer trips on weekends, while members ride more consistently for weekday commutes.
✔ Peak hours for casual users: 12 PM – 5 PM (leisure rides).
✔ Top stations near tourist spots had higher casual ridership.

🚀 Recommendations
Targeted promotions: Offer weekend membership trials for casual riders.

Seasonal campaigns: Discounts during high-demand summer months.

Commuter incentives: Partner with businesses for corporate memberships.

📄 Files in This Repository
cyclistic_analysis.Rmd → Full R Markdown analysis

cyclistic_clean_data.csv → Processed dataset (sample)

/visualizations → Plots & Tableau exports

📖 How to Reproduce This Analysis
Download the dataset from Divvy Bikes.

Run the R script (cyclistic_analysis.Rmd) in RStudio.

For SQL queries, check the queries folder.

🎯 Why This Project?
This case study demonstrates my ability to:
✅ Work with large datasets efficiently (R, SQL).
✅ Perform end-to-end analysis (cleaning → visualization → storytelling).
✅ Deliver actionable business insights.
