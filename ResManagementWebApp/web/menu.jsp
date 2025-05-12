<%-- 
    Document   : menu
    Created on : 12 May 2025, 10:24:04 AM
    Author     : POL_1_G1B-69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Management Menu</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f6f9;
        }
        .navbar-custom {
            background-color: #007bff;
        }
        .navbar-custom .navbar-brand,
        .navbar-custom .navbar-nav .nav-link {
            color: white;
        }
        .navbar-custom .navbar-brand:hover,
        .navbar-custom .navbar-nav .nav-link:hover {
            color: #ffd700;
        }
        .container {
            padding-top: 30px;
        }
        .card-custom {
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .card-custom:hover {
            transform: translateY(-10px);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        .btn-action {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            width: 100%;
        }
        .btn-action:hover {
            background-color: #0056b3;
        }
        .room-card-img {
            height: 180px;
            object-fit: cover;
        }
        .action-buttons {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container">
            <a class="navbar-brand" href="#">Room Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="allocateRoom.jsp">Room Allocation</a>
                    </li>
                    <li class="nav-item">
                       <form action="AllRooms.do" method="POST">
                            <input type="submit" value="View Rooms" class="btn btn-action"/>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <h2 class="text-center my-4">Room Management Dashboard</h2>

        <!-- Action Buttons -->
        <div class="row">
            <div class="col-md-6">
                <div class="card card-custom">
                    <div class="card-body">
                        <h5 class="card-title">Allocate Room to Student</h5>
                        <p class="card-text">Assign a student to a specific room.</p>
                        <a href="allocateRoom.jsp" class="btn btn-action">Allocate Room</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card card-custom">
                    <div class="card-body">
                        <h5 class="card-title">View All Rooms</h5>
                        <p class="card-text">View all rooms and their current allocation status.</p>
                        <form action="AllRooms.do" method="POST">
                            <input type="submit" value="View Rooms" class="btn btn-action"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        
    <!-- Bootstrap JS (Optional for interactive elements) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
