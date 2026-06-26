<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="librarian" method="post">
      <label>Enter User Name: </label>
      <input type="text" placeholder="Enter Full Name" name="username"><br/>
      <br>
      
      <label>Enter College_Id: </label>
      <input type="text" placeholder="Enter College Id" name="college_id"><br/>
      <br>
      
      <label>Create Library Password: </label>
      <input type="password" placeholder="create strong pass.." name="password"><br/>
      <br>
      
      <label>College Name: </label>
      <input type="text" placeholder="Enter Full Name" name="college_name"><br/>
      <br>
      <input type="submit" value="submit">
      
 </form>
</body>
</html>