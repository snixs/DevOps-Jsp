<html>
<head><title>A First JSP page</title></head>
<body><h1>A short JSP example</h1>
<form method=POST>Please enter your age here <input name=age></form>
<%
int value = 0;
int target = 21;
boolean havevalue = false;
try {
    value = Integer.parseInt(request.getParameter("age"));
    havevalue = true;
} catch (Exception e) {}

if (havevalue && (value < 0 || value > 120)) {
    out.println("WARNING - input value is not in range");
} else if (havevalue)  {
    String word = (value < target) ? "will be " : "were ";
    String word2 = (value < target) ? "from now" : "ago";
    int diff = Math.abs(value-target);
    out.println ("You "+word+target+" ......  "+diff+" years "+word2);
} else {
%>
You are requested to enter your age in years on this form.
<i>As it's only a test, you may lie ;-) </i> but I expect we'll
guess if you're more than a few years out!
<% } %>
<hr>
Copyright, Well House Consultants
</body>
</html>
