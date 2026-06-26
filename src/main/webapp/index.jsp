<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   <div class="row mt-3">
      <!-- Col 1 -->
      <div class="col-lg-3">
        <p class="alert alert-warning">
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque in non architecto numquam consequuntur eligendi corrupti illo facilis temporibus, omnis doloremque voluptatum sed quae impedit vero, nesciunt a deleniti asperiores!          
        </p>
      </div>
      <!-- Col 2 -->
       <div class="col-lg-6">
          <div class="accordion" id="myAccordion">
  <!-- Pane 1 -->
  <button class="btn btn-block btn-primary" data-target="#myDiv1" data-toggle="collapse">New Librarian Register</button>
  <div class="alert alert-primary collapse" id="myDiv1" data-parent="#myAccordion">
 <form action="librarian" method="post">
      <label>Enter User Name: </label>
      <input type="text" placeholder="Enter Full Name" name="username"><br/>
      <br>
      <label>Enter College_Id: </label>
      <input type="text" placeholder="Enter College Id" name="college_id"><br/>
      <br>
      <label>Create Password: </label>
      <input type="password" placeholder="create strong pass.." name="password"><br/>
      <br>
      <label>College Name: </label>
      <input type="text" placeholder="Enter Full Name" name="college_name"><br/>
      <br>
      <input type="submit" value="submit">
 </form>
  </div>

  <!-- Pane 2 -->
  <button class="btn btn-block btn-danger" data-target="#myDiv2" data-toggle="collapse">Student Login</button>
  <div class="alert alert-primary collapse" id="myDiv2" data-parent="#myAccordion">
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
  </div>

  <!-- Pane 3 -->
   <button class="btn btn-block btn-info" data-target="#myDiv3" data-toggle="collapse">Librarian Login</button>
  <div class="alert alert-primary collapse" id="myDiv3" data-parent="#myAccordion">

      <form action="librarianlgn" method="post">
      
      <label>Enter Your Name! </label>
      <input type="text" placeholder="Enter Your Name." name="tempname"><br/>
      <br>
      
      <label>Enter College_Id: </label>
      <input type="text" placeholder="Enter College Id" name="college_id"><br/>
      <br>
      
      <label>Enter Library_password: </label>
      <input type="password" placeholder="Enter College pass.." name="collegepass"><br/>
      <br>
       <input type="submit" value="submit">
      
 </form>
  </div>

          </div>
       </div>
       <!-- Col 3 -->
        <div class="col-lg-3">
            <p class="alert alert-warning">
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque in non architecto numquam consequuntur eligendi corrupti illo facilis temporibus, omnis doloremque voluptatum sed quae impedit vero, nesciunt a deleniti asperiores!          
            </p>
        </div>
    </div>

  <footer class="bg-dark text-white pt-5 pb-3">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mb-4">
                    <h5 class="text-primary fw-bold">Library Resource Hub</h5>
                    <p class="small text-muted" style="max-width: 350px;">
                        Multiple libraries ko ek platform par lane ka digital prayas. 
                        Librarians aur Students ke beech ke gap ko kam karne ke liye banaya gaya archive.
                    </p>
                </div>
                <div class="col-md-3 mb-4">
                    <h5 class="text-white mb-3">Quick Links</h5>
                    <ul class="list-unstyled small">
                        <li><a href="#" class="text-muted text-decoration-none">Privacy Policy</a></li>
                        <li><a href="#" class="text-muted text-decoration-none">Terms of Use</a></li>
                        <li><a href="#" class="text-muted text-decoration-none">Help Desk</a></li>
                    </ul>
                </div>
                <div class="col-md-4 mb-4">
                    <h5 class="text-white mb-3">Contact Details</h5>
                    <p class="small text-muted mb-1">📍 Kanpur, Uttar Pradesh, India</p>
                    <p class="small text-muted mb-1">📧 support@elibraryhub.com</p>
                    <p class="small text-muted">📞 +91 00000 00000</p>
                </div>
            </div>
            <hr class="bg-secondary">
            <div class="text-center mt-3">
                <p class="small mb-0">Copyright &copy; 2026 | Designed by <span class="text-primary fw-bold">Rammohan</span></p>
            </div>
        </div>
    </footer>



<script src="welcome.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>