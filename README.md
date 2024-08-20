# -CRUD-Application-in-ASP.NET
## Overview
This project is a Personal Information Management System implemented using ASP.NET WebForms with a SQL Server backend. It provides functionality for inserting, updating, deleting, and viewing personal information entries through a web-based interface.
## Features
- Insert Records: Add new personal information entries including first name, last name, and city.
- Update Records: Modify existing records by ID.
- Delete Records: Remove records based on first name.
- View Records: Display all records in a tabular format.
- Data Persistence: Utilizes SQL Server for data storage and management.
## Prerequisites
- Visual Studio or another compatible IDE
- SQL Server or SQL Server Express
- NET Framework
## Getting Started
1-Clone the Repository:
```bash
git clone https://github.com/yourusername/reponame.git
cd reponame
```
## Setup the Database:

Open the provided .mdf file in SQL Server.
Ensure the connection string in the WebForm1.aspx.cs file matches your SQL Server instance.
-Create the table1 table with the following schema:
```bash
CREATE TABLE table1 (
    id INT IDENTITY(1,1) PRIMARY KEY,
    firstname NVARCHAR(50),
    lastname NVARCHAR(50),
    city NVARCHAR(50)
);

```
3-Run the Project:

-Open the project in Visual Studio.
-Set the WebForm1.aspx as the startup page.
-Press F5 to build and run the project.
4-Interact with the Application:

-Use the provided form to insert, update, delete, or view records.
-The GridView will display all records after performing a view operation.
## Usage
- Insert: Fill in the form and click the "Insert" button to add a new record.
- Update: Enter the ID of the record you want to update, fill in the form, and click the "Update" button.
- Delete: Enter the first name of the record you want to delete and click the "Delete" button.
- View: Click the "View" button to see all records displayed in a GridView
##  Code Overview
WebForm1.aspx: Contains the HTML and ASP.NET controls for the form and GridView.
WebForm1.aspx.cs: Contains the code-behind for handling button click events and database operations.
Database: dbmdf.mdf contains the database schema and data.
## Contributions
Feel free to open issues or submit pull requests if you have suggestions or improvements.
