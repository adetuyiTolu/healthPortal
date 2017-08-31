package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
 session.setAttribute("sub", "no"); 
session.setAttribute("log", "no");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>Good Health Inc</title>\r\n");
      out.write("<meta name=\"description\" content=\"Medical website\">\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script src=\"scripts/jquery-1.4.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("\r\n");
      out.write("<div id=\"page\">\r\n");
      out.write("  <div id=\"top\">\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"header\">\r\n");
      out.write("  \t<div id=\"intro\">\r\n");
      out.write("  \t  <h2>Professional Quote</h2>\r\n");
      out.write("  \t  Now,we are all on a journey.it is the journey of every man,woman \r\n");
      out.write("  \t    and <br>child who rises up at dawn to chase their dreams,every\r\n");
      out.write("  \t    journey has its own challenges,after having a strong resolve and\r\n");
      out.write("  \t    a clear vision to get to our destination,all we need is good and \r\n");
      out.write("  \t    sound health.\r\n");
      out.write("\r\n");
      out.write("  \t  <p>&nbsp; </p>\r\n");
      out.write("  \t  <h2>This is the spirit of GOOD HEALTH INC.</h2>\r\n");
      out.write("  \t</div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"contentwrap\">\r\n");
      out.write("    <div id=\"body_txt\">\r\n");
      out.write("      <h1>Good Health Incoporation</h1>\r\n");
      out.write("\r\n");
      out.write("      <p>Medicine is the branch of health science and the sector of public life concerned with maintaining or restoring human health through the study, diagnosis, treatment and possible prevention of disease and injury.</p>\r\n");
      out.write("      <p> It is both an area of knowledge &ndash; a science of body systems, their diseases and treatment and the applied practice of that knowledge.<br>\r\n");
      out.write("        Western medical care is shared between medical professionals (physicians) and othser professionals such as physician assistants, nurses and pharmacists, sometimes known as allied health professionals. </p>\r\n");
      out.write("      <p>Historically, only those with a medical doctorate have been considered to practice medicine. Clinicians (licensed professionals who deal with patients) can be physicians, nurses, therapists or others. The medical profession is the social and occupational structure of the group of people formally trained and authorized to apply medical knowledge. Many countries and legal jurisdictions have legal limitations on who may practice medicine.</br>\r\n");
      out.write("        Medicine comprises various specialized sub-branches, such as cardiology, pulmonology, neurology, or other fields such as sports medicine, research or public health.</p>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"sidebar\" >\r\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"login.jsp\">\r\n");
      out.write("          <fieldset style=\"border-color: #009; border-width: medium; font-family: Tahoma, Geneva, sans-serif; color: #005889;\">\r\n");
      out.write("            <legend><b><img src=\"images/login.png\" alt=\"Keys\" width=\"45\" height=\"45\"></b></legend>\r\n");
      out.write("            <table >\r\n");
      out.write("              <tbody><tr></tr>\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td ><b>UserName:</b></td>\r\n");
      out.write("                <td colspan=\"2\">\r\n");
      out.write("                 &nbsp;&nbsp; <input name=\"un\" type=\"text\" id=\"un\" size=\"30\" autocomplete=\"on\" placeholder=\"User Name\"></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td><b>Password:</b></td>\r\n");
      out.write("                <td colspan=\"2\">&nbsp;&nbsp;&nbsp;<input name=\"pw\" type=\"password\" id=\"pw\" size=\"30\" autocomplete=\"on\" placeholder=\"Password\"></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              <tr>\r\n");
      out.write("                <td>&nbsp;</td>\r\n");
      out.write("                <td><input name=\"button\" type=\"submit\" class=\"gray\" id=\"button\" style=\"color:#009\" value=\"   Login   \"></td>\r\n");
      out.write("                <td><input name=\"button2\" id=\"button2\" value=\"   Reset   \" style=\"color:#009\" type=\"reset\"></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("              <tr></tr>\r\n");
      out.write("            </tbody></table>\r\n");
      out.write("           \r\n");
      out.write("          </fieldset>\r\n");
      out.write("        </form>\r\n");
      out.write("      \r\n");
      out.write("</div>\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"footer\">\r\n");
      out.write("    <div id=\"bottom_addr\">© 2012 Good Health Inc. All Rights Reserved</div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("                        $(document).ready(function() {\r\n");
      out.write("                         $(\"#sidebar\").hide();\r\n");
      out.write("                         $(\"#body_txt\").hide()\r\n");
      out.write("                         $(\"#body_txt\").fadeIn(3000);\r\n");
      out.write("                         $(\"#sidebar\").slideDown(2100);\r\n");
      out.write("                            \r\n");
      out.write("                            $(\"#staf\").click(function(){\r\n");
      out.write("                                $(\"#mainc\").hide();\r\n");
      out.write("                                $(\"#mainc\").slideDown(3000);\r\n");
      out.write("                             window.location=\"staffs.jsp\";   \r\n");
      out.write("                            });\r\n");
      out.write("                             });\r\n");
      out.write("                             </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
