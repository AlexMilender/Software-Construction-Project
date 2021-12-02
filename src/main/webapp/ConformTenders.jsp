<%@page import="java.util.Enumeration"%>
<%
        Enumeration<String> e=request.getAttributeNames();
        int i=0;
        while(e.hasMoreElements()){
            i++;    
        }
        out.println(i);
%>