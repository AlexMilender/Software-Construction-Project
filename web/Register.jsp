<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/customestyle.css" rel="stylesheet">
        <link href="fonts/glyphicons-halflings-regular.svg" rel="stylesheet">
        <link href="js/custom.js">
        <link href='//fonts.googleapis.com/css?family=Advent Pro' rel='stylesheet'>
        <script>
            function validateform()
            {
                var name=document.registration.name.value;
                if(name==null||name==""){
                window.alert("Name can't be Blank");
                return false;
                }
                var password=document.registration.password.value;
                if(password.length<6){
                window.alert("Password must be atleast 6 characters long");
                return false;
               }
               var pinCode=document.registration.pinCode.value;
               if(pinCode.length!=6){
               window.alert("PIN Code must be 6 Digits Only");
               return false;
               }
               var mobileNumber=document.registration.mobileNumber.value;
               if(mobileNumber.length!=10){
                   window.alert("Mobile Number must be 10 Digits");
                   return false;
               }
               var mobileNumber=document.registration.mobileNumber.value;
               if(isNaN(mobileNumber)){
                   window.alert("Mobile Number must contain Digits only");
                   return false;
               }
               var estYear=document.registration.estYear.value;
               var text=/^[0-9]+$/;
               if(estYear !=0){
                   if ((estYear != "") && (!text.test(estYear))) {
                   window.alert("Establishment Year is not proper. Please check");
                    return false;
                }
                    if (estYear.length != 4) {
                    window.alert("Establishment Year is not proper. Please check");
                    return false;
                    }
                    var current_year=new Date().getFullYear();
                    if((estYear > current_year))
                    {
                        window.alert("Incompatible Establishment Year! Please enter Correct Year");
                        return false;
                    }
                    return true;
                    }
            }
            
        </script>
    </head>
    
    <body style="margin:0px;padding:0px;background-color:white;font-family: 'Advent Pro';font-size:17px;">
        <div class="jumbotron text-center">
            <h1>E tenderS</h1>
        </div>       
        <div class="container" style="background-color:white">
            <ul class="nav nav-tabs">
                <li><a href="index.jsp">home</a></li>
                <li><a href="PublishTenderDetails.jsp">View Tenders</a></li>
                <li><a href="TenderApprovals.jsp"> Tender approvals</a></li>
                <li><a href="successStory.jsp">Success Stories</a></li>
                <li  class="active"><a href="Register.jsp"> Register</a></li>
                <li><a href="Login.jsp"> Login</a></li>
                <li><a href="AboutUs.jsp">About US</a></li>
                <li><a href="ContactUs.jsp"> Contact Us</a></li>
            </ul>
            
            <form name="registration" action="DoRegister.jsp" method="post" enctype="multipart/form-data" onsubmit="return validateform()">
            <div class="form-group row">
                   <div class="tab-pane fade in active">
                       <h3> Registration Form </h3>
                   </div>
               </div>
                 <div>
                <%
                        String msg=request.getParameter("msg");
                        if(msg==null)
                                {
                                msg="";
                                }
                %>
                
                    <div class="form-group row">
                        <div class="form-group  col-md-3 text-success">
                            <h3> <%=msg%> </h3>            
                        </div> 
                    </div>    
            </div>
                <div class="form-group row ">
                       <div class="form-group  col-md-6">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" required="">
                        </div>
                </div>
                <div class="form-group row ">
                       <div class="form-group  col-md-6">
                            <label>Company Name</label>
                            <input type="text" name="companyName" class="form-control" required="">
                        </div>
                </div>
                <div class="form-group row ">
                       <div class="form-group  col-md-6">
                           <label>Register Id</label>
                            <input type="text" name="registerId" class="form-control" required="">
                        </div>
                </div>
                <div class="form-group row">
                       <div class="form-group  col-md-6">
                            <label>Mobile Number</label>
                            <input type="text" name="mobileNumber" class="form-control" required="">
                        </div>
                </div>
               <div class="form-group row">
                   <div class="form-group col-md-6">
                       <label>City</label>
                       <select class="form-control" name="city" required="">
                           <option> Select City </option>
                           <option> Vijayawada </option>
                           <option> Hyderabad </option>
                           <option> Bangalore </option>
                           <option> Chennai </option>
                           <option> Mumbai </option>
                           <option> Kolkata </option>
                           <option> Goa </option>
                           <option> Kochi </option>
                       </select>
                   </div>
               </div>
               <div class="form-group row">
                   <div class="form-group col-md-6">
                       <label> State </label>
                       <select class="form-control" name="state" required="">
                           <option> Select State </option>
                           <option>ANDHRA PRADESH</option>
                           <option>TELANGANA</option>
                           <option>KARNATAKA</option>
                           <option>TAMILANADU</option>
                           <option>MAHARASHTRA</option>
                           <option>WESTBENGAL</option>
                           <option>GOA</option>
                           <option>KERALA</option>
                       </select>
                   </div>
               </div>
                <div class="form-group row ">
                       <div class="form-group  col-md-6">
                            <label>PIN Code</label>
                            <input type="text" name="pinCode" class="form-control" required="">
                        </div>
                </div>
                <div class="form-group row ">
                       <div class="form-group  col-md-6">
                            <label>PAN Number</label>
                            <input type="text" name="panNumber" class="form-control" required="">
                        </div>
                </div>
                <div class="form-group row ">
                       <div class="form-group  col-md-6">
                            <label>Establishment Year</label>
                            <input type="text" name="estYear" class="form-control" required="">
                        </div>
                </div>
               <div class="form-group row">
                   <div class="form-group  col-md-6">
                           <label> Type Of Bidder </label>
                           <input type="text" readonly="" name="radioopt" value="indian" class="form-control" required="">
                        </div>
               </div>
            <div class="form-group row" >
                   <div class="form-group col-md-6">
                       <label>Is Your Company ISO Certified?</label><br><br>
                       <label class="radio-inline col-md-2">
                           <input type="radio" name="radioopt1" id="yes" value="yes" onclick="document.getElementById('upload').style.display='block'">YES
                       </label>
                       <label class="radio-inline">
                           <input type="radio" name="radioopt1" id="no" value="no" onclick="document.getElementById('upload').style.display='none'">NO
                       </label>
                   </div>
               </div>                        
                <div class="form-group row" id="upload">
                   <div class="form-group col-md-6">
                       <label>Upload ISO Certificate</label>
                       <input type="file" class="form-control" name="file1" value="noImage">
                   </div>
               </div>
                        
                <div class="form-group row">
                        <div class="form-group  col-md-6">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control" required="">
                        </div>
                </div>
                <div class="form-group row">
                        <div class="form-group  col-md-6">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" required="">
                        </div>
                </div>
                    
               <div class="form-group row">
                   <div class="form-group col-md-6">
                       <div class="checkbox">
                           <h4>If the filled details was fake then we will take judicial action</h4>
                           <label><input type="checkbox" name="check" required="">I agree</label>
                   </div>
               </div>
               </div>
                <div class="form-group row">
                        <div class="form-group  col-md-6">
                            <input type="submit" value="Submit" class="btn btn-success">
                            <input type="reset" value="Reset" class="btn btn-warning">
                        </div>
                </div>
            
        </form>

        </div><!--
                        -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>