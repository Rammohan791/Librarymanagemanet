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
    <div>
       <form action="issuebook" method="post">
            <table border="1">
                  <tr>
                      <td>
                      <label>ENTER ROLL NUMBER:</label>
                      <input type="text" placeholder="Enter roll number" name="rollno"><br>
                      <br>
                      </td>
                  </tr>
                  <tr>
                      <td>
                      <label>ENTER LIBRARY ID:</label>
                      <input type="text" placeholder="Enter library_id" name="libraryid"><br>
                      <br>
                      </td>
                      
                  </tr>
                  <tr>
                      <td>
                      <label>CHOOSE CURRENT DATE:</label>
                      <input type="date" name="current_date" ><br>
                      <br>
                      </td>
                      
                  </tr>
                  <tr>
                      <td>
                      <label>CHOOSE END DATE:</label>
                      <input type="date" name="end_date"><br>
                      <br>
                      </td>
                  </tr>
                  <tr>
                      <td>
                      <label>Enter book_id:</label>
                      <input type="text" name="book_id"><br>
                      <br>
                      </td>
                  </tr>
                  <tr>
                      <td>
                      <input type="submit" value="submit" ><br>
                      <br>
                      </td>
                      
                  </tr>
            </table>
       </form>
    </div>
</body>
</html>