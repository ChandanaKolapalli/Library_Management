# 📚 Library Management System (PL/SQL)

A simple library system that allows members to borrow and return books. Built entirely in PL/SQL with tables, procedures, triggers, and views.

## Features
- Issue and return books
- Track available copies
- Limit max 3 books per member
- View active loans

## Structure
- `schema/` – Table definitions
- `procedures/` – Business logic
- `triggers/` – Loan rules
- `views/` – Readable reports
- `test_data/` – Sample inserts
- `queries/` – Sample operations

## Setup
Run files in order:  
1. `schema/create_tables.sql`  
2. `test_data/insert_sample_data.sql`  
3. Views,Procedures & triggers  
4. Run `queries/example_queries.sql`
