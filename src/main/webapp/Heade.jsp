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
    <body style="margin:0px;padding:0px;background-color:white;font-family: 'Advent Pro';font-size:17px;overflow-y:auto">
        <div class="jumbotron text-center">
            <h1>E tenderS</h1>
        </div>       
        <div class="container" style="background-color:white">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">home</a></li>
                <li><a data-toggle="tab" href="#menu1">Registration </a></li>
                <li><a data-toggle="tab" href="#menu2"> Tender Details</a></li>
                <li><a data-toggle="tab" href="#menu3">Login </a></li>
            </ul>
            <div class="tab-content">
                <div  id="home" class="tab-pane fade in active">
                    <%
                        String msg = request.getParameter("msg");
                        out.println("<h3>" + msg + "</h3>");
                    %>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <form action="DoRegister.jsp">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Name</label>
                                <input type="text" name="name" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Mobile Number</label>
                                <input type="text" name="MobileNumber" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Email</label>
                                <input type="email" name="email" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Password</label>
                                <input type="password" name="password" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <input type="submit" value="Submit" class="btn btn-default btn-lg" >
                                <input type="Reset" value="Clear" class="btn btn-default btn-lg">
                            </div>
                        </div>

                    </form>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <p> third menu</p>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <form action="LoginCheck.jsp">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Email</label>
                                <input type="text" name="email" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>password</label>
                                <input type="password" name="password" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <input type="submit" value="Login" class="btn btn-default btn-lg">
                                <input type="reset" value="Clear" class="btn btn-default btn-lg">
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>