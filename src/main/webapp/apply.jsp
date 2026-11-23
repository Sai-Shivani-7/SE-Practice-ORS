<!DOCTYPE html>
<html>
<head>
    <title>Online Recruitment Form</title>
//webhooks exam
</head>
<body>
    <h2>Apply for a Job</h2>
    //added webhooks
    <form action="apply.jsp" method="post">
        
        <label>Full Name:</label>
        <input type="text" name="name" required><br><br> 
        
        <label>Email:</label>
        <input type="email" name="email" required><br><br>    

        <label>Phone Number:</label>
        <input type="tel" name="phone" pattern="[0-9]{10}" required><br><br>

        <label>Skills:</label>
        <input type="text" name="skills" placeholder="e.g., Java, Python, HTML" required><br><br>

        <label>Position Applying For:</label>
        <input type="text" name="position" required><br><br>

        <input type="submit" value="Submit Application">
    </form>

    <%-- JSP code to handle the submitted data --%>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String skills = request.getParameter("skills");
        String position = request.getParameter("position");

        // Only show confirmation if form is submitted
        if (name != null && email != null && phone != null && skills != null && position != null) {
    %>
        <h3>Application Submitted Successfully!</h3>
        <p><b>Name:</b> <%= name %></p>
        <p><b>Email:</b> <%= email %></p>
        <p><b>Phone:</b> <%= phone %></p>
        <p><b>Skills:</b> <%= skills %></p>
        <p><b>Position Applied For:</b> <%= position %></p>
    <%
        }
    %>
</body>
</html>
