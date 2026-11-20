# # 🍕 Pizza Sales SQL Analysis

## About the Project

This project is a **SQL-based analysis of pizza sales data** using MySQL. The main goal was to practice SQL by answering common business questions related to orders, sales, revenue, pizza categories, and customer ordering patterns.

I worked with multiple tables such as `orders`, `order_details`, `pizzas`, and `pizza_types` and used SQL queries to combine the data and find useful insights.

## 📁 Project Files

- **`PizzaSalesSQL.sql`** – Database setup and basic SQL analysis.
- **`intermediatelLevelQUERYS.sql`** – Intermediate-level SQL queries and business analysis.

## 🛠️ Tools & Skills

- MySQL
- SQL
- Data Analysis
- Joins
- Aggregate Functions
- GROUP BY
- ORDER BY
- Subqueries
- Date & Time Functions

## 📊 What I Analyzed

### Basic Analysis

I used SQL queries to find:

- Total number of orders
- Total revenue generated from pizza sales
- Highest-priced pizza
- Most commonly ordered pizza size
- Top 5 most ordered pizza types

For example, total revenue was calculated by multiplying the quantity sold by the pizza price:

```sql
SUM(order_details.quantity * pizzas.price)
```

The query returned total revenue of **817,860.05**.

The highest-priced pizza identified was **The Greek Pizza**, with a price of **35.95**.

### Intermediate Analysis

I also worked on questions such as:

- Which pizza category has the highest quantity of orders?
- How are orders distributed throughout the day?
- How many pizzas are available in each category?
- What is the average number of pizzas ordered per day?
- Which are the top 3 pizza types based on revenue?

## 🔗 SQL Joins Used

The analysis required joining different tables to connect the pizza information with order details.

For example:

```sql
pizza_types
    ↓
pizzas
    ↓
order_details
    ↓
orders
```

This helped me analyze product, category, quantity, price, and order information together.

## 💡 Key Learning

Through this project, I practiced writing SQL queries for real-world business questions. I also improved my understanding of:

- Working with multiple tables
- Writing `JOIN` queries
- Using `COUNT()`, `SUM()`, `AVG()`, and `ROUND()`
- Grouping and sorting data
- Using subqueries
- Working with date and time data
- Converting raw data into meaningful business information

## 🚀 How to Run the Project

1. Open **MySQL Workbench** or another MySQL-compatible tool.
2. Create/load the pizza sales database and tables.
3. Run `PizzaSalesSQL.sql`.
4. Run `intermediatelLevelQUERYS.sql`.
5. Execute the queries and review the results.

## 📌 Future Improvements

I would like to extend this project by:

- Adding monthly and daily sales trends
- Analyzing revenue by pizza category and size
- Finding peak sales days and hours
- Adding profit analysis
- Creating a **Power BI dashboard**
- Using advanced SQL concepts such as **CTEs and Window Functions**

## 👨‍💻 Skills Demonstrated

**SQL | MySQL | Data Analysis | Data Aggregation | JOINs | Subqueries | Data Interpretation | Business Analysis**
