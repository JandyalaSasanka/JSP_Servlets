<!doctype html>
<html>

<head>
	<title>Department Information</title>
</head>

<body>
    <%@page import="org.vce.StudInfo"%>
	<%
    	String rollNumber =  request.getParameter("rollNo");
	    StudInfo sInfo = new StudInfo(rollNumber);
        String dept = sInfo.getDepartment();
	%>	
		
	<h1>The Roll Number <%=rollNumber%> belongs to  <%=dept%> Department</h1>	
		
</body>

</html>