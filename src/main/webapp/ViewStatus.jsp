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
                <li><a href="TenderApplication.jsp">Tender Form</a></li>
                <li><a href="ShareInfo.jsp">Share Your Story</a></li>
                <li class="active"><a href="ViewStatus.jsp"> Status</a></li>
                <li><a href="Logout.jsp">Logout </a></li>
            </ul>
        </div>
        
        <div class="container">
            <% 
                    DAO dao=new DAO();
                    ResultSet rs=dao.getTenderIdFromAcceptedTenders();
                %>
            <div>
                <div class="form-group row">
                    <div class="tab-pane fade in active">
                        <h3> View Tender Status</h3>
                    </div>
                </div>
                    <div class="form-group row">
                            <div class="col-md-3">
                                <label>Tender Id</label>
                                <select name="tenderId" class="form-control" autofocus="" onchange="showHint(this.value)">
                                    <option>Select a Tender Id</option>
                                    <% while(rs.next())
                                    {
                                        %>
                                        <option><%=rs.getString(6)%></option>
                                   <%
                                        }
                                    
                                    %>
                                </select>
                            </div>
                    </div>
                                <p id="output"></p>           
                       </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    
    <script>
        function showHint(str) {
//            alert(str);
  var xhttp;
  if (str.length == 0) { 
    document.getElementById("txtHint").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("output").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET","getStatus.jsp?q="+str, true);
  xhttp.send();   
}
</script>
        </div>
 </body>
</html>