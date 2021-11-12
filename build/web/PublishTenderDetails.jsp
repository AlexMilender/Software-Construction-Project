<%@page import="java.sql.ResultSet"%>
<%@page import="mts.DAO"%>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin:0px;padding:0px;background-color:white;font-family: 'Advent Pro';font-size:17px;">
        <div class="jumbotron text-center">
            <h1>E tenderS</h1>
        </div>       
        <div class="container" style="background-color:white">
            <ul class="nav nav-tabs">
                <li><a href="index.jsp">home</a></li>
                <li  class="active"><a href="PublishTenderDetails.jsp">View Tenders</a></li>
                <li><a  href="TenderApprovals.jsp"> Tender approvals</a></li>
                <li><a href="successStory.jsp">Success Stories</a></li>
                <li><a href="Register.jsp"> Register</a></li>
                <li><a href="Login.jsp"> Login</a></li>
                <li><a href="AboutUs.jsp">About US</a></li>
                <li><a href="ContactUs.jsp"> Contact Us</a></li>

            </ul>
            
                <%
                       DAO dao=new DAO();
                       ResultSet rs=dao.getPublishedData();
                %>
                <div>
                    
                    
                    <h3>Tender Announcements</h3> <br>   
                          <%
                                while(rs.next()){     
                          %>
                          <div class="row" style="margin-bottom:20px;">   
                              <div class="btn col-md-2 col-md-offset-1 btn-warning btn-lg">
                                  <span data-toggle="tooltip" title="Tender Id"><%=rs.getString(6)+"/"+rs.getString(2)%></span>
                              </div>
                              <div class="btn col-md-offset-1 col-md-2 btn-info btn-lg">
                                  <span data-toggle="tooltip" title="Date Of Announcement "> <%=rs.getDate(3)%></span> 
                              </div>
                              <div class="col-md-offset-1 btn col-md-2 btn-danger btn-lg">
                                  <span data-toggle="tooltip" title="Date Of Close"> <%=rs.getDate(4)%> </span>                                          
                              </div>
                              <div class="col-md-offset-1 btn col-md-2 btn-success btn-lg">
                                  <a  style="color:white;text-decoration:none" href="uploads\\<%=rs.getString(5)%>" target="_blank">download </a>
                              </div> 
                          </div>
                                <%
                                  }
                               %>
            </div>
        </div>
                    <script>
                    $(document).ready(function(){
                        $('[data-toggle="tooltip"]').tooltip();   
                    });
                    </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>