package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Home Page</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/customestyle.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"fonts/glyphicons-halflings-regular.svg\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"js/custom.js\">\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Advent Pro' rel='stylesheet'>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"margin:0px;padding:0px;background-color:white;font-family: 'Advent Pro';font-size:17px;\">\n");
      out.write("        <div class=\"jumbotron text-center\">\n");
      out.write("            <h1>E tenderS</h1>\n");
      out.write("        </div>       \n");
      out.write("        <div class=\"container\" style=\"background-color:white\">\n");
      out.write("            <ul class=\"nav nav-tabs\">\n");
      out.write("                <li><a href=\"index.jsp\">home</a></li>\n");
      out.write("                <li><a href=\"PublishTenderDetails.jsp\">View Tenders</a></li>\n");
      out.write("                <li><a href=\"TenderApprovals.jsp\"> Tender approvals</a></li>\n");
      out.write("                <li><a href=\"successStory.jsp\">Success Stories</a></li>\n");
      out.write("                <li  class=\"active\"><a href=\"Register.jsp\"> Register</a></li>\n");
      out.write("                <li><a href=\"Login.jsp\"> Login</a></li>\n");
      out.write("                <li><a href=\"AboutUs.jsp\">About US</a></li>\n");
      out.write("                <li><a href=\"ContactUs.jsp\"> Contact Us</a></li>\n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("            <form action=\"DoRegister.jsp\" method=\"post\" enctype=\"multipart/form-data\" >\n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"tab-pane fade in active\">\n");
      out.write("                       <h3> Registration Form </h3>\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("                 <div>\n");
      out.write("                ");

                        String msg=request.getParameter("msg");
                        if(msg==null)
                                {
                                msg=" ";
                                }
                
      out.write("\n");
      out.write("                \n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <div class=\"form-group  col-md-3 text-success\">\n");
      out.write("                            <h3> ");
      out.print(msg);
      out.write(" </h3>            \n");
      out.write("                        </div> \n");
      out.write("                    </div>    \n");
      out.write("            </div>\n");
      out.write("                <div class=\"form-group row \">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>Name</label>\n");
      out.write("                            <input type=\"text\" name=\"name\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row \">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>Company Name</label>\n");
      out.write("                            <input type=\"text\" name=\"companyName\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row \">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                           <label>Register Id</label>\n");
      out.write("                            <input type=\"text\" name=\"registerId\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>Mobile Number</label>\n");
      out.write("                            <input type=\"text\" name=\"mobileNumber\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"form-group col-md-6\">\n");
      out.write("                       <label>City</label>\n");
      out.write("                       <select class=\"form-control\" name=\"city\" required=\"\">\n");
      out.write("                           <option> Select City </option>\n");
      out.write("                           <option> Hyderabad </option>\n");
      out.write("                           <option> Vijayawada </option>\n");
      out.write("                           <option> Vishakahapatnam </option>\n");
      out.write("                           <option> Rajahmundry </option>\n");
      out.write("                           <option> Eluru </option>\n");
      out.write("                       </select>\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"form-group col-md-6\">\n");
      out.write("                       <label> State </label>\n");
      out.write("                       <select class=\"form-control\" name=\"state\" required=\"\">\n");
      out.write("                           <option> Select State </option>\n");
      out.write("                           <option>ANDHRA PRADESH</option>\n");
      out.write("                           <option>TELANGANA</option>\n");
      out.write("                           <option>KARNATAKA</option>\n");
      out.write("                           <option>TAMILANADU</option>\n");
      out.write("                           <option>MAHARASHTRA</option>\n");
      out.write("                           <option>WESTBENGAL</option>\n");
      out.write("                           <option>GOA</option>\n");
      out.write("                           <option>KERALA</option>\n");
      out.write("                       </select>\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("                <div class=\"form-group row \">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>PIN Code</label>\n");
      out.write("                            <input type=\"text\" name=\"pinCode\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row \">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>PAN Number</label>\n");
      out.write("                            <input type=\"text\" name=\"panNumber\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row \">\n");
      out.write("                       <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>Establishment Year</label>\n");
      out.write("                            <input type=\"text\" name=\"estYear\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"form-group col-md-6\">\n");
      out.write("                       <label> Type Of Bidder </label><br><br>  \n");
      out.write("                        <label class=\"radio-inline col-md-2\">\n");
      out.write("                            <input type=\"radio\" name=\"radioopt\" value=\"indian\"> Indian\n");
      out.write("                        </label>\n");
      out.write("                        <label class=\"radio-inline\">\n");
      out.write("                            <input type=\"radio\" name=\"radioopt\" value=\"foreigner\"> Foreigner\n");
      out.write("                        </label>\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"form-group col-md-6\">\n");
      out.write("                       <label>Is Your Company ISO Certified?</label><br><br>\n");
      out.write("                       <label class=\"radio-inline col-md-2\">\n");
      out.write("                           <input type=\"radio\" name=\"radioopt1\" id=\"yes\" value=\"yes\">YES\n");
      out.write("                       </label>\n");
      out.write("                       <label class=\"radio-inline\">\n");
      out.write("                           <input type=\"radio\" name=\"radioopt1\" id=\"no\" value=\"no\">NO\n");
      out.write("                       </label>\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"form-group col-md-6\">\n");
      out.write("                       <label>Upload ISO Certificate</label>\n");
      out.write("                       <input type=\"file\" class=\"form-control\" name=\"file1\">\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                        <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>Email</label>\n");
      out.write("                            <input type=\"email\" name=\"email\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                        <div class=\"form-group  col-md-6\">\n");
      out.write("                            <label>Password</label>\n");
      out.write("                            <input type=\"password\" name=\"password\" class=\"form-control\" required=\"\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                    \n");
      out.write("               <div class=\"form-group row\">\n");
      out.write("                   <div class=\"form-group col-md-6\">\n");
      out.write("                       <div class=\"checkbox\">\n");
      out.write("                           <h4>If the filled details was fake then we will take judicial action</h4>\n");
      out.write("                           <label><input type=\"checkbox\" name=\"check\" required=\"\">I agree</label>\n");
      out.write("                   </div>\n");
      out.write("               </div>\n");
      out.write("               </div>\n");
      out.write("                <div class=\"form-group row\">\n");
      out.write("                        <div class=\"form-group  col-md-6\">\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" class=\"btn btn-success\">\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" class=\"btn btn-warning\">\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
