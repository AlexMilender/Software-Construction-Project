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
                <li ><a href="UserLogin.jsp">home</a></li>
                <li><a href="TenderApplication.jsp">Tender Form</a></li>
                <li class="active"><a href="ShareInfo.jsp">Share Your Story</a></li>
                <li><a href="ViewStatus.jsp"> Status</a></li>
                <li><a href="Logout.jsp">Logout </a></li>
            </ul>
                     <%
                    String mail=(String)session.getAttribute("email");
                    //out.println(mail);
                    DAO dao=new DAO();
                    ResultSet ra=dao.getDetails(mail);
                   while(ra.next())
                   {
                %>
            
            <div class="tab-content">
                <form action="DoshareStories.jsp" method="post">
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Company Register Number</label>
                                <input type="text" name="companyRegisterNumber" value="<%=ra.getString(3)%>" required="" class="form-control" readonly="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Your Story</label>
                                <textarea  cols="20" rows="8" class="form-control" name="story" required=""></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <input type="submit" value="Submit" class="btn btn-default btn-lg">
                                <input type="reset" value="Clear" class="btn btn-default btn-lg">
                            </div>
                        </div>
                            <%
                                }
                            %>
                            
                    <%
                        String msg=request.getParameter("msg");
                            if(msg==null){
                                msg=" ";
                            }
                    %>
                        
                    <div class="form-group row">
                            <div class="col-md-6">
                                <%=msg%>
                            </div>
                        </div>
                    </form>
                </div>
             </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>