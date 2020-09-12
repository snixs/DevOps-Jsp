Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@snixs 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


snixs
/
Tomcat-Application
1
00
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
Tomcat-Application/hello-world.jsp
@snixs
snixs Update hello-world.jsp
Latest commit 8a8a7d3 10 minutes ago
 History
 1 contributor
59 lines (56 sloc)  1.93 KB
  
<%@ page language="java"%>
<html>
    <head>
        <title>Using Multiple Forms</title>
    </head>
    <body>
        <h1>Using Multiple Forms</h1>
        <%
            if(request.getParameter("button") != null) {
        %>
        <% String s = request.getParameter("button");
           int no1,no2;
           if(request.getParameter("no1").equals("")) { no1 = 0; } else no1 = Integer.valueOf(request.getParameter("no1"));
           if(request.getParameter("no2").equals("")) { no2 = 0; } else no2 = Integer.valueOf(request.getParameter("no2"));
           if (s.equals("ADD")) {
               out.println("Result is " + (no1 + no2));
           }
           else if (s.equals("SUB")) {
               out.println("Result is " + (no1-no2));
           }
           else if(s.equals("MUL")) {
               out.println("Result is " + (no1*no2));
           }
           else if(s.equals("DIV")) {
               out.println("Result is " + (no1/no2));
           }
       
        %>
        <%
            }
        %>
       
       
        <form name="form1" method="get">
            <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="ADD">
            <input type="submit" value="ADD">
        </form>
        <form name="form2" method="get">
            <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="SUB">
            <input type="submit" value="SUB">
        </form>
        <form name="form3" method="get">
                    <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="MUL">
            <input type="submit" value="MUL">
        </form>
        <form name="form4" method="get">
            <input name="no1">
            <input name="no2">
            <input type="hidden" name="button" value="DIV">
            <input type="submit" value="DIV">
        </form>
    </body>
</html>
© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
