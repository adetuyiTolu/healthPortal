package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class desk_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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


session.setAttribute("reg",""); 
if(session.getAttribute("log").toString().equalsIgnoreCase("desk")){

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("        <title>Good Health Inc</title>\r\n");
      out.write("        <meta name=\"description\" content=\"Medical website\">\r\n");
      out.write("        <script src=\"scripts/jquery-1.4.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script type='text/javascript' src='jquery/jquery-1.6.1.min.js'></script>\r\n");
      out.write("        <script type='text/javascript' src='jquery/slideshow.js'></script>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"styles/style_sheet.css\" />\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <style type=\"text/css\">\r\n");
      out.write("            a:link {\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                color: #008099;\r\n");
      out.write("            }\r\n");
      out.write("            a:visited {\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("            }\r\n");
      out.write("            a:hover {\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                color: #008099;\r\n");
      out.write("            }\r\n");
      out.write("            a:active {\r\n");
      out.write("                text-decoration: none;\r\n");
      out.write("                color: #008099;\r\n");
      out.write("            }\r\n");
      out.write("            #top #call_us .gray {\r\n");
      out.write("                color: #1d3f6c;\r\n");
      out.write("            }\r\n");
      out.write("            #apDiv1 {\r\n");
      out.write("                position:absolute;\r\n");
      out.write("                width:200px;\r\n");
      out.write("                height:45px;\r\n");
      out.write("                z-index:1;\r\n");
      out.write("                left: 366px;\r\n");
      out.write("                top: 79px;\r\n");
      out.write("                color: #1d3f6c;\r\n");
      out.write("            }\r\n");
      out.write("            body {\r\n");
      out.write("                background-image: url(images/bg4.gif);\r\n");
      out.write("                background-color: #FFF;\r\n");
      out.write("                background-repeat: repeat;\r\n");
      out.write("            }\r\n");
      out.write("            h2 {\r\n");
      out.write("                font-size: 2em;\r\n");
      out.write("            }\r\n");
      out.write("            #pag fieldset #page #contentwrap #mainc fieldset table tr td {\r\n");
      out.write("                color: #416271;\r\n");
      out.write("            }\r\n");
      out.write("            #pag fieldset #page #contentwrap table tr td table {\r\n");
      out.write("                text-align: center;\r\n");
      out.write("            }\r\n");
      out.write("            #pag fieldset #page #contentwrap table tr td table {\r\n");
      out.write("                text-align: center;\r\n");
      out.write("            }\r\n");
      out.write("            #pag fieldset #page #contentwrap table tr td marquee {\r\n");
      out.write("                color: #087097;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body bgcolor=\"#FFFFFF\">\r\n");
      out.write("        <div id=\"pag\" align=\"center\">\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            <fieldset>\r\n");
      out.write("                <div id=\"wrap\" align=\"center\">\r\n");
      out.write("                    <div id=\"page\">\r\n");
      out.write("\r\n");
      out.write("                        <div id=\"top\" ><img src=\"images/Q.jpg\" alt=\"LOGO\" width=\"179\" height=\"129\" align=\"left\"></br>\r\n");
      out.write("                        </div>\r\n");
      out.write("                       \r\n");
      out.write("                        <div id=\"contentwrap\">\r\n");
      out.write("                            \r\n");
      out.write("                           <table width=\"920\" border=\"0\" align=\"center\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td width=\"500\" colspan=\"2\" bgcolor=\"#FFFFFF\"><marquee behavior=\"alternate\" direction=\"right\" scrollamount=\"2\">\r\n");
      out.write("                                    You are welcome to good health inc. Portal:|| You are currently logged in as a Desktop Officer.\r\n");
      out.write("                                </marquee></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr><td width=\"500\">\r\n");
      out.write("\r\n");
      out.write("                                        <div id=\"menu\">\r\n");
      out.write("                                            <ul>                                        \r\n");
      out.write("                                                <li><a id=\"hom\">Home</a></li>\r\n");
      out.write("                                                <li><a id=\"reg\">Register New Patient</a></li>\r\n");
      out.write("                                                <li><a id=\"admit\">Manage Patient</a></li>\r\n");
      out.write("                                                <li><a href=\"index.html\">Log Out</a></li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                            <br>\r\n");
      out.write("                                            <table width=\"892\" height=\"10\" border=\"0\" align=\"center\">\r\n");
      out.write("                                                <tr>\r\n");
      out.write("                                                    <td width=\"606\" ><hr align=\"center\"></td>\r\n");
      out.write("                                                </tr>\r\n");
      out.write("                                            </table>\r\n");
      out.write("                                        </div>\r\n");
      out.write("\r\n");
      out.write("                                    </td></tr>  \r\n");
      out.write("                            </table>\r\n");
      out.write("                            <br>\r\n");
      out.write("                            \r\n");
      out.write("                            <div id=\"mainc\">\r\n");
      out.write("                                <fieldset>\r\n");
      out.write("                                    <table width=\"912\">\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <td width=\"508\" align=\"left\" valign=\"top\">\r\n");
      out.write("                                                <div id=\"slideshow\">\r\n");
      out.write("\r\n");
      out.write("                                                    <ul class=\"slides\">\r\n");
      out.write("                                                        <li><img src=\"images/GH-home-cancer2.jpg\" width=\"459\" height=\"300\" alt=\"image\" /></li>\r\n");
      out.write("                                                        <li><img src=\"images/GH-home-surgery2.jpg\" width=\"459\" height=\"300\" alt=\"image\" /></li>\r\n");
      out.write("                                                        <li><img src=\"images/home_emergency2.jpg\" width=\"459\" height=\"300\" alt=\"image\" /></li>\r\n");
      out.write("                                                        <li><img src=\"images/GH-home-surgery2.jpg\" width=\"459\" height=\"300\" alt=\"image\" /></li>\r\n");
      out.write("                                                    </ul>\r\n");
      out.write("\r\n");
      out.write("                                                    <span class=\"arrow previous\"></span>\r\n");
      out.write("                                                    <span class=\"arrow next\"></span>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </td>\r\n");
      out.write("                                            <td width=\"392\" align=\"left\" valign=\"top\" class=\"bold\">\r\n");
      out.write("                                                <br>\r\n");
      out.write("                                                </br><strong>Desk Officer</strong>\r\n");
      out.write("                                                <br>\r\n");
      out.write("                                                </br>\r\n");
      out.write("                                                You are welcome to the homepage of a desk officer,all you have to is follow the links to perform all patient related task like registering new patient and also managing patient.<br />\r\n");
      out.write("                                                &nbsp; To register new Patient,follow the <span class=\"bold\">Register New Patient</span> link and to perform all other task like admitting or discharging of patient,registering of patient for laboratory and pharmacy services,all you have to do is follow the <span class=\"bold\">Manage Patient</span> link.</td>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                    </table>\r\n");
      out.write("                                </fieldset>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div id=\"admitf\" >\r\n");
      out.write("                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "search.jsp", out, false);
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div id=\"regf\"> ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "reg.jsp", out, false);
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                            <table width=\"925\" border=\"0\" align=\"center\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td width=\"919\" height=\"141\" id=\"fgfieldset\">\r\n");
      out.write("                                        <img src=\"images/priority2.jpg\" width=\"300\">\r\n");
      out.write("                                        <img src=\"images/priority2.jpg\" width=\"300\" />\r\n");
      out.write("                                        <img src=\"images/priority2.jpg\" width=\"300\">\r\n");
      out.write("\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                            <div id=\"footer\">\r\n");
      out.write("                                <div id=\"bottom_addr\">© 2012 Good Health Inc. All Rights Reserved || Designed by Adetuyi Tolu Slimfit Emmanuel  </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div> \r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                    <script type=\"text/javascript\">\r\n");
      out.write("                        $(document).ready(function() {\r\n");
      out.write("                         \r\n");
      out.write("                            $(\"#mainc\").show();\r\n");
      out.write("                            $(\"#admitf\").hide(); \r\n");
      out.write("                            $(\"#regf\").hide();\r\n");
      out.write("   \r\n");
      out.write("                            $(\"#admit\").click(function(){\r\n");
      out.write("                                $('#register [name=\"search\"]').val('');\r\n");
      out.write("                                $(\"#deatails\").hide();\r\n");
      out.write("                                $(\"#regf\").hide();\r\n");
      out.write("                                $(\"#mainc\").hide();          \t\r\n");
      out.write("                                $(\"#admitf\").fadeIn(2100);   \r\n");
      out.write("                            });\r\n");
      out.write("\t\r\n");
      out.write("\t \r\n");
      out.write("   \r\n");
      out.write("                            $(\"#reg\").click(function(){\r\n");
      out.write("                                $(\"#deatails\").hide();\r\n");
      out.write("                                $(\"#mainc\").hide();\r\n");
      out.write("                                $(\"#admitf\").hide(); \r\n");
      out.write("                                $(\"#regf\").fadeIn(2100);\r\n");
      out.write("                     \t\r\n");
      out.write("                            });\r\n");
      out.write("\t\r\n");
      out.write("                            $(\"#hom\").click(function(){\r\n");
      out.write("                                $(\"#deatails\").hide();\r\n");
      out.write("                                $(\"#regf\").hide();\r\n");
      out.write("                                $(\"#admitf\").hide(); \r\n");
      out.write("                                $(\"#mainc\").fadeIn(2100);\r\n");
      out.write("                     \t\r\n");
      out.write("                            });\r\n");
      out.write("\t\t\t\r\n");
      out.write("                            // });\r\n");
      out.write("                        });\r\n");
      out.write("                    </script>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("            <br>\r\n");
      out.write("        </div>\r\n");
      out.write("                            \r\n");
      out.write("    </body>\r\n");
      out.write(" </html>\r\n");
 }else{
      out.write("\r\n");
      out.write("<script>(window.location.href='index.jsp');</script> \r\n");
 }
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
