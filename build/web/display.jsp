<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <form action="displayimg" method="post">
        <input type="number" name="imageid">
        <input type="submit" value="display">
    </form>

    <%
        String imgfilename = (String)request.getAttribute("imgfilename");
        String imgid = (String)request.getAttribute("id");
        System.out.println(imgfilename);
    %>

    <%
        if(imgfilename != null && imgid != null) {
    %>
        <%= imgid %>
        <img src="C:/Users/Falcon_9/Documents/NetBeansProjects/greensupermarket/web/images/<%= imgfilename %>" alt="alt"/>
    <%
        }
    %>
</body>
</html>
