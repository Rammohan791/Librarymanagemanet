<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="stdlogin" method="post">
 <table> 
    <tr>
      <td>
       <label>Enter university rollno:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your rollno" name="rollno">
      </td>
   </tr>
       <tr>
      <td>
       <label>Enter Library_id:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your LIBRARY_ID" name="libraryid">
      </td>
   </tr>
       <tr>
      <td colspan="2">
         <input type="submit" value="submit">
      </td>
   </tr>
</table>
</form>
</body>
</html>