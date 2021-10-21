<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <title>Personal Website</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="movie.css">
    <link rel="stylesheet" href="Moviepage1.css">   
</head>
<body>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="Login" method="post">
    <div  class="container-fluid">
        <div class="imgcontainr">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="images/loginimage.png" alt="Avatar" class="avatar">
            </div>
            <div class="containr">
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
      <div class="containr">
        <div class="imgcontainr">
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