
<%@page import="java.sql.ResultSet"%>
<%@page import="mts.DAO"%>
<%
    String tenderId = request.getParameter("q");
//    out.println(tenderId);
    DAO dao = new DAO();

%>
<html>
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

    <body>  
        <%            
            ResultSet rs = dao.getConformTenders(tenderId);
            if (rs.next()) {
        %>  
        <div class="container">
            <div class="table table-responsive">
                <div>
                    <table class="table table-bordered">
                        <tr>
                        <p>Accepted Tender Details</p>
                        </tr>
                        <tr class="success">
                            <td>S No</td>
                            <td>tender Id</td>
                            <td>Company Register Number(Tender Accepted)</td>
                            <td>Accepted Time</td>
                        </tr>
                        <tr>

                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(5)%></td>
                        </tr>
                    </table>
                </div>
            </div>      
        </div>
        <%
            }
        %>
    </body>
</html>


