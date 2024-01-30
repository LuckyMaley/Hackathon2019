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
- The [Database.mdf](App_Data/ASPNETDB.MDF) consists of the actual database tables and views.
- The [Dataset1.xsd](App_Data/DataSet1.xsd) consists of a diagrammatic view of the DB tables with the queries used in each table.
- > **NOTE:** This is a local database; hence, if you copy this project and run it on a different machine, the database will contain data from your last updates to the DB. So if you update the DB from the first machine, the DB from the second machine will **NOT** have the updates. The local db works best if you're testing and not worried about the consistency in data whilst in the development stage.

# Config


