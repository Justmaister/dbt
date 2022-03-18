# dbt Analyses & Seeds

## Analyses 

- Are **.sql files** that are stored in the **Analyses Folder**
- An important fact is that is **suports Jinja code** compared with the models and test .sql files. 
- **Can be compiled** with `dbt compile`

Analyses can be helpful for just **running one-off queries** against your data warehouse or maybe for storing scripts to show users or create a new user. 
Also seeing them **used for training queries**. So maybe you want to show someone how a dbt takes a Jinja and SQL in one file and compiles it to pure SQL or a place for them to practice using that without actually afecting any models. 
- Good place to support your **auditing** or **refactoring of a project**. Maybe you have an existing model, but you want to build a new model that is more performance. You may keep that initial model, have some new built and then run a query in your analysis folder agains both of those to make sure they are the same. Before you actually replace it with the new model. 

## Seeds

Seeds are just **CSV files that live in your data folder** in your dbt project. The purpouse of seeds is to take just a short amount of data in the format of a CSV and **build a table in your data warehouse**. 
With `dbt seed` dbt will take care of the rest of taking those values and materializing those as a table in your data warehouse. 
An Example of a seed us just use a csv for mapping country codes. This data is not going to really change, so it is a good use case for a seed. 
**Note:** Seeds are not designed for large or frequently changing data. 