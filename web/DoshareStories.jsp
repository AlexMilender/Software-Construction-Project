<%@page import="mts.DAO"%>
<jsp:useBean id="shinf" class="mts.DTOShareInfo">
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