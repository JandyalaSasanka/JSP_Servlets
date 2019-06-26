<!doctype html>
<html>

<head>
	<title>Department Information Details</title>
</head>

<body>
    <%
    	String rollNumber =  request.getParameter("rollNo");
        String dept = (String)request.getAttribute("department");
	%>	
		
	<h1>The Roll Number <%=rollNumber%> belongs to  <%=dept%> Department</h1>	
		
</body>

</html>