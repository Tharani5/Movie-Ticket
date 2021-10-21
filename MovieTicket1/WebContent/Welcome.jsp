<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("username")!=null)
		{
		response.sendRedirect("Login.jsp");
		}
	String uri = request.getRequestURI();

	String pageName = uri.substring(uri.lastIndexOf("/")+1);
	 pageContext.setAttribute("test", pageName);
	%>
		welcome ${username} 
		Book u r
		
		<a  href=" Booking.jsp"> Tickets </a>
		${test}
	
    <script type="text/javascript">

     function validation() {
                    var dateTextO = document.getElementById("datepicker");
                    var timeTextO = document.getElementById("timepicker");
                    var errDateTimeMsgO = document.getElementById("dateTimeAlert")

    var currentDate = new Date()
        var day = currentDate.getDate()
        var month = currentDate.getMonth() + 1
        var year = currentDate.getFullYear()

        var currentTime = new Date()
        var hours = currentTime.getHours()
        var minutes = currentTime.getMinutes()
        if (minutes < 10){
        minutes = "0" + minutes
        }
        if (hours < 10){
        hours = "0" + hours
        }

        if((dateTextO < currentDate) && (timeTextO < currentTime)){
            errDateTimeMsgO.innerHTML = "The Date and Time you have selected is before the Current Date and Time";
        } else {
            errDateTimeMsgO.innerHTML = "";
        }

            }
    </script>

    <form action="create_session.php" method="post" name="sessionform">
    <p><strong>4: Date:</strong> <input type="date" id="datepicker"></p>
                <p><strong>5: Time:</strong> <input type="time" id="timepicker" ><span class="timepicker_button_trigger"><img src="Images/clock.gif" alt="Decrease" /></span></p>
                <div id="dateTimeAlert"></div>
    </form>
   
</body>
</html>