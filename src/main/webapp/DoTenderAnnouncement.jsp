<%@page import="edu.ndsu.csci717.dnamjo.SecureMail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="edu.ndsu.csci717.dnamjo.DAO"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
    String foldername = "uploads";
    //out.println("realpath" +request.getRealPath("/")+foldername+("/") +"<br>");
    File ff = new File(request.getRealPath("/") + foldername + ("/"));
    if (ff.mkdirs()) {
        //out.println("path created");
    } else {
        //out.println("path alread creted");
    }
    MultipartRequest multipartRequest = new MultipartRequest(request, request.getRealPath("/") + foldername + ("/"), 5 * 1024 * 1024 * 1024);
    String tenderId = multipartRequest.getParameter("tenderId");
    String startDate = multipartRequest.getParameter("startDate");
    String endDate = multipartRequest.getParameter("endDate");
    String department = multipartRequest.getParameter("department");
    Enumeration files = multipartRequest.getFileNames();

    String fileName = "";
    while (files.hasMoreElements()) {
        String name = (String) files.nextElement();
        fileName = multipartRequest.getFilesystemName(name);
    }

    //out.println("<a href='uploads//image.jpg'>a</a>");
    DAO dao = new DAO();
    ResultSet rs = dao.checkTenderIdExistancy(tenderId);
      ArrayList<String> al=dao.getEmails();
                            
                            try{
                            for(int i=0;i<al.size();i++){
                                String email=al.get(i);
//                                    SecureMail sm=new SecureMail();
                                    Boolean flag=SecureMail.send(email,"A New Tender Is Annouced Please Check WebSite Once ");
                                    if(flag){
                                    System.out.println("mail send to ** **********"+ al.get(i));
                                    }
                                    
                                }
                            }catch(Exception e){
                                e.printStackTrace();
                                    }
                            finally{
                                     if(rs.next() && rs!=null) {
                                                response.sendRedirect("TenderAnnouncement.jsp?msg=TenderId Already Existed");
                                    }
                                    else {
                                        int j = dao.tenderAnnounce(tenderId, startDate, endDate, fileName, department);
                                        out.println("************"+j+"**********");
                                        if (j > 0) {
                                            System.out.println("TEnder published succesfully");
                                            response.sendRedirect("TenderAnnouncement.jsp?msg=Tender Published Successfully");
                                        } else {
                                            System.out.println("TEnder published failed.....");
                                            response.sendRedirect("TenderAnnouncement.jsp?msg=Tender Publish fail");
                                        }
                                    }
                            }    
%>