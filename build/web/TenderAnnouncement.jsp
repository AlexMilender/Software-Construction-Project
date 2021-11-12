<!DOCTYPE html>
<% 
    String msg=request.getParameter("msg");
    if(msg==null)
    {
            msg="";   
    }
%>
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
                <li class="active"><a href="TenderAnnouncement.jsp">Publish Tender Details</a></li>
                <li><a href="AdminApprovalTenders.jsp"> Tender approvals</a></li>
                <li><a href="Logout.jsp">Logout </a></li>
            </ul>
            <form action="DoTenderAnnouncement.jsp" method="post" name="tenderAnnounce" enctype="multipart/form-data" onsubmit="return DateCheck()">
               <div class="container">
                    <div class="form-group row">
                        <div class="form-group  col-md-3 text-success">
                            <h4><%=msg%></h4>          
                        </div> 
                    </div>   
                </div> 
             <div class="form-group row">
                    <div class="col-md-6">   
                        <label> Tender Id</label>
                        <input type="text" class="form-control" name="tenderId" required="">
                    </div>
                </div>                     
                <div class="form-group row">
                    <div class="col-md-6">   
                        <label> Start Date </label>
                        <input type="date" class="form-control" name="startDate" required="">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-6">   
                        <label> End Date </label>
                        <input type="date" class="form-control" name="endDate" required="">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-6">   
                        <label> Upload Tender Document </label>
                        <input type="file" class="form-control" name="file" required="">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-6">   
                        <label> Department</label>
                        <input type="text" class="form-control" name="department" required="">
                    </div>
                </div>
                 <div class="form-group row">
                    <div class="col-md-6">   
                        <input type="submit" value="Submit" class="btn btn-success">
                        <input type="reset" value="Reset" class="btn btn-warning" >
                    </div>
                </div>
                
            </form>
        </div>
        <script>
                function DateCheck()
                {
                    var startDate= document.tenderAnnounce.startDate.value;
                    var endDate= document.tenderAnnounce.endDate.value;
//                    
//                    alert(startDate);
//                    alert(endDate);

                    var eDate = new Date(endDate);
                    var sDate = new Date(startDate);
                    if(startDate!=''&& sDate>eDate)
                    {
                        alert("Please ensure that the End Date is greater than Start Date.");
                        return false;
                    }
                    var startDate=document.tenderAnnounce.startDate.value;
                    
                     //alert(startDate);
                    
                    var todaydate = new Date();
                    var day = todaydate.getDate();
                    var month = todaydate.getMonth() + 1;
                    var year = todaydate.getFullYear();
                    var datestring = year + "-" + month + "-" + day;
                    //alert(datestring);
//                  dateString i.e today
//                  startDate i.e tender start Date
                    if( new Date(startDate) < new Date(datestring)){
                    alert("Please Enter Valid Start Date");
                    return false;
                    }
                    //return false;
                }
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>