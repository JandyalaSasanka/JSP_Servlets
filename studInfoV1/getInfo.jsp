<!doctype html>
<html>

<head>
	<title>Department Information</title>
</head>

<body>
	
	<%@page import="java.util.*" %>
	
	<%! int x = 10; %>
	
	<%
	      
		String rollNumber =  request.getParameter("rollNo");
	    StringTokenizer strTok = new StringTokenizer(rollNumber, "-");
	   
	    int[] rNoComps = new int[4];
	    int i = 0;
	    String dept = "";
	   
	   	while(strTok.hasMoreTokens()){
	   		rNoComps[i] = Integer.parseInt(strTok.nextToken());
            i++;
        }
	   
        switch(rNoComps[2]){
            case 736:
                dept = "Mechanical Engineering";
                break;
            case 737:
                dept = "Information Technology";
                break;
            case 733:
                dept = "Computer Science and Engineering";
                break;
            case 732:
                dept = "Civil Engineering";
                break;
            case 735:
                dept = "Electronics and Communications";
                break;
            case 734:
                dept = "Electrical and Electronics";
                break;
            default :
                dept = "Wrong input";
        }
	%>	
		
	<h1>The Roll Number <%=rollNumber%> belongs to  <%=dept%> Department</h1>	
		
</body>

</html>