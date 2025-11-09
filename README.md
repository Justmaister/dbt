# dbt Transformation Project

This repository hosts a data transformation pipeline built using **dbt (data build tool)**. dbt enables data analysts and engineers to transform data directly within the data warehouse by simply writing modular `SELECT` statements.

## Project Summary

This dbt project focuses on:

* **"Transforming raw data sources (CRM, Web Analytics) into foundational dimensional and fact tables."**
* **"Implementing data quality checks and lineage tracking for all core metrics."**
* **"Providing a clean, central source of truth for downstream reporting and analytics."**

## Project Structure

The project follows the standard dbt layout:

| Directory | Purpose |
| :--- | :--- |
| `models/` | Contains all core transformation logic (SQL files). |
| `seeds/` | Stores static data (CSV files) that are loaded directly into the warehouse. |
| `macros/` | Houses reusable Jinja/SQL code snippets and functions. |
| `tests/` | Contains custom data tests to validate model assumptions (e.g., `unique`, `not_null`). |
| `snapshots/` | Tracks slowly changing dimensions (if used). |
| `dbt_project.yml` | The main configuration file for the entire project. |

## Getting Started

### Prerequisites

1.  A functioning connection to your Data Warehouse (e.g., Snowflake, BigQuery, Databricks, etc.).
2.  Python 3.x installed.
3.  dbt Core installed for your specific adapter (e.g., `pip install dbt-snowflake`).

### Setup

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/Justmaister/dbt.git](https://github.com/Justmaister/dbt.git)
    cd dbt
    ```
2.  **Configure Connection:**
    Ensure your `profiles.yml` file is correctly configured to connect to your data warehouse credentials. This file is typically located in your home directory: `~/.dbt/`.

3.  **Install Dependencies (if any):**
    If the project relies on dbt packages, run:
    ```bash
    dbt deps
    ```