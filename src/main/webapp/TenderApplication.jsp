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
                <li><a href="UserLogin.jsp">home</a></li>
                <li  class="active"><a href="TenderApplication.jsp">Tender Form</a></li>
                <li><a href="ShareInfo.jsp">Share Your Story</a></li>
                <li><a href="ViewStatus.jsp"> Status</a></li>
                <li><a href="Logout.jsp">Logout </a></li>
            </ul>
            <div class="container">
                <%
                    String msg=request.getParameter("msg");
                    if(msg==null)
                    {
                        msg=" ";
                    }
                %>
                <%
                    String mail=(String)session.getAttribute("email");
                    //out.println(mail);
                    DAO dao=new DAO();
                    ResultSet rs=dao.getPublishedData();
                    ResultSet ra=dao.getDetails(mail);
                    while(ra.next())
                   {
                %>
                <div >
                    <form action="RegTenderForm.jsp" name="tenderForm" method="post" onsubmit="return validate(this);">
                        
                        <div class="form-group row">
                            <div class="tab-pane fade in active">
                                <h3> Tender Application </h3>
                            </div>
                        </div>
                        <div class="form-group row">
                                    <div class="form-group col-md-3 text-success">
                                        <h4> <%=msg%> </h4>
                                    </div>
                                </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Tender Id</label>
                                <select name="tenderId" class="form-control"  required="">
                                    <option value="-1" selected="selected">Select a Tender Id</option>
                                    <% while(rs.next())
                                    {
                                        %>
                                        <option><%=rs.getString(2)%></option>
                                   <%
                                        }
 
                                    
                                    %>
                                </select>
                            </div>
                        </div>
                                
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Company Name</label>
                                <input type="text" name="companyName" value="<%=ra.getString(2)%>" required="" class="form-control" readonly="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Company Register Number</label>
                                <input type="text" name="companyRegisterNumber" value="<%=ra.getString(3)%>" required="" class="form-control" readonly="">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Location</label><br>
                                <input type="text" name="location" value="<%=ra.getString(5)%>" required="" class="form-control" readonly="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Pincode</label>
                                <input type="text" name="pincode" value="<%=ra.getString(7)%>" required="" class="form-control" readonly="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>PAN Number</label>
                                <input type="text" name="panNumber" value="<%=ra.getString(8)%>" required="" class="form-control" readonly="">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Total Experience</label>
                                <input type="text" name="experience" required="" class="form-control">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <label>Quote Amount</label>
                                <input type="text" name="quoteAmount" required="" class="form-control">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <input type="submit" value="Submit" class="btn btn-default btn-lg">
                                <input type="reset" value="Clear" class="btn btn-default btn-lg">
                            </div>
                        </div>
                    </form>
                            <% 
                                }
                            %>
                </div>
            </div>
        </div>
    <script>  
        function validate() 
        {
            if( document.tenderForm.tenderId.value == "-1" )
            {
                 alert( "Please select TenderId!" );
                return false;
            }
            var experience=document.tenderForm.experience.value;
            if(isNaN(experience)){
                alert("Total Experience must be in digits only");
                return false;
            }
            var quoteAmount=document.tenderForm.quoteAmount.value;
            if(isNaN(quoteAmount)){
                alert("Quote Amount must be in digits only");
                return false;
            }
        }
        </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>