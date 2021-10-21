 <!--doctype html-->
 <html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <title>Movies</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="movie.css">
    <link rel="stylesheet" href="Moviepage1.css">           
    <link rel="stylesheet" href="dropdown.css">   
    </head>
    <body>
     <%
		if(session.getAttribute("username")==null)
		{
		response.sendRedirect("Moviepage1.jsp");
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
            <li><a href="Homepagelogin.jsp">Home</a></li>
            <li><a href="#">Movies</a></li>
            <li><a href="Contactus.html">Contact Us</a></li>
            <li><a href="Aboutus.html">About us</a></li>
            <li><a href="#">Hi ${username}</a></li>
             <li>
                <form action="Logout" method="post">
				<input type="submit" value="Logout">
				</form>                    
            </li>
        </ul>
        <!--search------------->
        <div class="search">
            <input type="text" placeholder="Find Your Favourtie Movies"/>
            <!--search-icon----------->
            <i class="fas fa-search"></i>
        </div>
    </nav>
    <div class="bgimage" style="background-image: linear-gradient(    90deg, 
    rgb(34, 34, 34) 24.97%, 
    rgb(34, 34, 34) 38.3%, 
    rgba(34, 34, 34, 0.04) 97.47%, 
    rgb(34, 34, 34) 100%),
    url(images/doctorcover.jpg);">
        <div class="container abc" >

                    <img src="images/doctor.jpg" alt="Doctor">
                    <div class="container textcontainer">
                        Doctor
                        <div class="rating">
                            Add your rating & review<br>
                            Your ratings matter
                            <button >
                               <span> Rate now</span></button>                              
                        </div>
                        <div class="aa">
                            <div class="d">
                                2D
                            </div>
                            <div class="language">
                                Tamil
                            </div>
                        </div>
                        <div class="booking">
                          <a href="Moviepage2.jsp">Book Now</a>
                        </div>
                    </div>
        </div>

    </div>

    </body>
    </html>
 


    
   