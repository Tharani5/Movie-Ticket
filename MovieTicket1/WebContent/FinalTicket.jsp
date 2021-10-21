<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	 body{
            background-image:  url(images/t.jpg);    
        }
         .w3-container-jj
    {
        background-color: #313133,0.9;
        color: white;
        width: 250px;
        height: auto;
        margin-top: 50px;
        padding-bottom: 30px;
        padding-top: 5px;
        margin-right: auto;
        margin-left: auto;
        border-radius: 10px;
        text-align: center;
        line-height: 1.6;
        font-weight: 1000;
       
    }
</style>
</head>
<body>
<div class="w3-container-jj">  
			<h2>AXN Movies   </h2> 
			<h3>Ticket</h3>
			Booked Date : ${date} <br>
			ShowTime : ${time}<br>
			Class : ${classe}<br>           
            Fare : Rs.${ticketfee}/-<br>
            Seat number  ${startseat} to ${endseat} <br>
           <img  src="images/qr.png" width="100",height="100"><br>         
            ~~~~~Enjoy Your Show~~~~~
      </div>
</body>
</html>