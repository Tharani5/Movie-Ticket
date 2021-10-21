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
    <link rel="stylesheet" href="dropdown.css">  
    <style type="text/css">
    .a input[type=submit] 
    {
    	height: 40px;
        line-height: 43px;
        margin: 0px;
        padding: 0px 22px;
        display: flex;
        font-size: 0.8rem;
        text-transform: uppercase;
        font-weight: 500;
        color:rgb(255, 255, 255);;
        letter-spacing: 1px;
        background-color:#1e2149; ;
   		color: white;
    	background-color: #1e2149;
   		border:0px;
  	  	padding top: 10px;	
		font-family: poppins;
	}
	.a input[type=submit]:hover {
		opacity: 0.8;
        background-color:  #7c7c80;
        text-decoration:underline;  
        
} 
    </style>
    </head>
 
    <body>
    <%
		if(session.getAttribute("username")==null)
		{
		response.sendRedirect("Home.jsp");
		}
	%>
        <!--navigation-------------->
    <nav>
        <!--logo--------------->
        <a href="#" class="logo">
            <img src="images/logo.png"/>
        </a>
        <!--menu--btn----------------->
        <input type="checkbox" class="menu-btn" id="menu-btn"/>
        <label class="menu-icon" for="menu-btn">
            <span class="nav-icon"></span>
        </label>
        <!--menu-------------->
        <ul class="menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Movies</a></li>
            <li><a href="Contactus.html">Contact Us</a></li>
            <li><a href="Aboutus.html">About us</a></li>  	
            <li>
            <div class="a">
                <form action="Logout" method="post">
				<input  type="submit" value="HI ${username} LOGOUT">
				</form>
             </div>   
            </li>
        </ul>
        <!--search------------->
        <div class="search">
            <input type="text" placeholder="Find Your Favourtie Movies"/>
            <!--search-icon----------->
            <i class="fas fa-search"></i>
        </div>
    </nav>
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
        
        <ul id="autoWidth" class="cs-hidden">
        
        <!--box-1--------------------------->
        <li class="item-a">
            <!--showcase-box------------------->
           <div class="showcase-box">
               <img src="images/Godzila.jpg"/>
           </div>
               </li>
            <!--box-2--------------------------->
            <li class="item-b">
                <!--showcase-box------------------->
               <div class="showcase-box">
                   <img src="images/sulthan1.jpg"/>
               </div>
                   </li>
                <!--box-3--------------------------->
            <li class="item-c">
                <!--showcase-box------------------->
               <div class="showcase-box">
                   <img src="images/Radhe1.jpg"/>
               </div>
                   </li>
          </ul>
        
    </section>
   
   
    <div class="movies-heading">
        <h2>Movies</h2>
    </div>
    <section id="movies-list">
        <div class="movies-box">
            <div class="movies-img">
                
                <img src="images/Sultan.jpg">
            </div>
            <a href="Moviepage1login.jsp">
               Sulthan 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
                
                <img src="images/Karnan.jpg">
            </div>
            <a href="Moviepage1login.jsp">
               Karnan
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
                <img src="images/doctor.jpg">
            </div>
            <a href="Moviepage1login.jsp">
               Doctor
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/Teddy.jpg">
            </div>
            <a href="Moviepage1login.jsp">
                Teddy 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/Godzila.jpg">
            </div>
            <a href="Moviepage1login.jsp">
               Godzila 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/Narapa.jpg">
            </div>
            <a href="Moviepage1login.jsp">
               Narapa 
            </a>
        </div>
         <div class="movies-box">
            <div class="movies-img">
               
                <img src="images/radhe.jfif">
            </div>
            <a href="Moviepage1login.jsp">
                Redhe
            </a>
        </div>
         <div class="movies-box">           
            <div class="movies-img">
              
                <img src="images/malik.jpg">
            </div>
            <a href="Moviepage1login.jsp">
                malik 
            </a>
        </div>
    </section>
    <footer>
        <p>Going To Internet, Ltd Consumer Website</p>
        <p>Copyright 2020 - GoingToInternet</p>
    </footer>




<div id="id01" class="modal">
  
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
                <input type="password" placeholder="Enter Password" name="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required>
                <div class="nextpage">  
                    <button type="submit">Login</button>
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button><br>
                </div>  
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
            <b>Password:</b><input type="password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  name="password" required>
            <b>Confirm Password:</b> <input type="password" placeholder="Confirm Password" name="confirmpassword" required>
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
     

  var modal = document.getElementById('id02');
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
  </script>

    </body>
    </html>
 


    
   