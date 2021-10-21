 <!--doctype html-->
<html>
    <head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="movie.css">           
    <style type="text/css">
    img.d-block.w-100 {
    height: 500px;
    padding-left: 50px;
    padding-top:40px;
    padding-bottom:40px;
    padding-right: 50px;
   	border-radius: 70px;
}
    </style>
    </head>
    <body>
     <jsp:include page="Header.jsp" /> 
    <div class="container mt-3">
       <h5>Upcoming Movies</h5> 
        <div class="d-flex p-3">  
        <div class=" p-1 "><div class=" p-2 ">Tamil</div></div>
        <div class=" p-1 "> <div class=" p-2 ">English</div></div>
        <div class=" p-1 "> <div class=" p-2 ">Malayalam</div></div>
        <div class=" p-1 "> <div class=" p-2 ">Telugu</div></div>
        <div class=" p-1 "> <div class=" p-2 ">Hindi</div></div>
        <div class=" p-1 "> <div class=" p-2 ">Kanada</div></div>
        </div>
      </div>
    <section id="main">
        <!--showcase----------------------->
        <!--heading------------->
        <h1 class="showcase-heading">Latest</h1>
        <div class="">
       <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/Godzila.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/sulthan1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Radhe1.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
       
        
    </section>
   
   
    <div class="movies-heading">
        <h2>Movies</h2>
    </div>
    <section id="movies-list">
        <div class="movies-box">
            <div class="movies-img">
                
                <img src="images/Sultan.jpg">
            </div>
           <a href="Moviepage1.jsp">
               Sulthan 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
                
                <img src="images/Karnan.jpg" >
            </div>
            <a href="Moviepage1.jsp">
               Karnan
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
            <img  src="images/doctor.jpg" >
         
            </div>
            <a href="Moviepage1.jsp">
               Doctor
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/Teddy.jpg">
            </div>
            <a href="Moviepage1.jsp">
                Teddy 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/Godzila.jpg">
            </div>
          <a href="Moviepage1.jsp">
               Godzila 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/Narapa.jpg">
            </div>
            <a href="Moviepage1.jsp">
               Narapa 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/radhe.jfif">
            </div>
            <a href="Moviepage1.jsp">
                Redhe
            </a>
        </div>
         <div class="movies-box">           
            <div class="movies-img">
              
                <img src="images/malik.jpg">
            </div>
            <a href="Moviepage1.jsp">
                malik 
            </a>
        </div>
    </section>
    <footer>
        <p>Going To Internet, Ltd Consumer Website</p>
        <p>Copyright 2020 - GoingToInternet</p>
    </footer>




<div id="id01" class="modal">
  <%
	String uri = request.getRequestURI();
	String pageName = uri.substring(uri.lastIndexOf("/")+1);
	 session.setAttribute("test", pageName);
	%>
  <form class="modal-content animate" action="Login" method="post">
    <div  class="container-fluid">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="images/loginimage.png" alt="Avatar" class="avatar">
            </div>
            <div class="container">
                <label for="uname"><b>Mail ID</b></label>
                <input type="email" placeholder="Enter Mail ID" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" name="Username" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="Password"  required>
                <div class="nextpage">  
                    <button type="submit">Login</button>
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button><br>
                </div> 
                ${mes} 
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me 
                        <a href="#">      Forgot password?</a>
                    </label>
                </div>
</div>
</form>
</div>

<script>
var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<div id="id02" class="modal">
    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
    <form class="modal-content" action="Register" method="post">
      <div class="container">
        <div class="imgcontainer">
            <img src="images/icon.jpg" alt="Avatar" class="avatar">
            </div>   
            <b>UserName:</b> <input type="text" name="uname" placeholder="Enter Username" required> 
            <b>Password:</b><input type="password" id="password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  name="password" required>
            <b>Confirm Password:</b> <input type="password" id="confirmpassword" onkeyup="passwordcheck()" placeholder="Confirm Password" name="confirmpassword" required>
           <p id="message" ></p>
            <b>Email ID:</b><br><input type="email" placeholder="Enter Mail ID"name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required><br>
            <b>Mobile Number:</b> <input type="text" pattern="[789][0-9]{9}" placeholder="Enter Mobile Number" name="phone" required>  
            <label>
                <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> <b> Remember me</b>
              </label>
  
        <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms and Privacy</a>.</p>
  
        <div class="nextpage">
            <button type="submit" class="signupbtn">Sign Up</button>
            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        </div>
      </div>
    </form>
  </div>
  
  <script>  
  function passwordcheck()
  {
	  var pass=document.getElementById('password').value;
	  var cpass=document.getElementById('confirmpassword').value;
	  if(pass==cpass)
		  document.getElementById("message").innerHTML=" Password matched";
  }
  var modal = document.getElementById('id02');
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
  </script>

    </body>
    </html>
 


    
   