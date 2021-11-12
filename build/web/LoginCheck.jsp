<%@page import="mts.DAO"%>
<%@page import="mts.LoginBean"%>
<%
    String email = request.getParameter("email");
    session.setAttribute("email", email);
    String password = request.getParameter("password");
    LoginBean loginBean=new LoginBean(email, password,"");
    
    DAO dao = new DAO();
    
    LoginBean loginBean1=dao.loginCheck(loginBean);
    String desig=loginBean1.getDesig();
    if(desig!=null)
    {
        if (desig.equalsIgnoreCase("admin"))
        {
            response.sendRedirect("AdminHome.jsp?welcome Admin");
        } 
        else if(desig.equalsIgnoreCase("user")) 
        {
            response.sendRedirect("UserLogin.jsp?Wecome");
        }
        else{
            response.sendRedirect("Login.jsp?msg=Invalid Login");
        }
    }else{
            response.sendRedirect("Login.jsp?msg=Invalid Login");
    }
    
%>

