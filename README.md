# E-commerce Database Schema

This project provides a relational database schema for an E-commerce system using PostgreSQL. It is designed to handle key business operations such as customer management, product cataloging, order tracking, and payment processing. The schema uses the `SERIAL` keyword to automatically increment primary key values.

## Project Structure

* `schema.sql` contains all the SQL statements to create the database tables.
* `README.md` provides an overview of the schema and instructions for use.

## Schema Overview

The database is composed of the following main entities:

1. Customers – stores customer information like name, email, phone number, and address.
2. Categories – represents product categories such as electronics, clothing, etc.
3. Products – contains product details including name, price, stock quantity, and category.
4. Orders – records each customer order with the order date and total amount.
5. OrderItems – links products to orders and specifies quantity and price per item.
6. Payments – stores payment information related to each order.

## Relationships Between Tables

* Each customer can place multiple orders.
* Each order can contain multiple order items.
* Each order item is linked to a specific product.
* Each product belongs to one category.
* Each order has one associated payment.

## Technologies Used

* PostgreSQL as the database system
* SQL for schema definition
* `SERIAL` data type for primary key auto-incrementation

## How to Use

1. Clone the repository using Git.
2. Open a PostgreSQL terminal or any SQL client.
3. Connect to your PostgreSQL database.
4. Run the `schema.sql` file to create all tables.

## Sample Queries and Data

You can extend this project by adding:

* Sample data using INSERT statements
* Queries to get reports such as total revenue, order history, or top-selling products

## Contributions

Contributions are welcome. If you want to suggest improvements or report issues, feel free to open a discussion or pull request.

## License

This project can be used freely under the MIT License.

## Contact

Created by Akshit Jaiswal.
For suggestions or inquiries, you can reach out via email or LinkedIn.

