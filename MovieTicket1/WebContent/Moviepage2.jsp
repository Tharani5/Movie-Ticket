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
  	<style>
        form{
                    
            background-color: transparent;
            color: rgb(255, 255, 255);
            font-size: 20px;
            line-height: 40px;
        }
        .container-abcd{
            margin-left: 100px;
            margin-top: 150px;
           height: 100px;
           width: 350px;
           display: inline-block;        
        }
        .container-abcd1{
        	display: flex;
        }
        .images{
        	margin-top: 100px;
        }
        input{
            background-color: transparent;
            color: rgba(250, 245, 243, 0.61);
            border: none;
        }
        .moviecolor{
	        background-color:  rgb(58, 56, 56); 
	        color: rgba(230, 236, 235, 0.952);
        }
    </style>
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
    <div class="bgimage" style="background-image: linear-gradient(    90deg, 
    rgb(34, 34, 34) 24.97%, 
    rgb(34, 34, 34) 38.3%, 
    rgba(34, 34, 34, 0.04) 97.47%, 
    rgb(34, 34, 34) 100%),
    url(images/doctorcover.jpg);">
	<div class="container-abcd1">
		<form action="Seatbook" class="container-abcd" method="post">        
        <label for="date">Select the date:</label>
         <input type="date" id="dateid" name="moviedate" onselect="mytime()" required>
         <p id="selectti1"></p>
         <p id="selectti2"></p>
         <p id="selectti"></p>
        
         <script type="text/javascript">
         var today = new Date();
         var dd = today.getDate();
         var md =today.getDate() + +10;
         var mm = today.getMonth()+1; //January is 0 so need to add 1 to make it 1!
         var yyyy = today.getFullYear();
         if(dd<10){
         dd='0'+dd
         md=dd + +10
         }
         if(mm<10){
         mm='0'+mm
         }
          today = yyyy+'-'+mm+'-'+dd;
          maxi=yyyy+'-'+mm+'-'+md;
         document.getElementById("dateid").setAttribute("min", today);
         document.getElementById("dateid").setAttribute("max", maxi);
         </script>
        <label for="timings">Select Timings:</label>
        <select class="moviecolor" id="selecttime" onclick="mytime()" name="Timings" required>
        	<option></option>
          	<option id="10am" value="10AM">10am</option>
          	<option id="1pm" value="01PM">1pm</option>
          	<option id="5pm" value="05PM">5pm</option>
          	<option id="10pm" value="10PM">10pm</option>
        </select><br><p id="selecttim"></p>
       
        <p id="selecttim1"></p>        
        <p id="selecttim2"></p>  
        <script type="text/javascript">              
        function mytime()
        {
            var GivenDate = document.getElementById('dateid').value;
            var CurrentDate = new Date();
            GivenDate = new Date(GivenDate);        	 
            var aa=GivenDate.toString();
            var bb=aa.substring(0,15);
            var cc=CurrentDate.toString();
            var dd=cc.substring(0,15);
            if(bb === dd)
            {
            //document.getElementById("selecttim2").innerHTML=aa;
            //document.getElementById("selecttim1").innerHTML=cc;
            optionID=document.getElementById('selecttime').value;
            //document.getElementById("selecttim2").innerHTML=optionID;
            var hour=new Date().getHours(); 
            var one=optionID.substring(0, 2);
            var am=optionID.substring(2, 4);
            if(am=='PM'){
            var one=+optionID.substring(0, 2)+ +12;
            }              
            if(hour<one)
            {
            //document.getElementById("selecttim").innerHTML=hour; 
            document.getElementById("10am").style.display = "block";
            document.getElementById("1pm").style.display = "block";
            document.getElementById("5pm").style.display = "block";
            document.getElementById("10pm").style.display = "block";           
            document.getElementById("myBtn").style.display = "block";
            }
            else
            {
                if(10<=hour)
                {
            document.getElementById("10am").style.display = "none";
                }
                if(13<=hour)
                {
            document.getElementById("10am").style.display = "none";
            document.getElementById("1pm").style.display = "none";
                }
                if(17<=hour)
                {
            document.getElementById("10am").style.display = "none";
            document.getElementById("1pm").style.display = "none";
            document.getElementById("5pm").style.display = "none";
                }
                if(22<=hour)
                {
            document.getElementById("10am").style.display = "none";
            document.getElementById("1pm").style.display = "none";
            document.getElementById("5pm").style.display = "none";
            document.getElementById("10pm").style.display = "none";
                }
                
            document.getElementById("myBtn").style.display = "none";    
            }
        }else{
            document.getElementById("10am").style.display = "block";
            document.getElementById("1pm").style.display = "block";
            document.getElementById("5pm").style.display = "block";
            document.getElementById("10pm").style.display = "block";
            document.getElementById("myBtn").style.display = "block";
        }
        }
        </script>
        
        <label for="class">Select Class:</label>
        <select class="moviecolor" name="Class" id="select1"  onclick="handleSelect()" required>
         <option></option>
          	<option id="king" value="KING">King</option>
         	<option id="queen" value="QUEEN">Queen</option>
          	<option id="jack" value="JACK">Jack</option>
        </select><br>
        <label for="seats">Number  of seats</label>
        <select class="moviecolor" name="Seats" id="select2"  onclick="myFunction()" required>
         	<option></option>
          	<option value="1">1</option>
         	<option value="2">2</option>
          	<option value="3">3</option>
          	<option value="4">4</option>
          	<option value="5">5</option>
          	<option value="6">6</option>
          	<option value="7">7</option>
          	<option value="8">8</option>
          	<option value="9">9</option>
          	<option value="10">10</option>
          	
          
        </select><br>
        <p id="Class1"></p>        
		<script type="text/javascript">
		var optionID;
		 document.getElementById("select1").onclick = function() {
	            if (this.value == 'KING') {
	                optionID=document.getElementById('king').value;
	                myFunction();
	                document.getElementById("Class").innerHTML = optionID;
	            }
	            if (this.value == 'QUEEN') {
	               optionID=document.getElementById('queen').value;
	               myFunction();
	                document.getElementById("Class").innerHTML = optionID;
	            }
	            if (this.value == 'JACK') {
	                optionID=document.getElementById('jack').value;
	                myFunction();
	                document.getElementById("Class").innerHTML = optionID;
	            }
	        }		
		 function myFunction() {
	                var tn=document.getElementById('select2').value;
	                var message;
	                if(optionID=='KING')
	                	{	                	
	                document.getElementById("Class1").innerHTML = "Your Payable amount " +tn*120;
	                	}
	                if(optionID=='QUEEN')
                	{	                	
                		document.getElementById("Class1").innerHTML ="Your Payable amount " + tn*90;
                	}
	                if(optionID=='JACK')
                	{	                	
               			 document.getElementById("Class1").innerHTML = "Your Payable amount " +tn*60;
                	}	            
	        }
		</script>

        <input id="myBtn" type="submit" value="Check for availability">
      </form>
      <div class="images">
      <img src="images/seats.jpg" width="800" height="450" alt="Doctor">
      </div>
	</div>	
    </div>
   
<jsp:include page="Sample.jsp" />  
    </body>
    </html>