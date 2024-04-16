<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Helper</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font  -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <!--  styles -->
    <link href="css/index-styles.css" rel="stylesheet">
</head>
<body id="page-top">
<!--  navbar start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding-top: 20px; padding-bottom: 30px;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">HealthHelper</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Weather App</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Productivity</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
                        <% if(session.getAttribute("name") != null) { %>
                            <%= session.getAttribute("name") %>
                        <% } %>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
    <!-- navbar ends -->
    
    <!--  welcome page starts  -->
  <div class="welcome-section" style="background-image: url('assets/img/bghh1.jpg'); background-size: cover;">
    <img src="assets/img/avataaars.jpg" alt="Avatar" class="avatar">
    <h2>Welcome to HealthHelper</h2>
    <p class="quote" style= font-size:46px;>Customize Your Health Experience</p>
</div>
  <!-- welcome page ends here -->
  
 <!-- Weather UI -->
<div class="weather-section" style="background-image: url('assets/img/weatherbg.jpg'); background-size: cover; ">
  <div id="weather">
    <p id="location">Location</p>
    <p id="date">Date</p>
    <p id="day">Day</p>
    <img id="weather-icon" src="" alt="Weather Icon">
    <p id="temperature"></p>
    <p id="weather-description"></p>
    <p id="humidity"></p>
  </div>
</div>

<!-- Productivity Tracker -->
<div class="todo-list-section">
    <h2>Productivity Tracker</h2>
    <div class="todo-list">
        <div class="add-task">
            <input type="text" id="taskInput" placeholder="New task">
            <textarea id="taskDescription" placeholder="Task description"></textarea>
            <select id="priorityLevel">
                <option value="high">High</option>
                <option value="medium">Medium</option>
                <option value="low">Low</option>
            </select>
            <input type="date" id="dueDate">
            <button onclick="addTask()">Add Task</button>
        </div>
        <div id="taskList">
        </div>
    </div>
</div>

<script>
    function addTask() {
        var taskInput = document.getElementById('taskInput');
        var taskDescription = document.getElementById('taskDescription');
        var priorityLevel = document.getElementById('priorityLevel');
        var dueDate = document.getElementById('dueDate');
        var taskList = document.getElementById('taskList');

        var newTask = document.createElement('div');
        newTask.innerHTML = '<h3>' + taskInput.value + '</h3>' +
                            '<p>' + taskDescription.value + '</p>' +
                            '<p>Priority: ' + priorityLevel.value + '</p>' +
                            '<p>Due date: ' + dueDate.value + '</p>' +
                            '<button onclick="this.parentNode.remove()">Remove</button>';

        newTask.className = 'todo-item ' + priorityLevel.value;
        taskList.appendChild(newTask);

        taskInput.value = '';
        taskDescription.value = '';
        priorityLevel.value = 'high';
        dueDate.value = '';
    }
</script>

<style>
    .todo-list-section {
        width: 100%;
        margin: 0 auto;
        padding: 20px;
        background-color: #8EB8E5;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
    }
    .todo-list {
        margin-top: 50px;
        margin-bottom: 100px;
    }
    .add-task {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }
    .add-task input, .add-task textarea, .add-task select {
        flex-grow: 1;
        padding: 10px;
        margin-right: 10px;
        border-radius: 4px;
        border: 1px solid #ddd;
        font-size: 18px;
    }
    .add-task button {
        padding: 10px 20px;
        border: none;
        background-color: #4CAF50;
        color: #fff;
        border-radius: 4px;
        cursor: pointer;
        font-size: 18px;
    }
    .todo-item {
        border-bottom: 1px solid #eee;
        padding: 20px 0;
        font-size: 20px;
    }
    .todo-item h3 {
        margin: 0;
        font-size: 24px;
        color: #007BFF;
    }
    .todo-item p {
        margin: 5px 0;
    }
    .todo-item button {
        padding: 5px 10px;
        border: none;
        background-color: #f44336;
        color: #fff;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
</style>


<script src="js/weather.js"></script> <!-- Link your JavaScript file here -->
</body>
</html>
