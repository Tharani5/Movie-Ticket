<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.padding {
    padding: 5rem !important
}

.form-control:focus {
    box-shadow: 10px 0px 0px 0px #ffffff !important;
    border-color: #4ca746
}
    body{
            background-image:  url(images/payment1.jpg);
        }
    .w3-container-jj
    {
        background-color: #1e2149;
        color: white;
        width: 500px;
        height: auto;
        margin-top: 40px;
        padding-bottom: 30px;
        padding-top: 30px;
        margin-right: auto;
        margin-left: auto;
        border-radius: 10px;
        text-align: center;
    }
    
</style>
</head>
<body>
<div class="w3-container-jj">        
            Seat number  ${startseat} to ${endseat} <br>
            Ticket fare Rs.${ticketfee}/-<br>
            One step ahead to complete the payment.<br>
            ~~~~~Enjoy Your Show~~~~~
      </div>
    <div class="padding">
        <div class="row">
            <div class="container-fluid d-flex justify-content-center">
                <div class="col-sm-8 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-6"> <span>CREDIT/DEBIT CARD PAYMENT</span> </div>
                                <div class="col-md-6 text-right" style="margin-top: -5px;"> <img src="https://img.icons8.com/color/36/000000/visa.png"> <img src="https://img.icons8.com/color/36/000000/mastercard.png"> <img src="https://img.icons8.com/color/36/000000/amex.png"> </div>
                            </div>
                        </div>
                        <div class="card-body" style="height: 350px">
                            <form action="Payment" method="post">
                            <div class="form-group"> <label for="cc-number" class="control-label">CARD NUMBER</label> <input id="cc-number" type="tel" onchange="cardnumber()" class="input-lg form-control cc-number"  placeholder="**** **** **** ****" required> </div>
                            <p id="hai"></p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group"> <label for="cc-exp" class="control-label">CARD EXPIRY</label> <input id="cc-exp" type="tel" onchange="cardexpiry()" class="input-lg form-control cc-exp"  placeholder="** / **" required> </div>
                                </div>                                
                                <div class="col-md-6">
                                    <div class="form-group"> <label for="cc-cvc" class="control-label">CARD CVC</label> <input id="cc-cvc" type="tel" onchange="cardcvc()" class="input-lg form-control cc-cvc"  placeholder="***" required> </div>
                                </div>                               
                            </div>
                            <p id="hai1"></p> <p id="hai2"></p>
                            <div class="form-group"> <label for="numeric" class="control-label">CARD HOLDER NAME</label> <input type="text" class="input-lg form-control" required> </div>
                            <div class="form-group"> <input value="MAKE PAYMENT" type="submit" id="btn" class="btn btn-success btn-lg form-control" style="font-size: .8rem;"> </div>
                        </form>
                       
                        <script type="text/javascript">
                        function cardnumber(){
                            var num1 = document.getElementById("cc-number").value;
                            if(isNaN(num1)){
                               document.getElementById("hai").innerHTML="Only numbers are allowed";
                               document.getElementById("btn").style.display = "none";
                            }else{
                                if(num1.length==16)
                                {
                                document.getElementById("hai").innerHTML = "";
                                document.getElementById("btn").style.display = "block";
                                }else{
                                    document.getElementById("hai").innerHTML = "Enter 16 numbers";
                                    document.getElementById("btn").style.display = "none";
                                }
                            }
                        }
                        function cardexpiry(){
                            var num1 = document.getElementById("cc-exp").value;
                            if(isNaN(num1)){
                               document.getElementById("hai1").innerHTML="Only numbers are allowed";
                               document.getElementById("btn").style.display = "none";
                            }else{
                                if(num1.length==4)
                                {
                                    document.getElementById("hai1").innerHTML = "";
                                    document.getElementById("btn").style.display = "block";
                                }else{
                                    document.getElementById("hai1").innerHTML = "Enter 4 numbers";
                                    document.getElementById("btn").style.display = "none";
                                }
                            }
                        }
                        function cardcvc(){
                            var num1 = document.getElementById("cc-cvc").value;
                            if(isNaN(num1)){
                               document.getElementById("hai2").innerHTML="Only numbers are allowed";
                               document.getElementById("btn").style.display = "none";
                            }else{
                                if(num1.length==3)
                                {
                                    document.getElementById("hai2").innerHTML = "";
                                    document.getElementById("btn").style.display = "block";
                                }else{
                                    document.getElementById("hai2").innerHTML = "Enter 3 numbers";
                                    document.getElementById("btn").style.display = "none";
                                }
                            }
                        }
                           </script>        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</body>
</html>