<%@page import="mts.DAO"%>
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
                <li><a href="TenderApprovals.jsp"> Approved Tenders</a></li>
                <li  class="active"><a href="successStory.jsp">Success Stories</a></li>
                <li><a href="Register.jsp"> Register</a></li>
                <li><a href="Login.jsp"> Login</a></li>
                <li><a href="AboutUs.jsp">About US</a></li>
                <li><a href="ContactUs.jsp"> Contact Us</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active">
                    <h3> Experience Of Previous Tender Holders </h3>
                </div>
                <div class="table-responsive">
                       <%
                           ResultSet rs=new DAO().getAllSuccessStories();
                           if(rs!=null){
                               %>
                               <table class="table table-bordered table-hover ">
                                   <tr class="success">
                                            <td>Company Register Number</td>
                                            <td>Story</td>
                                    </tr>
                               <%
                                   while(rs.next()){
                                    
                                       %>
                                            <tr>
                                                <td><%=rs.getString(2)%></td>
                                                <td><%=rs.getString(3)%></td>
                                            </tr>
                                       <%    
                                   }    
                                }else{
                                      %>
                                      <span class="text-center">No details Found</span>
                                      <%
                                            }
                           
                       %>
                                </table>
                </div>
                
            </div>
            