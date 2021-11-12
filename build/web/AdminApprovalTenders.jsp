<%@page import="java.util.ArrayList"%>
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
                       ArrayList<String> al=dao.getFileFromRegister();
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
                                <td>ISO Certificate</td>
                                <td>Accept Tender</td>
                                
                                
                                <!--<td>Reject Quote</td>-->  
                            </tr>
                          <%
                              
//                                   int i=0;
                                while(rs.next()){
                                  String registerId=rs.getString(3);
                                  String fileName=dao.getFileNameUsingregisterId(registerId);
//                                  out.print(fileName);
                          %>    
                              <tr>
                                <td><%=rs.getString(1)%></td>  
                                <td><%=rs.getString(2)%></td>  
                                <td><%=registerId%></td>  
                                <td><%=rs.getString(4)%></td>  
                                <td><%=rs.getString(5)%></td>  
                                <td><%=rs.getString(6)%></td>  
                                <td><%=rs.getString(7)%></td>  
                                <td><%=rs.getString(8)%></td>
                                <%
                                    if(fileName.equalsIgnoreCase("noImage")){
                                       %>
                                       <%@include file="NoCertification.jsp"%>
                                       <%
                                    }else{
                                        %>
                                      <td class="disabled"><a href=docs\<%=fileName%> target="_blank">View</a></td>
                                      <%
                                      }
                                %>
                                <td><a href="AcceptTenders.jsp?cno=<%=rs.getString(3)%>&tenderId=<%=rs.getString(1)%>&qa=<%=rs.getString(8)%>&pan=<%=rs.getString(6)%>"><input type="submit" value="Accept" class="form-control btn btn-success"></a></td>  
                                <!--<td><a href="RejectTenders.jsp?cno==rs.getString(9)"><input type="submit" value="Reject" class="form-control btn btn-danger"></td>-->  
                              </tr>
                          
                        <%
                       }
                     %>
                    </table>
                </div>
        </div>
                    <div class="container">
                <%
                        String msg=request.getParameter("msg");
                        if(msg==null)
                                {
                                msg=" ";
                                }
                %>
                
                    <div class="form-group row">
                        <div class="form-group  col-md-3 text-success">
                            <h2><%=msg%></h2>
                        </div> 
                    </div>    
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>