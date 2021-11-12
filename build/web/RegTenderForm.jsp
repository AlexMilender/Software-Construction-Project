<jsp:useBean id="dtf" class="mts.DTOTenderForm" >
    <jsp:setProperty name="dtf" property="*"></jsp:setProperty>    
</jsp:useBean>

<%@page import="mts.DAO"%>
<%
   String tenderId=request.getParameter("tenderId");
   session.setAttribute(tenderId, "tenderId");
   DAO dao = new DAO();
    if (dao.doTenderForm(dtf)) {
        response.sendRedirect("TenderApplication.jsp?msg=TenderForm Submitted Successfully");
    } else {
        response.sendRedirect("TenderApplication.jsp?msg=Registration Failed");
    }

%>