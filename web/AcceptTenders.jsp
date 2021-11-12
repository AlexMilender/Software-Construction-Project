<%@page import="java.util.ArrayList"%>
<%@page import="mts.SecureMail"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="mts.DAO"%>
<%
    String companyRegisterNumber=request.getParameter("cno");
    String pancard = request.getParameter("pan");
    String tenderId= request.getParameter("tenderId");
    Long quoteAmount = Long.parseLong(request.getParameter("qa"));
    BigDecimal quoteAmount1 = BigDecimal.valueOf(quoteAmount);
    Timestamp timeStampValue = new Timestamp(System.currentTimeMillis());
    
    DAO dao=new DAO();
        
    ArrayList<String> al = dao.getEmails(request.getParameter("cno"));

        if(al.size()>0) {
            String email = al.get(0);
//          SecureMail sm=new SecureMail();
            Boolean flag =SecureMail.send(email,"Congratulation ,your tender was accepted");
            if (flag) {
                System.out.println("mail send to ************" + al.get(0));
            }

        }
    

    int j=dao.ConformedTenders(companyRegisterNumber,pancard,quoteAmount1,timeStampValue,tenderId);
    if(j>0){
            response.sendRedirect("AdminApprovalTenders.jsp?msg=Tender Accepted");
//            Here i need to change clear to yes where tenderId    
            for(int i=0; i< dao.tenderCount(tenderId);i++){
                dao.updateRecords(tenderId);
            }
   }
    else{
         out.println("Tender Rejected");
    }
%>