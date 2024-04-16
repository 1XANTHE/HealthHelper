# HealthHelper

Welcome to my project! This project is designed to provide personalized weather-related recommendations and task management functionalities based on user health parameters. By integrating user health data with real-time weather information, the application offers tailored recommendations to users, promoting health-conscious decision-making and productivity.

## Features

### 1. User Registration and Login
- Allows users to register for an account and securely log in.
- Utilizes Servlets, JDBC, and JSP for user authentication and session management.

### 2. Health Parameter Input Form
- Provides a form for users to input their health parameters, including age, weight, height, gender, BMI, blood pressure, and heart rate.
- Example: A JSP page with input fields for each health parameter, with validation checks using JavaScript or server-side validation with Servlets.

### 3. Weather Data Integration
- Fetches real-time weather data from an external API (e.g., OpenWeatherMap) and displays it on a UI.
- The parameters fetched are temperature, date/day, weather condition (e.g., clear sky, rain, thunderstorm, etc.), and humidity.

### 4. Recommendation System Enhancement
- Enhances the recommendation system to consider user health parameters alongside weather conditions.
- Classifies user health status based on predefined thresholds for age, BMI, blood pressure, etc.
- Generates personalized recommendations based on the combined analysis of health parameters and weather conditions.
- Example: An algorithm that analyzes user health data and weather forecasts to recommend suitable activities, such as staying indoors during extreme weather for elderly users.

### 5. Productivity Tracker
This productivity tracker allows users to add tasks with descriptions, priorities, and due dates. Users can easily manage their tasks and stay organized.
- Enter the task name in the "New task" input field.
- Provide a description of the task in the "Task description" textarea.
- Select the priority level from the dropdown menu.
- Choose the due date using the date input field.
- Click on the "Add Task" button to add the task to the list.
  
Tasks will be displayed below the input section with the task name, description, priority level, due date, and a "Remove" button.

# Screenshots:

 ![welcome page](https://github.com/1XANTHE/HealthHelper/assets/150462228/49b627ae-a70d-4aee-a3a1-95f1ba62d56f)
 ![weather app](https://github.com/1XANTHE/HealthHelper/assets/150462228/d2b4087e-35d2-48b4-939e-fbd147ed7266)
 ![productivity tracker](https://github.com/1XANTHE/HealthHelper/assets/150462228/97bbdb3e-8c74-4fbc-9b51-ec517e4fc887)

## Installation and Setup
- Clone the repository to your local machine.
- Deploy the application to a Java web server like Apache Tomcat.
- Set up a MySQL database for user registration and health parameter storage.
- Configure the database connection in the application's code.

## Usage
- Visit the welcome page to register or log in.
- After logging in, fill out the health parameter form.
- Explore the weather app page to view personalized weather recommendations.
- Manage your important task with our productivity tracker.
- Stay productive and healthy with our integrated task management features!

## Contributing
Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.


