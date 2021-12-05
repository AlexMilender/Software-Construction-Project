<%@page import="java.util.Enumeration"%>
<%@page import="edu.ndsu.csci717.dnamjo.DTORegister"%>
<%@page import="java.io.File"%>
<%@page import="edu.ndsu.csci717.dnamjo.DAO"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%--<jsp:useBean id="drg" class="edu.ndsu.csci717.dnamjo.DTORegister">
    <jsp:setProperty name="drg" property="*"></jsp:setProperty>
</jsp:useBean>--%>
<%
    String foldername = "docs";
    //out.println("realpath" +request.getRealPath("/")+foldername+("/") +"<br>");
    File ff = new File(request.getRealPath("/") + foldername + ("/"));
    if (ff.mkdirs()) {
        //out.println("path created");
    } else {
        //out.println("path alread creted");
    }
    MultipartRequest multipartRequest = new MultipartRequest(request, request.getRealPath("/") + foldername + ("/"), 5 * 1024 * 1024 * 1024);
    Enumeration files = multipartRequest.getFileNames();

    String fileName = "";
    while (files.hasMoreElements()) {
        String name = (String) files.nextElement();
        fileName = multipartRequest.getFilesystemName(name);
    }

    String name=multipartRequest.getParameter("name");
    String companyName=multipartRequest.getParameter("companyName");
    String registerId=multipartRequest.getParameter("registerId");
    String mobileNumber=multipartRequest.getParameter("mobileNumber");
    String city=multipartRequest.getParameter("city");
    String state=multipartRequest.getParameter("state");
    String pinCode=multipartRequest.getParameter("pinCode");
    String panNumber=multipartRequest.getParameter("panNumber");
    String estYear=multipartRequest.getParameter("estYear");
    String radioopt=multipartRequest.getParameter("radioopt");
    String radioopt1=multipartRequest.getParameter("radioopt1");
    String file1;
    if(fileName!=null)    
        file1=fileName;
    else
        file1="noImage";        
    String email=multipartRequest.getParameter("email");
    String password=multipartRequest.getParameter("password");
    String check=multipartRequest.getParameter("check");
    String desig="user";
    DAO dao=new DAO();
    DTORegister dtoRegister=new DTORegister(name, companyName, registerId, mobileNumber, city, state, pinCode, panNumber, estYear, radioopt, radioopt1, file1, email, password, check, desig); 
    if(dao.doRegister(dtoRegister))
    {
        response.sendRedirect("Register.jsp?msg=Registration Successful");
    }else{
        response.sendRedirect("Register.jsp?msg=Registration Failed");
    }
    %>