<%-- 
    Document   : newjsp
    Created on : 06-mar-2018, 19:40:30
    Author     : queralt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <%-- start web service invocation --%><hr/>
    <%
    try {
	factorial.Factorial_Service service = new factorial.Factorial_Service();
	factorial.Factorial port = service.getFactorialPort();
	 // TODO initialize WS operation arguments here
	int n = 10;
	// TODO process result here
	int result = port.fact(n);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>