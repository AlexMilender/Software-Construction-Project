<%@page import="edu.ndsu.csci717.dnamjo.DAO"%>
<%@page import="java.sql.ResultSet"%>
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
                <li class="active"><a href="TenderApprovals.jsp"> Approved Tenders</a></li>
                <li><a href="successStory.jsp">Success Stories</a></li>
                <li><a href="Register.jsp"> Register</a></li>
                <li><a href="Login.jsp"> Login</a></li>
                <li><a href="AboutUs.jsp">About US</a></li>
                <li><a href="ContactUs.jsp"> Contact Us</a></li>
            </ul>
            <div class="tab-content">
                <div  class="tab-pane fade in active">
                    <h3>All Accepted Tenders</h3> <br>
                </div>
            </div>
            <%
                   DAO dao =new DAO();
                   ResultSet rs=dao.getConformAllTenders();
            %>
         <div class="container">
                <div class="table table-responsive">
                    <div>
                        <table class="table table-bordered">
                            <tr class="success">
                                    <td>S No</td>
                                    <td>tender Id</td>
                                    <td>Company Register Number(Tender Accepted)</td>
                                    <td>Accepted Time</td>
                            </tr>
         <%
        while(rs.next()){
            %>   
                                <tr>
                                
                                    <td><%=rs.getInt(1)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(5)%></td>
                                </tr>
        <%  
        }    
        %>
                                </table>
                    </div>
                </div>      
            </div>
    
    
        </div>
         <!--jQuery (necessary for Bootstrap's JavaScript plugins)--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
         <!--Include all compiled plugins (below), or include individual files as needed--> 
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>