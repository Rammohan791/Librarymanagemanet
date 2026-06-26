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
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="welcome.css" type="text/css">
</head>
<body>
<nav class=" navbar navbar-expand-md navbar-light bg-dark">
    <a class="navbar-brand">MyLibrary</a>
    
    <ul class="navbar-nav mr-auto">
        <li class="navbar-item">
             <a class="nav-link">About Me</a></li>
             <li class="navbar-item"> <a class="nav-link">About Me</a></li>
             <li class="navbar-item"> <a class="nav-link">About Me</a></li>
             
             <li class="navbar-item"> 
             
             <a class="nav-link dropdown-toggle " data-toggle="dropdown">About Me</a>
             <div class="dropdown-menu">
             
              <a  href="" class="nav-link">About Me</a>
               <a href="" class="nav-link">About Me</a>
               <a href="" class="nav-link">About Me</a>
               <a href="" class="nav-link">About Me</a>
             
             </div>
             </li>
    </ul>
</nav>
<%
String name1=(String)session.getAttribute("name1");
%>
<nav class=" navbar navbar-expand-md navbar-light bg-dark">
    <a class="navbar-brand">Welcome! Dear <%= name1 %> Sir </a>
</nav>
<div class="main">
   <div class="btnbox">
    <div class="option" ><h4>Total Books:<span id="books">t</span></h4></div>
    <div class="option" ><h4> Issue Book:<span  id="student">t</span></h4></div>
    <div class="option" > <h4>faculty:<span id="faculty">t</span></h4></div>
    <div class="option" > <h4>bbbbbb:<span id="issuebook">t</span></h4></div>
    </div> 
</div>

 <div class="row mt-3">

      <div class="col-lg-3 col-md-4 col-sm-6 ">

        <div class="card mx-auto " data-aos="fade-up" data-aos-duration="500" style="max-width: 300px;">
          <div class="card-header bg-success">
            <span class="card-title ">Add Student</span>
          </div>
          <img src="../Images/child7.jpg" class="card-img-top" />
          <div class="card-body">
      <form action="submit" method="post">
      FIRST NAME:<input type="text" placeholder="INPUT NAME" name="fname" required><br>
      <br>
      LAST NAME:<input type="text" placeholder="INPUT NAME" name="lname"><br>
      <br>
      ROLL NUMBER:<input type="text" placeholder="INPUT ROLL NUMBER" name="rollno" required><br>
      <br>
      MOB. NUMBER:<input type="text" placeholder="INPUT MOBILE NUMBER" name="mobno"><br>
      
      <br>
     ASSIGN LIBRARY_ID:<input type="text" placeholder="INPUT library_Id" name="libraryid" required><br>
      <br>
     

          <div class="card-footer">
             <input type="submit" value="submit">
          </div>
      </form>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="card" data-aos="fade-up" data-aos-duration="1000">
          <div class="card-header bg-success">
            <span class="card-title bg-blue">Issue book</span>
          </div>
          <img src="dd.jpg" class="card-img-top" />
          <div class="card-body">
  <div>
       <form action="issuebook" method="post">
            <table border="1">
                  <tr>
                      <td>
                      <label>ENTER ROLL NUMBER:</label>
                      <input type="text" placeholder="Enter roll number" name="rollno" required><br>
                      <br>
                      </td>
                      
                  </tr>
                  <tr>
                      <td>
                      <label>ENTER LIBRARY ID:</label>
                      <input type="text" placeholder="Enter library_id" name="libraryid" required><br>
                      <br>
                      </td>
                      
                  </tr>
                  <tr>
                      <td>
                      <label>CHOOSE CURRENT DATE:</label>
                      <input type="date" name="current_date" required><br>
                      <br>
                      </td>
                      
                  </tr>
                  <tr>
                      <td>
                      <label>CHOOSE END DATE:</label>
                      <input type="date" name="end_date" required><br>
                      <br>
                      </td>
                  </tr>
                  <tr>
                      <td>
                      <label>Enter book_id:</label>
                      <input type="text" name="book_id" required><br>
                      <br>
                      </td>
                  </tr>
                  <tr>
                      <td  class="card-footer">
                      <input type="submit" value="submit" ><br>
                      <br>
                      </td>
                      
                  </tr>
            </table>
       </form>
    </div>
          </div>


        </div>
      </div>

      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="card" data-aos="fade-up" data-aos-duration="1500">
          <div class="card-header bg-success">
            <span class="card-title">submit book</span>
          </div>
          <img src="../Images/child7.jpg" class="card-img-top" />
          <div class="card-body">
      <form action="submitbook" method="post">
 <table> 
    <tr>
      <td>
       <label>ENTER LIBRARY_ID:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your library_id" name="library_id" required>
      </td>
   </tr>
       <tr>
      <td>
       <label>ENTER BOOK_ID:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your BOOK_ID" name="book_id" required>
      </td>
   </tr>
       <tr  class="card-footer">
      <td colspan="2">
         <input type="submit" value="submit">
      </td>
   </tr>
</table>
</form>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="card" data-aos="fade-up" data-aos-duration="2000">
          <div class="card-header bg-success">
            <span class="card-title">Student information</span>
          </div>
          <img src="../Images/child7.jpg" class="card-img-top" />
          <div class="card-body">
           <form action="showinfo" method="post">
 <table> 
    <tr>
      <td>
       <label>ENTER LIBRARY_ID:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your library_id" name="library_id" required>
      </td>
   </tr>
       <tr>
      <td>
       <label>ENTER Enter Book id:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your BOOK_ID" name="Book_id" required>
      </td>
   </tr>
       <tr  class="card-footer">
      <td colspan="2">
         <input type="submit" value="submit">
      </td>
   </tr>
   
</table>
</form>
           </div>
        </div>
      </div>
    </div>




  <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="card" data-aos="fade-up" data-aos-duration="2000">
          <div class="card-header bg-success">
            <span class="card-title">Add Book</span>
          </div>
          <img src="https://as2.ftcdn.net/v2/jpg/05/90/86/43/1000_F_590864324_5vG63mEsP9zcuJPoJZD6myOcz3ghlDr7.jpg" class="card-img-top" />
          <div class="card-body">
           <form action="addbook" method="post">
 <table> 
    <tr>
      <td>
       <label>book name:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your library_id" name="name" required>
      </td>
   </tr>
       <tr>
      <td>
       <label>ENTER Book id:</label>
      </td>
      <td>
         <input type="text" placeholder="Enter your BOOK_ID" name="Book_id" required>
      </td>
   </tr>
       <tr  class="card-footer">
      <td colspan="2">
         <input type="submit" value="submit">
      </td>
   </tr>
   
</table>
</form>
           </div>
        </div>
      </div>
    








<script src="welcome.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>