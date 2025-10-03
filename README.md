# Employee and Project Management Database

## 📝 Overview

This repository contains the complete SQL schema, data insertion scripts, and demonstration queries for a simple relational database designed to manage employee, department, and project information.

The structure is based on a standard Entity-Relationship Model (see `docs/ER_Diagram.png`).

## 📁 Project Structure

The project is organized into logical folders for easy navigation and execution:

| Folder/File | Description | 
| :--- | :--- | 
| `your-sql-project/` | Root directory | 
| $\quad$ `docs/` | Contains project visuals and documentation. | 
| $\quad$$\quad$ `ER_Diagram.png` | Visual representation of the database schema (E-R Diagram). | 
| $\quad$ `sql/` | Contains all executable SQL scripts, ordered by purpose. | 
| $\quad$$\quad$ `01_schema_creation.sql` | Scripts for **`CREATE TABLE`** and **`ALTER TABLE`** (Foreign Keys). | 
| $\quad$$\quad$ `02_data_insertion.sql` | Scripts for **`INSERT INTO`** to populate the initial data. | 
| $\quad$$\quad$ `03_queries.sql` | Contains demonstration `SELECT` queries (simple and complex). | 
| $\quad$ `README.md` | This document. | 
| $\quad$ `LICENSE` | Project licensing information. | 

## 🛠️ Setup Instructions

To set up and run this database on your local machine, execute the following steps in sequence against your SQL environment (e.g., MySQL, PostgreSQL, SQLite, or SQL Server):

1. **Run Schema Creation:**
   * Execute the script `sql/01_schema_creation.sql`.
   * *Purpose:* This creates all the necessary tables (`department`, `employee`, `project`, etc.) and defines the primary and foreign key constraints.

2. **Insert Initial Data:**
   * Execute the script `sql/02_data_insertion.sql`.
   * *Purpose:* This populates the tables with the sample data (John Doe, Jane Smith, Research Department, Project A, etc.).

3. **Test Queries:**
   * Execute the queries inside `sql/03_queries.sql` to verify the data integrity and structure.

## 📊 Database Schema Summary

The database consists of the following tables:

| Table Name | Primary Key | Key Relationships (Foreign Keys) | Purpose | 
| :--- | :--- | :--- | :--- |
| **department** | `DNo` | `Mgr_SSN` (references `employee.SSN`) | Stores department details and manager. | 
| **dep_loc** | (`DNo`, `Loc`) | `DNo` (references `department.DNo`) | Handles multiple locations for a department. | 
| **employee** | `SSN` | `DNo` (references `department.DNo`) <br> `Sup_SSN` (references `employee.SSN`) | Stores employee data, including department and supervisor. | 
| **project** | `PNo` | `DNo` (references `department.DNo`) | Stores project details. | 
| **dependents** | (`Dependent\_Name`, `SSN`) | `SSN` (references `employee.SSN`) | Stores information about employee dependents. | 
| **emp_proj** | (`SSN`, `PNo`) | `SSN` (references `employee.SSN`) <br> `PNo` (references `project.PNo`) | A many-to-many junction table to track hours employees work on projects. | 

## 🔍 Key Demonstration Queries

The `sql/03_queries.sql` file contains various queries, including:

* **Simple Retrieval:** Listing all employees with a salary greater than $55,000.
* **Joins:** Finding the department manager's name for every department.
* **Complex Filtering:** Listing employees who work on 'Project A'.
* **Aggregation:** Calculating the total number of hours worked across all projects.
