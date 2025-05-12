<%-- 
    Document   : viewAllRooms
    Created on : 12 May 2025, 10:29:59 AM
    Author     : POL_1_G1B-69
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Rooms</title>

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
        .room-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
            padding: 20px;
        }
        .room-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
        .room-status {
            font-weight: bold;
        }
        .status-free {
            color: green;
        }
        .status-occupied {
            color: red;
        }
        .room-number {
            font-size: 20px;
            font-weight: bold;
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
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">View All Rooms</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="allocateRoom.jsp">Room Allocation</a>
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
        <h2 class="text-center my-4">All Rooms</h2>
        
           <div class="row">
        
                <%
            
            
            HashMap<String,String> map = (HashMap<String,String>)request.getAttribute("out");
            

            
            for (Map.Entry<String, String> en : map.entrySet()) {
                    Object key = en.getKey();
                    Object val = en.getValue();
                    
                    if(val.equals("Occupied")){
                    
                    %>
                                <div class="col-md-4">
                <div class="room-card">
                    <div class="room-number">Room <%=key%></div>
                    <div class="room-status status-occupied">Status: <%=val%></div>
                </div>
            </div>
                  <%  
                    }else{%>
                    
                    
                               <div class="col-md-4">
                <div class="room-card">
                    <div class="room-number">Room <%=key%></div>
                    <div class="room-status status-free">Status: <%=val%></div>
                </div>
            </div> 
                    
                    
                  <%  }
         
                }

            %>
        

        
           </div>




    </div>

    <!-- Bootstrap JS (Optional for interactive elements) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
