<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SUBMIT BOOK</title>
</head>
<body>
      <form action="submitbook" method="post">
 <table> 
    <tr>
      <td>
       <label>ENTER LIBRARY_ID:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your library_id" name="library_id">
      </td>
   </tr>
       <tr>
      <td>
       <label>ENTER BOOK_ID:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your BOOK_ID" name="book_id">
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