# Facebook User Data Analysis with Hadoop and Hive

## Overview

This project demonstrates advanced big data processing and analysis skills using Hadoop and Hive to analyze Facebook user data. It showcases the ability to handle large datasets, perform complex SQL queries, and extract meaningful insights from social media user information.

## Table of Contents

- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Setup and Installation](#setup-and-installation)
- [Data Analysis](#data-analysis)
- [Key Findings](#key-findings)
- [Skills Demonstrated](#skills-demonstrated)
- [Future Improvements](#future-improvements)
- [Contact](#contact)

## Technologies Used

- Apache Hadoop 3.x
- Apache Hive 3.x
- HiveQL
- HDFS (Hadoop Distributed File System)

## Project Structure

```
Facebook-Data-Analysis-Hadoop-Hive/
│
├── facebook_data_analysis.hql   # Main Hive script for data analysis
├── README.md                    # Project documentation
└── data/                        # Directory for sample data (if applicable)
```

## Setup and Installation

1. Ensure you have Hadoop and Hive installed and configured in your environment.
2. Clone this repository:
   git clone https://github.com/GAGANGURU17/Facebook-Data-Analysis-Hadoop-Hive.git

3. Navigate to the project directory:
   cd Facebook-Data-Analysis-Hadoop-Hive
4. Set up the HDFS directory (if not already done):

   hadoop fs -mkdir /my_project/facebook/
   hadoop fs -put ./data/facebook_data.csv /my_project/facebook/

5. Run the Hive script:

   hive -f facebook_data_analysis.hql


## Data Analysis

The project includes several analytical queries:

1. Total number of Facebook users
2. Users above age 25
3. Average friend count by gender
4. Likes received by different age groups
5. User distribution across birth months
6. Mobile vs. computer usage patterns by age group

## Key Findings

(Note: Replace these with actual insights from your analysis)

- The platform has X million active users.
- Y% of users are above 25 years old.
- On average, [gender] users have more friends.
- Young users (13-25) receive Z% more likes than older users.
- August is the most common birth month among users.
- Mobile usage is X% higher among users under 25 compared to older users.

## Skills Demonstrated

- Big Data Processing with Hadoop
- Data Analysis using Hive and HiveQL
- Complex SQL query writing and optimization
- Data aggregation and statistical analysis
- Handling and processing large-scale datasets
- Extracting actionable insights from social media data

## Future Improvements

- Implement data visualization using tools like Tableau or PowerBI
- Expand the analysis to include user engagement metrics and trends over time
- Optimize queries for better performance on larger datasets
- Integrate machine learning models for predictive analytics

## Contact

Gagan N- [Gaganguru94@gmail.com]

Project Link: [https://github.com/GAGANGURU17/Facebook-Data-Analysis-Hadoop-Hive](https://github.com/GAGANGURU17/Facebook-Data-Analysis-Hadoop-Hive)

---

Feel free to star ⭐ this repository if you find it helpful!
