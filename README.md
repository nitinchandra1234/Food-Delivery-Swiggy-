Swiggy Food Delivery Analysis

![image](https://github.com/nitinchandra1234/Food-Delivery-Swiggy-/assets/129900069/473be8d4-3673-49c5-a32c-f56f7aae0722)


--👁️Project Overview:

In today's digital age, data plays a crucial role as it enables companies to gather insights and make informed decisions. To collect and manage large amounts of data, companies often employ data scientists. This project focuses on extracting data from the Swiggy website (www.swiggy.com/) in Bangalore and performing exploratory data analysis to gain valuable insights.

--📋Table of Contents

Aim/Objectives

Problem Statement

Tools, Libraries, and Techniques

Data Acquisition: Web Scraping and Preprocessing

Analysis Process

Primary Insights

Summary

Learnings and Challenges

--🎯Aim/Objectives:

1.Data Extraction using Python Libraries:
The data extraction process involves using Python libraries such as requests and BeautifulSoup. However, Swiggy's website is dynamic, requiring scrolling to the end of the page to retrieve more data. To overcome this, libraries like pyshadow and Selenium are utilized. By combining BeautifulSoup, Selenium, and pyshadow, the data is extracted in HTML format.

2.Data Cleaning:
Once the data is extracted, it undergoes a data cleaning process. Power Query is used to import the extracted data into Excel. Various data cleaning techniques are applied to ensure data integrity and consistency.

3.Data Exploration:
After cleaning the data, it is studied to uncover potential insights and clues that can assist in making business decisions. This step involves exploring the data to identify patterns, trends, and correlations.

4.Data Presentation:
The insights gained from the data exploration are presented visually using various charts and graphs. This aids in effectively communicating the findings to stakeholders and decision-makers.

5.Data Analysis:
The data analysis phase involves leveraging the cleaned and explored data to derive meaningful conclusions. Statistical techniques, data modeling, and machine learning algorithms may be employed to gain deeper insights and make data-driven decisions.

--⛑️Problem Statement:

-- Our project addressed the following key challenges:

. Extracting and organizing extensive data from Swiggy.
. Rstaurants have specific operating hours, which affects data collection.
. Analyzing restaurant profiles, cuisines, pricing, and customer ratings.
. Deriving actionable insights for market entrants and future strategies.
. Establishing real-time data capabilities for swift decision-making.

-- ⚙️Tools, Libraries, and Techniques:

. Data Extraction: We utilized the Selenium library in Python for web scraping.
. Data Preprocessing: Data cleaning and preprocessing were primarily done using Microsoft Excel.
. Data Analysis: We used Python libraries such as Pandas and Matplotlib for data analysis and visualization.
. Statistical Analysis: Statistical tests were applied to identify significant trends,uncover patterns and correlations in the data.
. Machine Learning: Machine learning algorithms were employed for predictive analysis and to uncover hidden insights.
. Interactive Dashboard: A user-friendly dashboard was created to present key findings and insights in an easily digestible format.

⚓Data Acquisition: Web Scraping and Preprocessing
We collected data from Swiggy, a major food delivery platform, Our data acquisition process involved web scraping using Python's Selenium and beautifulsoup library, followed by meticulous data preprocessing. we gathered data from Swiggy, a leading food delivery platform. Web scraping was used to automate data collection from restaurant listings, including names, cuisines, pricing, ratings, and reviews from the swiggy website. TSubsequently, data underwent rigorous cleaning, feature engineering, and normalization, resulting in structured datasets ready for analysis. This meticulous process provided a reliable foundation for our in-depth examination of Swiggy's data.

🔍Analysis Process
Our analysis process encompassed two crucial components:

1. Data Exploration and Cleaning: We initiated our analysis by thoroughly exploring the collected data, identifying and addressing any inconsistencies or missing values. This step ensured that our data was reliable and ready for deeper analysis.

2. Correlation Analysis: We delved into the relationships between variables, particularly exploring correlations between restaurant attributes and customer ratings. This step helped identify patterns and factors influencing customer satisfaction.

3. Visualization: To make the data more accessible, we employed data visualization techniques, including graphs and charts. Visualization enhanced our understanding of trends and provided clear insights for decision-making.

4.Interactive Dashboard: To present our findings effectively, we created an interactive dashboard that showcased key insights and recommendations. This user-friendly interface allowed for easy exploration of the data and insights.

These analyses shed light on results into meaningful insights and recommendations. These findings serve as a resource for making informed decisions in the food delivery industry and optimizing strategies for future success.


📊Visulization
![image](https://github.com/nitinchandra1234/Food-Delivery-Swiggy-/assets/129900069/822874a2-26e8-41ff-97e0-f830c9121f45)




![image](https://github.com/nitinchandra1234/Food-Delivery-Swiggy-/assets/129900069/0772f804-c820-49ba-a3ad-54afb1695558)





💡Primary Insights
Our analysis yielded the following key insights:

🏷️Delivery Time and Customer Ratings
There is a limited correlation between delivery time and customer ratings. However, it's noteworthy that top-rated restaurants typically maintain an average delivery time of around 30 minutes.
🏷️Strategic Location:
The project's recommendation to establish a remote kitchen strategically located between Koramangala, Indiranagar, and Ashok Nagar capitalizes on high customer concentration in these areas. This central location reduces delivery times, enhances operational efficiency, and fosters customer loyalty.
🏷️Market Balance
Serving customers from all three areas ensures a balanced market presence, mitigating the risk of losing customers to competitors exclusively located in one area.
These insights are valuable for optimizing restaurant strategies and enhancing customer experiences in the food delivery market.


💼Summary
Our data-driven project, analyzing Swiggy data, yields insights into restaurant performance. We find that delivery time minimally impacts customer ratings, and pricing has a marginal effect. We recommend a strategically located remote kitchen between high-demand areas for operational efficiency and expanded reach, ensuring success in the competitive food delivery market.

🎗️Learnings
Delivery time has limited impact on customer ratings, with top-rated restaurants averaging around 30 minutes.
Pricing strategies marginally influence customer satisfaction.
Strategic location is vital for efficient operations and customer loyalty.
Serving multiple areas maintains market balance and competitiveness.
🛡️Challenges
Data extraction from online sources can be challenging and time-consuming.
Establishing a scalable data framework for real-time analysis and accurate predictions was essential but challenging.
🧰Future Scope
The project's future scope focuses on strategically locating a remote kitchen in a region bridging Koramangala, Indiranagar, and Ashok Nagar, densely populated areas with high customer demand. This positioning offers expanded customer reach, improved delivery times, operational efficiency, and a balanced market presence, ensuring success in the competitive food delivery market.



By following these steps, we were able to extract, clean, explore, and analyze Swiggy's data from their website in Bangalore. The resulting insights can provide valuable information for business decision-making and strategic planning.
