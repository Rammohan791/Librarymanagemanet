<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%Cookie[] c=request.getCookies();
     boolean logged=false;
      if(c==null){
    	  response.sendRedirect("index.jsp");
      }
      else{
    	  for(Cookie c1:c){
    		  String roll=c1.getName();
    		  String id=c1.getValue();
    		  if(roll.equals("rollno") && id.equals("library_id")){
    			  logged=true;
    			  break;
    		  }
    	  }
      }
      if(!logged){
    	  response.sendRedirect("index.jsp");
    	  return;
      }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SUBMIT BOOK</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
      <form action="showinfo" method="post">
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
       <label>ENTER Book Id:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your BOOK_ID" name="bookid">
      </td>
   </tr>
       <tr>
      <td colspan="2">
         <input type="submit" value="submit">
      </td>
   </tr>
   
</table>
</form>
<% String n=(String)session.getAttribute("name1");
  String sd=(String)session.getAttribute("rollno");
  String fd=(String)session.getAttribute("startdate1");
  String rt=(String)session.getAttribute("enddate1");
  String tr=(String)session.getAttribute("bookid1");
%>
 <div class="row">
      <div class="col">
        <div class="table-responsive" data-aos="zoom-in-up">
          <table class="table table-bordered table-striped">        
            <thead class="table-dark">
               <tr>
          <th>Name:</th>
          <th>RollNumber:</th>
          <th>Issue Date</th>
          <th>Submission Date</th>
          <th>Book_Id</th>
        </tr>
            </thead>
            <tbody align="center">
        <tr>
          <td><%= n %></td>
          <td><%= sd %></td>
          <td><%= fd %></td>
          <td><%= rt %></td>
          <td><%= tr %></td>
        </tr>
        
            </tbody>
          </table>
        </div>
      </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


</body>
</html>



