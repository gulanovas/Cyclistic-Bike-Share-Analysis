<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cyclistic Bike-Share Analysis | Google Data Analytics Capstone</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
        }
        h1, h2, h3 {
            color: #2c3e50;
        }
        h1 {
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        h2 {
            border-left: 4px solid #3498db;
            padding-left: 10px;
            margin-top: 30px;
        }
        .emoji {
            font-size: 1.2em;
            margin-right: 5px;
        }
        .highlight {
            background-color: #eaf2f8;
            padding: 15px;
            border-radius: 5px;
            margin: 15px 0;
        }
        .checklist {
            list-style-type: none;
            padding-left: 0;
        }
        .checklist li:before {
            content: "✔ ";
            color: #27ae60;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            color: #2980b9;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .file-structure {
            background-color: #f5f5f5;
            padding: 15px;
            border-radius: 5px;
            font-family: monospace;
            white-space: pre;
            overflow-x: auto;
        }
    </style>
</head>
<body>
    <h1>Cyclistic Bike-Share Analysis <span style="font-size: 0.8em;">Google Data Analytics Capstone Project</span></h1>

    <div class="highlight">
        <h2><span class="emoji">📌</span> Overview</h2>
        <p>This project analyzes Cyclistic's bike-share data to uncover trends in rider behavior and provide data-driven recommendations for marketing strategies. The goal was to compare casual riders (single-ride or day-pass users) and annual members to identify opportunities for converting casual users into subscribers.</p>
        
        <p><strong>🔗 View the full analysis:</strong> <a href="#">R Markdown Report</a> | <a href="#">Tableau Dashboard</a></p>
    </div>

    <h2><span class="emoji">🛠️</span> Tools & Technologies</h2>
    <table>
        <tr>
            <th>Category</th>
            <th>Tools/Languages</th>
        </tr>
        <tr>
            <td>Data Cleaning & Processing</td>
            <td>R (tidyverse), SQL (BigQuery, MySQL), Excel/Google Sheets</td>
        </tr>
        <tr>
            <td>Visualization</td>
            <td>ggplot2 (R), Tableau</td>
        </tr>
        <tr>
            <td>Reporting</td>
            <td>R Markdown, PowerPoint</td>
        </tr>
    </table>

    <h2><span class="emoji">📂</span> Dataset</h2>
    <ul>
        <li><strong>Source:</strong> <a href="https://divvy-tripdata.s3.amazonaws.com/index.html">Divvy Bikes (Motivate International)</a> (public dataset)</li>
        <li><strong>Time Period:</strong> 12 months (Jan–Dec 2022)</li>
        <li><strong>Size:</strong> ~5.7 million rows</li>
    </ul>

    <h2><span class="emoji">📊</span> Analysis Workflow</h2>
    <h3>1. Data Collection & Cleaning</h3>
    <ul>
        <li>Consolidated 12 CSV files into a single dataset</li>
        <li>Removed duplicates, null values, and irrelevant columns</li>
        <li>Added calculated fields (ride duration, day of week, etc.)</li>
    </ul>
    
    <h3>2. Exploratory Data Analysis (EDA)</h3>
    <ul>
        <li>Compared ride patterns between casual riders and members</li>
        <li>Analyzed peak usage times (hourly, daily, monthly)</li>
        <li>Identified most popular stations and ride durations</li>
    </ul>
    
    <h3>3. Visualization & Insights</h3>
    <ul>
        <li>Created interactive Tableau dashboards for stakeholder presentation</li>
        <li>Used ggplot2 in R for custom visualizations</li>
    </ul>

    <div class="highlight">
        <h2><span class="emoji">🔑</span> Key Findings</h2>
        <ul class="checklist">
            <li>Casual riders take longer trips on weekends, while members ride more consistently for weekday commutes</li>
            <li>Peak hours for casual users: 12 PM – 5 PM (leisure rides)</li>
            <li>Top stations near tourist spots had higher casual ridership</li>
        </ul>
    </div>

    <div class="highlight">
        <h2><span class="emoji">🚀</span> Recommendations</h2>
        <ul>
            <li><strong>Targeted promotions:</strong> Offer weekend membership trials for casual riders</li>
            <li><strong>Seasonal campaigns:</strong> Discounts during high-demand summer months</li>
            <li><strong>Commuter incentives:</strong> Partner with businesses for corporate memberships</li>
        </ul>
    </div>

    <h2><span class="emoji">📄</span> Files in This Repository</h2>
    <ul>
        <li><code>cyclistic_analysis.Rmd</code> → Full R Markdown analysis</li>
        <li><code>cyclistic_clean_data.csv</code> → Processed dataset (sample)</li>
        <li><code>/visualizations</code> → Plots & Tableau exports</li>
    </ul>

    <h2><span class="emoji">📖</span> How to Reproduce This Analysis</h2>
    <ol>
        <li>Download the dataset from <a href="https://divvy-tripdata.s3.amazonaws.com/index.html">Divvy Bikes</a></li>
        <li>Run the R script (<code>cyclistic_analysis.Rmd</code>) in RStudio</li>
        <li>For SQL queries, check the <code>queries</code> folder</li>
    </ol>

    <div class="highlight">
        <h2><span class="emoji">🎯</span> Why This Project?</h2>
        <p>This case study demonstrates my ability to:</p>
        <ul class="checklist">
            <li>Work with large datasets efficiently (R, SQL)</li>
            <li>Perform end-to-end analysis (cleaning → visualization → storytelling)</li>
            <li>Deliver actionable business insights</li>
        </ul>
    </div>
</body>
</html>
