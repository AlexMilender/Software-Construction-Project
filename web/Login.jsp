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
                <li><a href="Register.jsp"> Register</a></li>
                <li   class="active"><a href="Login.jsp"> Login</a></li>
                <li><a href="AboutUs.jsp">About US</a></li>
                <li><a href="ContactUs.jsp"> Contact Us</a></li>
            </ul>
            <div class="container">
                <form action="LoginCheck.jsp" method="post">
                <div class="form-group row">
                    <div class=" tab-pane fade in active">
                            <h3>Login Details</h3>
                        </div>
                </div>
                   
                   <div class="form-group row">
                        <div class="form-group  col-md-4">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email">
                        </div>
                </div>
                <div class="form-group row">
                        <div class="form-group  col-md-4">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password">
                        </div>
                </div>
                <div class="form-group row">
                        <div class="form-group  col-md-6">
                            <input type="submit" value="Submit" class="btn btn-lg btn-success">
                            <input type="reset" value="Reset" class="btn btn-lg btn-danger">
                        </div>
                    
                </div>
                     <div class="form-group row">
                        <div class="form-group  col-md-6">
                            <%
                                    String msg=request.getParameter("msg");
                                    if(msg==null)
                                    {
                                            msg=" ";
                                    }
                                    else{
                            %>           
                                        <div class="form-group row">
                        <div class="form-group  col-md-3 text-danger">
                            
                            <h4> <%=msg%> </h4>            
                        </div> 
                </div>    
                            <%
                                    }
                            %>
                        </div>
                </div>
                
                    
                </form> 
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>