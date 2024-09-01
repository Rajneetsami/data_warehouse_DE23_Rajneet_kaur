# Exercise 0 - Introduction

In this exercise, you get to familiarize yourself with snowflake and snowsql. You will also get some overview of pricing in Snowflake. Further, you'll get an SQL repetition through querying data from snowflakes marketplace.

> [!NOTE]
> These exercises covers lectures 00-04.

## 0. Google queries

Go into marketplace under data products in snowsight. Search and get the following dataset `Google Keywords search dataset - discover all searches on Google`.

Now create a worksheet on your local repository and start querying this data through snowsql.

&nbsp; a) Use this database and find out the underlying schemas, tables and views to get an overview of its logical structure.

&nbsp; b) Find out the columns and its data types in the table `GOOGLE_KEYWORDS`.

**columns 14, 3 (varchar, number, float) data types**

We will now do some exploratory data analysis (EDA) of this dataset.

&nbsp; c) Find out number of rows in the dataset.

**35046855**

&nbsp; d) When is the first search and when is the latest search in the dataset?



01-06-22, 30-06-22

&nbsp; e) Which are the 10 most popular keywords?

gmail, youtube, facebook, google, amazon, google drive, canva, instagram, netflix, roblox

&nbsp; f) How many unique keywords are there?

7263686

&nbsp; g) Check what type of platforms are used and how many users per platform

desktop, 

&nbsp; h) Let's dive into what swedish people are searching. Go into [worldbanks country codes](https://wits.worldbank.org/wits/wits/witshelp/content/codes/country_codes.htm) to find out the country code for Sweden. Find the 20 most popular keywords and the number of searches of that keyword.


| NUMBER_OF_KEYWORD | KEYWORD             |
| ----------------- | ------------------- |
| 403               | gmail               |
| 243               | 1177                |
| 243               | youtube             |
| 243               | länsförsäkringar |
| 220               | google drive        |
| 204               | porn                |
| 190               | facebook            |
| 188               | youtube to mp3      |
| 174               | google              |
| 170               | spotify             |
| 165               | foodora             |
| 161               | hotmail             |
| 154               | hbo                 |
| 154               | disney plus         |
| 152               | google translate    |
| 151               | postnord            |
| 151               | translate           |
| 149               | netflix             |
| 144               | sas                 |
| 143               | outlook             |



&nbsp; i) Lets see how popular spotify is around the world. List the top 10 number countries and the number of searches for spotify. For now it's okay to list the country codes, later we'll join this with the actual country to get more useful information to the stakeholders.

no one search for spotify keyword

&nbsp; j) Feel free to do additional explorations of this dataset.

## 1. How much does it cost?

For these exercises, look up the credit cost for your snowflake edition, cloud provider and region for your snowflake account.

&nbsp; a) You have a simple workload that runs daily in Snowflake. The workload uses 0.5 credits per day. Calculate the total credit usage and cost for a 30-day month.

* **Total Credit Usage for 30 Days: 0.5 * 30 = 15 credits**
* **Total Cost for 30 Days: 15*2.6 = $39.00**

&nbsp; b) Your workload varies throughout the month. For the first 10 days, you use 2 credits per day. For the next 10 days, you use 1.5 credits per day, and for the last 10 days, you use 1 credit per day. Calculate the total credit usage and cost for a 30-day month.

* **Total Credit Usage for 30 Days: (10 * *2) + (10* * 1.5) + (10 * 1)= 45**
* **Total Cost for 30 Days: 45*2.6 = $117**

&nbsp; c) You have three different warehouses running workloads simultaneously. Warehouse A is of size XS, Warehouse B is of size S, and Warehouse C is of size M. Warehouse A is used for 10h/day, B is used for 2h/day and C is used for 1h/day. Calculate the total monthly cost assuming each warehouse runs for the full 30-day month.

* **Total Credit Usage for 30 Days: (1  * 10) + (2 * 2) + (4 * 1)= 18 *30 = 540**
* **Total Cost for 30 Days: 540 * 2.6 = $1404**

&nbsp; d) Your Snowflake warehouse uses auto-scaling. For the first 10 days, it operates on 2 clusters for 10 hours per day. For the next 10 days, it scales up to 3 clusters for 10 hours per day. For the last 10 days, it scales up to 4 clusters for 10 hours per day. Calculate the total monthly budget. Assume the warehouse consumes 1 credit per hour per cluster.

* **Total Credit Usage for 30 Days: (2 * 2 * **10 *  10 ) + (3* * 3* * 10  * 10) + (4 * 4  * 10 * 10)= 900**
* **Total Cost for 30 Days: 900*2.6 = $2340**

## 2. Theory questions

These study questions are good to get an overview of how snowflake works.

&nbsp; a) What are the main components of Snowflake's architecture?

  **sol: cloud services, compute and storage**

&nbsp; b) Explain the role of the storage layer in Snowflake.

    **sol:  The storage layer in Snowflake is a fundamental component responsible for securely and efficiently storing all the data that  Snowflake processes.**

&nbsp; c) What is the purpose of the compute layer in Snowflake?

**sol:  The compute layer, which consists of one or more virtual warehouses, processes the data by executing the query. This layer is responsible for reading data from cloud storage, performing computations, aggregations, joins, and any other operations specified in the query.**

&nbsp; d) How does the cloud services layer enhance the functionality of Snowflake?

 **sol: authentication and access control, infrastructure, optimizer, meta data, security. it ensures that users can focus on their data and analytics needs without worrying about the underlying infrastructure and security concerns.**

&nbsp; e) What is a virtual warehouse in Snowflake, and how does it differ from a traditional data warehouse?

   **sol: virtual warehouse is a cloud-based resource in data warehousing that provides compute power for processing queries      and managing data. Unlike a traditional physical warehouse, a virtual warehouse doesn't physically store data; instead, it accesses and processes data stored in a centralized data repository or cloud storage**

&nbsp; f) When are the cases you would want to scale up versus scaling out in terms of virtual warehouses and compute resources.

**sol:  Scaling up: good for handling large but few workloads, to scale up choose t shirt size L . Warehouse
size: XS (1 node), S ( 2 nodes), M (3 nodes), L (4 nodes)**

**Scaling out: good for handling many workloads in parallel**

&nbsp; g) How does Snowflake's pricing model differ from traditional on-premise data warehousing solutions?

   **sol: Snowflake's pricing model is consumption-based, allowing users to pay only for the compute and storage resources they use, with flexible scalability and no upfront hardware costs. In contrast, traditional on-premise data warehousing involves fixed upfront costs, ongoing maintenance expenses, and limited scalability due to reliance on purchased hardware.**

&nbsp; h) What is the difference between pay-as-you-go and upfront storage, and when you should you choose one over the other?

 **sol: you only pay for the storage you use, typically on a monthly basis. Costs are calculated based on actual usage, such as the amount of data stored and the duration of storage. in an upfront storage model, you pay a fixed amount in advance for a predetermined amount of storage capacity for a specific period**

&nbsp; i) Explain the concept of Time Travel and Fail-safe in Snowflake and its use cases

**sol: Time Travel allows users to access and restore previous versions of data for a defined period, aiding in data recovery and auditing.** **Fail-safe provides an additional recovery window beyond Time Travel, offering protection against catastrophic data loss. Together, these features enhance Snowflake's data management capabilities, making it easier for organizations to maintain data integrity and compliance**

## Glossary

Fill in this table either by copying this into your own markdown file or copy it into a spreadsheet if you feel that is easier to work with.

| terminology       | explanation |
| ----------------- | ----------- |
| downstream        | y           |
| upstream          | y           |
| data warehouse    | y           |
| cloud computing   | y           |
| modern data stack | y           |
| idempotent        | y           |
| OLAP              | y           |
| OLTP              | y           |
| virtual warehouse | y           |
| external stage    | y           |
| data consumer     | y           |
| scaling out       | y           |
| scaling up        | y           |
| snowflake credit  | y           |
| securable object  | y           |
| snowflake object  | y           |
| schema            | y           |
| permanent table   | y           |
| transient table   | y           |
| temporary table   | y           |
| time-travel       | y           |
| fail-safe         | y           |
| view              | y           |
| table             | y           |
| DML               | y           |
| DDL               | y           |
| DQL               | y           |
| DCL               | y           |
