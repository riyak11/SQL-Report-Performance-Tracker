# SQL-Report-Performance-Tracker (Interactive Dashboard using Power BI)
Developed a SQL and Power BI dashboard to analyze 5K+ report requests, uncovering SLA performance, resolution trends, analyst efficiency, departmental workload, and issue patterns using SQL, Power Query, and DAX.
## Project Objective
To develop a SQL-based reporting tracker that monitors report requests, report categories, request status, resolution time, analyst workload, and reporting performance, enabling teams to identify bottlenecks, track operational efficiency, and make data-driven decisions.
## Dataset Used
A synthetic dataset was generated using Python to simulate a real-world reporting environment.
The dataset was created across multiple relational tables, including:
- Analysts
- Data Quality Issues
- Reports
- Report Requests
- Python was used to generate realistic records with consistent primary-key and foreign-key relationships, allowing the dataset to be imported into MySQL for SQL-based analysis and reporting.
## Dataset Interaction
- <a href="https://github.com/riyak11/SQL-Report-Performance-Tracker/tree/main/View Dataset">Dataset</a>
## Questions
-	How many total report requests have been received?
-	How many requests are currently open, in progress, completed, or cancelled?
-	How are the total requests distributed across different priority levels?
-	What is the average resolution time for report requests?
-	Which departments generate the highest number of requests?
-	Which analysts handle the highest number of requests?
-	Which analysts have the fastest average resolution time?
-	What percentage of requests are completed?
-	How many requests are pending or at risk of breaching SLA?
-	Which departments have the highest reporting workload?
-	What is the monthly trend in report requests?
## Dashboard Interaction
- <a href="https://github.com/riyak11/SQL-Report-Performance-Tracker/blob/main/Dashboard.png ">View Dashboard</a>

## Database Design
The project uses a relational database structure with multiple interconnected tables.
-	analysts – Stores analyst details and department information.
-	departments – Stores department-level information.
-	reports – Stores available reports and their categories.
-	report_requests – Stores individual report requests and request details.
- The tables are connected using primary and foreign keys to maintain data integrity and enable multi-table SQL analysis.
## SQL Analysis
The project uses SQL to perform:
-	Data validation
-	Table joins
-	Aggregations
-	Filtering
-	Grouping
-	Sorting
-	Conditional calculations
-	Date-based analysis
-	KPI calculations
-	Performance analysis
-	Data integrity checks
Key SQL concepts used include:
-	SELECT
-	WHERE
-	GROUP BY
-	ORDER BY
-	HAVING
-	COUNT()
-	AVG()
-	SUM()
-	MIN()
-	MAX()
-	JOIN
-	Subqueries

## Queries
- <a href="https://github.com/riyak11/SQL-Report-Performance-Tracker/tree/main/SQL%20Queries">SQL Queries</a>
## Process
-	Designed the dataset representing a realistic reporting environment, including analysts, departments, reports, categories, and report requests. 
-	Created the relational database in MySQL with separate tables for analysts, departments, reports, categories, and report requests. 
-	Defined primary keys and foreign keys to establish relationships and maintain data integrity across the database. 
-	Loaded the dataset into MySQL and performed data validation and integrity checks to ensure accurate relationships and consistent records. 
-	Developed SQL queries to analyze request volume, status, priority, categories, departments, analyst workload, and resolution performance. 
-	Connected the MySQL database to Power BI to use the validated database as the dashboard's data source. 
-	Prepared and transformed the data in Power BI where required for reporting and visualization. 
-	Created the Power BI dashboard with KPI cards, charts, slicers, and status/priority breakdowns to monitor reporting performance. 
-	Designed the dashboard to provide insights into request trends, workload distribution, analyst performance, priorities, and operational status. 
-	Validated the dashboard outputs by comparing key metrics and totals against the underlying SQL data.

## Dashboard
<img width="1267" height="713" alt="Dashboard" src="https://github.com/user-attachments/assets/73e28e9b-e3b7-44df-8a7c-865a45829202" />


## Insights
-	The dashboard tracks 5K total report requests handled by 25 analysts, covering 120 reports and approximately 1.2K issues.
-	63.64% of requests were completed, while 15.8% were in progress, 15.6% were pending, and 4.88% were cancelled, indicating that most requests are successfully completed but a significant portion remains active.
-	88.70% of requests were within the SLA, indicating strong overall SLA performance, although some requests still require attention to prevent SLA breaches.
-	The average resolution time is 57.15 hours, providing a baseline for evaluating reporting service efficiency.
-	Sales generated the highest reporting workload with 818 requests, followed by Legal with 811 and Risk with 799, making these departments the largest sources of reporting demand.
-	Among the top analysts displayed, Yashasvi Bala handled the highest number of requests with 203, followed by Udan Dewan with 195 and Thomas Sen with 193.
-	Invalid Format was the most frequent issue type with 179 issues, followed by Null Values with 177 and Incorrect Values with 176, highlighting data-quality and formatting problems as major sources of reporting issues.
-	October recorded the highest monthly request volume at 454 requests, while February recorded the lowest at 386 requests, showing fluctuations in reporting demand throughout the year.
-	The distribution of request types and departmental workloads indicates that reporting demand is spread across multiple business functions rather than being concentrated in a single request category.
## Final Conclusion
The SQL Report Performance Tracker provides a comprehensive view of reporting workload, request status, resolution efficiency, departmental demand, analyst performance, issue patterns, and monthly request trends. With 5K total requests and 63.64% of requests completed, the reporting function demonstrates strong overall activity and service delivery. The 88.70% SLA performance is positive, but the volume of pending and in-progress requests highlights an opportunity to further improve turnaround time. Sales, Legal, and Risk generate the highest reporting demand, while data-quality issues such as Invalid Format, Null Values, and Incorrect Values are the most common problems. Focusing on reducing recurring data-quality issues, improving resolution efficiency, and proactively managing pending requests can help strengthen reporting operations and improve overall service performance.

