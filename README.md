# E-commerce Database Project

This project contains a complete **PostgreSQL** database schema for an **E-commerce system**, along with sample data and common SQL operations. It is designed to demonstrate how to model an online shopping platform using relational database principles. The database handles customers, products, orders, order items, categories, and payments, with proper use of keys and data constraints.

---

## Features

* Defines a normalized schema with six interconnected tables
* Uses `SERIAL` for auto-incrementing primary keys (PostgreSQL style)
* Ensures referential integrity using `FOREIGN KEY` constraints
* Handles missing values with `NULL`
* Populates tables using `INSERT INTO`
* Demonstrates data manipulation with `UPDATE` and `DELETE`
* Clean and consistent data practices

---

## Database Schema Overview

### Entities and Relationships

1. **Customers** – Customers who place orders
2. **Categories** – Product categories
3. **Products** – Items available for purchase
4. **Orders** – Orders placed by customers
5. **OrderItems** – Products included in each order
6. **Payments** – Payments for orders

### Relationships

* A customer can place multiple orders
* An order contains multiple order items
* Each order item is linked to one product
* Each product belongs to one category
* Each order has one payment

---

## Handling Missing Values

* `NULL` is used for missing optional values such as phone number or address
* `SERIAL` handles auto-incrementing of primary keys, so those values do not need to be manually inserted

---

## Getting Started

1. Clone the repository or copy the SQL scripts
2. Open PostgreSQL or any SQL client like pgAdmin
3. Run the table creation SQL statements
4. Insert sample data using the `INSERT` queries
5. Test `UPDATE` and `DELETE` operations as needed

---

## Tools and Technologies

* PostgreSQL
* SQL (Data Definition and Manipulation)
* Basic command-line or GUI-based PostgreSQL client

---

## Contact

Created by Akshit Jaiswal
For feedback or questions, feel free to reach out via GitHub or email

