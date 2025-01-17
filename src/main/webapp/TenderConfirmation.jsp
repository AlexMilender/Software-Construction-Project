<%@page import="java.sql.ResultSet"%>
<%@page import="edu.ndsu.csci717.dnamjo.DAO"%>
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
                <li><a href="AdminHome.jsp">home</a></li>
                <li><a href="TenderAnnouncement.jsp">Publish Tender Details</a></li>
                <li  class="active"><a href="TenderConfirmation.jsp"> Tender approvals</a></li>
                <li><a href="Logout.jsp">Logout </a></li>
            </ul>
            <div class="container">
                
                     <%
                       DAO dao=new DAO();
                       ResultSet rs=dao.getTendersData();
                       %>
                <div>
                    <table class="table table-bordered table table-striped">
                        <tr class="success">
                                
                                <td>Tender Id</td>
                                <td>company Name</td>  
                                <td>Company Register Number</td>  
                                <td>Location</td>  
                                <td>Pin code</td>  
                                <td>Pan Number</td>  
                                <td>Experience</td>  
                                <td>Quote Amount</td>  
                                <td>Accept Quote</td>  
                                <!--<td>Reject Quote</td>-->  
                            </tr>
                            <%
                                
                                while(rs.next()){     
                            %>
                              <tr>
                                   
                                <td><%=rs.getString(1)%></td>  
                                <td><%=rs.getString(2)%></td>  
                                <td><%=rs.getString(3)%></td>  
                                <td><%=rs.getString(4)%></td>  
                                <td><%=rs.getString(5)%></td>  
                                <td><%=rs.getString(6)%></td>  
                                <td><%=rs.getString(7)%></td>  
                                <td><%=rs.getString(8)%></td>
                                
                                
                                <td><a href="AcceptTenders.jsp?cno=<%=rs.getString(3)%>&tenderId=<%=rs.getInt(1)%>&qa=<%=rs.getString(8)%>&pan=<%=rs.getString(6)%>"><input type="submit" value="Accept" class="form-control btn btn-success"></a></td>  
                                <!--<td><a href="RejectTenders.jsp?cno==rs.getString(9)"><input type="submit" value="Reject" class="form-control btn btn-danger"></td>-->  
                              </tr>
                          
                        <%
                       }
                     %>
      
                    </table>
                </div>
              
        </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>