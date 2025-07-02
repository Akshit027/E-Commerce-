# 🛒 E-commerce SQL Database Project

This project provides a complete relational database system for an E-commerce application, developed using SQL with PostgreSQL syntax. It includes schema creation, data population, aggregation, joins, and advanced query logic using subqueries. The project demonstrates essential database concepts suitable for academic, learning, or small-scale production purposes.

---

## 📌 Overview

The database system is designed around the following key entities:

- **Customers** – Stores customer details
- **Products** – Items available for purchase
- **Orders** – Represents customer purchases
- **OrderItems** – Line items for each product in an order
- **Payments** – Payment information related to each order
- **Categories** – Product categorization (e.g., Electronics, Clothing)

---

## ✅ Tasks Summary

### **Task 1: Schema Design**
- Chose the **E-commerce** domain.
- Identified core entities and their relationships.
- Defined a structured schema with `Customers`, `Products`, `Orders`, `OrderItems`, `Payments`, and `Categories`.
- Primary and foreign keys were used to enforce referential integrity.

### **Task 2: Table Creation**
- Created tables using `CREATE TABLE` syntax with PostgreSQL.
- Used the `SERIAL` keyword to auto-increment primary keys.
- Defined proper constraints, such as `UNIQUE`, `NOT NULL`, `FOREIGN KEY`, and `PRIMARY KEY`.

### **Task 3: Data Insertion and Cleaning**
- Populated tables using `INSERT INTO`.
- Handled missing values with `NULL` or left out columns with defaults.
- Used `UPDATE` to modify data and `DELETE` with `WHERE` clauses to clean up or remove specific rows.
  
  #### Example:
  ```sql
  UPDATE Products SET stock = stock - 1 WHERE product_id = 1;
  DELETE FROM Customers WHERE customer_id = 3;

### **Task 4**: Aggregation and Grouping**

* Applied aggregate functions like `SUM`, `COUNT`, and `AVG` on numeric fields.
* Used `GROUP BY` to group data (e.g., by customer, category, or date).
* Applied `HAVING` to filter grouped results.

  #### Example:

  ```sql
  SELECT customer_id, SUM(total_amount) AS total_spent
  FROM Orders
  GROUP BY customer_id
  HAVING SUM(total_amount) > 10000;
  ```

### **Task 5: SQL Joins**

* Demonstrated `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN` between tables.
* Combined `Customers` and `Orders` to view purchase history.
* Displayed data even when some entities (like customers or orders) had no match in the related table.

  #### Example:

  ```sql
  SELECT c.name, o.order_id
  FROM Customers c
  LEFT JOIN Orders o ON c.customer_id = o.customer_id;
  ```

### **Task 6: Subqueries and Nested Queries**

* Used scalar subqueries to return single values.
* Used correlated subqueries where the inner query depends on the outer row.
* Implemented subqueries inside `IN`, `EXISTS`, and `=` conditions.

  #### Example:

  ```sql
  SELECT name
  FROM Customers
  WHERE customer_id IN (
      SELECT customer_id FROM Orders
  );

  SELECT name,
         (SELECT AVG(total_amount) 
          FROM Orders o 
          WHERE o.customer_id = c.customer_id) AS avg_order
  FROM Customers c;
  ```

---

## 🛠️ Technologies Used

* PostgreSQL (recommended)
* MySQL or SQLite (with minor syntax adjustments)
* DB Browser for SQLite / MySQL Workbench / pgAdmin

---

## 📁 Project Structure

* `schema.sql` – Contains `CREATE TABLE` statements.
* `insert_data.sql` – Contains all `INSERT` statements with sample data.
* `aggregate_queries.sql` – Queries for Task 4.
* `join_queries.sql` – Examples of INNER, LEFT, RIGHT, FULL joins.
* `subquery_examples.sql` – Advanced queries using subqueries.
* `README.md` – Documentation.

---

## 🚀 Getting Started

1. Clone this repository.
2. Open your SQL environment (e.g., pgAdmin, MySQL Workbench).
3. Run `schema.sql` to create the tables.
4. Run `insert_data.sql` to populate sample data.
5. Explore and modify queries from other `.sql` files.

---

## 📊 Learning Outcomes

By completing this project, you will:

* Understand how to design a normalized relational database
* Write clean SQL queries for data insertion and updates
* Analyze data using aggregate functions and grouping
* Merge data using different join types
* Use subqueries for complex logic and reporting

---

## 🤝 Contributions

Pull requests and suggestions are welcome! This project is intended to support SQL learning and database design practice.

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👤 Author

**Akshit Jaiswal**
Email: ajaiswal@gitam.com

```

