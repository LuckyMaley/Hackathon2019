# Hackathon2019

This is an Asp.Net website using the visual basic programming language. It also uses a SQL database to store data generated from the system.

This prototype was developed over a span of 72 hours with a group of 5 programmers for the KZN Health Department Hackathon.

Mission:
To develop and implement a sustainable, coordinated, integrated and comprehensive health system at all levels, based on the Primary Health Care approach through the District Health System, to ensure universal access to healthcare

# Guidelines
![Static Badge](https://img.shields.io/badge/Visual%20Studio-2010%20or%20later-green) ![Static Badge](https://img.shields.io/badge/.Net%20Framework-4-purple)

### Project Structure

This project has two parts:

- The Main ASP.NET project
- The SQL local database

### Main ASP.NET project (Healthcare Management System) 

- The project contains some public pages and restricted pages
- Users such as clerks, nurses, and doctors can access the restricted pages.

### SQL local database

- The [App_Data folder](/App_Data) consists of all the database tables and views used in the project.
- The [Database1.mdf](App_Data/ASPNETDB.MDF) consists of the actual database tables and views.
- The [Dataset1.xsd](App_Data/DataSet1.xsd) consists of a diagrammatic view of the DB tables with the queries used in each table.
- > **NOTE:** This is a local database; hence, if you copy this project and run it on a different machine, the database will contain data from your last updates to the DB. So if you update the DB from the first machine, the DB from the second machine will **NOT** have the updates. The local db works best if you're testing and not worried about the consistency in data whilst in the development stage.

# Config

- (re)build application
> (re)building the application will install the required ASP.NET packages from NuGet
![Screenshot (3977)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/ad22041d-502d-49d9-b939-c367a1a57613)

- Database Setup
- > **NOTE:** If you want to change the connection string to a live or production-ready database just go to the [web.config](/web.config) file and change the existing one to your database. Example of connection string below:
> `<add name="Database1ConnectionString" connectionString="Data Source= DatabaseServerName; Integrated Security=true;Initial Catalog= YourDatabaseName; uid=YourUserName; Password=yourpassword; " providerName="System.Data.SqlClient" />`  
- Firstly open the [App_Data folder](/App_Data) within the project.
![Screenshot (3979)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/5ece902f-dd60-4ac6-80be-083b53da53a3)
- Double click on the [Database1.mdf](App_Data/ASPNETDB.MDF) file. On your left Server Explorer will open up.
![Screenshot (3980)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/ce9c5489-99ac-4f4a-8d85-485c3d4eb35b)
- Click the dropdown on the Tables folder and all the tables in the database will appear.
![Screenshot (3981)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/a491689c-6df5-46ab-94e2-c783c94244b4)
- Double-click on the User table to see the table definition (You can do the same for the other tables to view them and if you want to recreate the database in a live or production-ready environment).
![Screenshot (3986)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/8968389d-9a22-4539-923c-d21e2ad2028d)
- Go back to Server Explorer, right-click on the User table, and select Show Table Data.
![Screenshot (3987)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/ebd354fb-1da6-4786-921b-dcfd0bad5ad0)
- You can view the data within the User table (You can do the same for the other pages).
![Screenshot (3988)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/5363d5f8-46c7-4830-8d62-70214d31aa32)
- You can also view the diagrammatic view of the database if you want to add specific queries to enhance the system's functionality. Just click on [Dataset1.xsd](App_Data/DataSet1.xsd) under the App_Data folder in the Solution Explorer.
![Screenshot (3990)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/76f1e2c7-3ee6-40d1-81c5-fea3dc3ee1ba)

## Registration

- Run the application by clicking the green play button.
![Screenshot (3991)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/9f917b32-211f-4c2e-b29e-6d3d6482704f)
- Click the Register link on the navigation bar of the website.
![Screenshot (3991)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/3f001d4d-f084-4417-bd68-2a5cc2f8a7b0)
- You can register as either a clerk, nurse, or doctor. For each user type, a persal number is required (You can put any number for the persal number just make sure it consists of 7 digits).
![Screenshot (3992)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/70ddd1b3-7192-4f86-bf7c-cb0ffa0bc4be)
- Once you have entered all your details, confirmed your password, and clicked Create user you will be redirected to the home page (refresh the page if an unexpected error occurs).
![Screenshot (3993)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/29270931-7c3c-49b1-b0f1-728964282dc6)
- You can now go to your dashboard and do the necessary operations.

# Some noticeable improvements for future work

- The system can be recreated in the newer versions of Visual Studio. It can utilise the power of the Entity Framework and migrations to simplify the system's interactiveness with the database and ease of integration.
- The database can be a live or a cloud database. The system can be improved to make API calls to the cloud database. Cloud databases are useful as they are scalable, have low latency, always backed up and are always on.
- The functionality of the persal numbers can be improved where persal numbers are stored on a cloud database and every time a user tries to register their credentials can be validated with those persal numbers for greater security.
- The system's user interface can be improved to be more user-friendly, especially regarding the core functionality of every user type.
- The functionality for patients to log in to view their records and book an appointment must also be added.

# Screenshots

These are screenshots of the system in user by the various users of the system

### Clerk

![Screenshot (3994)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/b037efba-5148-43ef-af4a-8868fda046f3)
![Screenshot (3995)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/453cb6b2-883d-4648-8249-67768f8b3b3d)
![Screenshot (3996)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/d1a05896-ca13-48d8-af45-a880279a24a3)
![Screenshot (3997)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/4dfdd9d8-9752-4403-ae52-ee5a3149fb1b)

### Nurse

![Screenshot (4002)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/4e5c1a93-4cad-49e8-878c-5de03acf3a05)
![Screenshot (4003)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/ff49bb7e-1c2b-496e-b701-a811fb7c5e44)
![Screenshot (4006)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/a17547e6-c837-46fe-95ef-bb1232319515)
![Screenshot (4005)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/4741cc61-9e2d-4a2e-8771-9834196d6d29)
![Screenshot (4004)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/aa4b76a2-6922-4cdf-98af-0393e5f67c04)
![Screenshot (4007)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/de2c1b64-e2cd-4217-b15b-f414fef2e0e4)


### Doctor

![Screenshot (3998)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/c3755758-da59-4c5f-8a5c-99185355e816)
![Screenshot (3999)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/66b21874-72aa-4b85-a9c5-ac2e1e5edd57)
![Screenshot (4000)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/557fffbe-4f7c-4fd0-a686-e4ca32289cdd)
![Screenshot (4001)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/4427072a-d07d-4224-a02f-3ab937294b4e)

