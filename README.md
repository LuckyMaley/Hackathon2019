# Hackathon2019

This is an Asp.Net website using the visual basic programming language. It also uses a SQL database to store data generated from the system.

This prototype was developed over a span of 72 hours with a group of 5 programmers for the KZN Health Department Hackathon.

Mission:
To develop and implement a sustainable, coordinated, integrated and comprehensive health system at all levels, based on the Primary Health Care approach through the District Health System, to ensure universal access to healthcare

# Guidelines
![Static Badge](https://img.shields.io/badge/Visual%20Studio-2010%20or%20later-green) ![Static Badge](https://img.shields.io/badge/.Net%20Framework-4-purple)

## Project Structure

This project has two parts:

- The Main ASP.NET project
- The SQL local database

## Main ASP.NET project (Healthcare Management System) 

- The project contains some public pages and restricted pages
- Users such as clerks, doctors, and nurses can access the restricted pages.

## SQL local database

- The [App_Data folder](/App_Data) consists of all the database tables and views used in the project.
- The [Database1.mdf](App_Data/ASPNETDB.MDF) consists of the actual database tables and views.
- The [Dataset1.xsd](App_Data/DataSet1.xsd) consists of a diagrammatic view of the DB tables with the queries used in each table.
- > **NOTE:** This is a local database; hence, if you copy this project and run it on a different machine, the database will contain data from your last updates to the DB. So if you update the DB from the first machine, the DB from the second machine will **NOT** have the updates. The local db works best if you're testing and not worried about the consistency in data whilst in the development stage.

# Config

- (re)build application
> (re)building the application will install required ASP packages from NuGet
![Screenshot (3977)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/ad22041d-502d-49d9-b939-c367a1a57613)

- Database Setup
> Since this is a local database, there is no need to change anything however you need to be acquainted with how it is setup for when you want to update it from a local database to a live or production ready database.
- Firstly open the [App_Data folder](/App_Data) within the project.
  ![Screenshot (3979)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/5ece902f-dd60-4ac6-80be-083b53da53a3)
- Double click on the [Database1.mdf](App_Data/ASPNETDB.MDF) file. On your left Server explorer will open up.
![Screenshot (3980)](https://github.com/LuckyMaley/Hackathon2019/assets/58641501/ce9c5489-99ac-4f4a-8d85-485c3d4eb35b)
- 
