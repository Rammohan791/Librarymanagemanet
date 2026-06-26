<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <% Cookie[] c=request.getCookies();
    boolean logged=false;
    if(c==null){
    	response.sendRedirect("index.jsp");
    }
    else{
    	for(Cookie c1:c){
    		String name=c1.getName();
    		String id=c1.getValue();
    		if(name.equals("user_status") && id.equals("loggedIn")){
    			logged=true;
    			break;
    		}
    	}
    }
    
    if(!logged){
    	response.sendRedirect("index.jsp");
    	return;
    }
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <h1>Ram mohan</h1>
      <form action="submit" method="post">
      FIRST NAME:<input type="text" placeholder="INPUT NAME" name="fname"><br>
      <br>
      LAST NAME:<input type="text" placeholder="INPUT NAME" name="lname"><br>
      <br>
      ROLL NUMBER:<input type="text" placeholder="INPUT ROLL NUMBER" name="rollno"><br>
      <br>
      MOB. NUMBER:<input type="number" placeholder="INPUT MOBILE NUMBER" name="mobno"><br>
      <br>
     ASSIGN LIBRARY_ID:<input type="text" placeholder="INPUT library_Id" name="libraryid"><br>
      <br>
      <input type="submit" value="submit">
      </form>
</body>
</html>