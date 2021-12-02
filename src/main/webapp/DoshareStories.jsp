<%@page import="edu.ndsu.csci717.dnamjo.DAO"%>
<jsp:useBean id="shinf" class="edu.ndsu.csci717.dnamjo.DTOShareInfo">
    <jsp:setProperty name="shinf" property="*"></jsp:setProperty>
</jsp:useBean>


<%
    DAO dao=new DAO();
    if(dao.getSuccessStories(shinf))
    {
        response.sendRedirect("ShareInfo.jsp?msg=your store submitted succesfully... ");
    }else{
        response.sendRedirect("ShareInfo.jsp?");
    }
    %>