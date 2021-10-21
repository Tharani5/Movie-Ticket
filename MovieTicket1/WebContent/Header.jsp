<!--doctype html-->
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="movie.css">           
    
    </head>
<body>
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
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="#">Movies</a></li>
            <li><a href="Contactus.html">Contact Us</a></li>
            <li><a href="Aboutus.html">About us</a></li>
            <li><a onclick="document.getElementById('id02').style.display='block'" class="nav">SignUp</a></li>
            <li><a onclick="document.getElementById('id01').style.display='block'" class="nav">Login</a></li>

        </ul>
        <!--search------------->
        <div class="search">
            <input type="text" placeholder="Find Your Favourtie Movies"/>
            <!--search-icon----------->
            <i class="fas fa-search"></i>
        </div>
    </nav>
</body>
</html>