<%-- 
    Document   : picture
    Created on : Dec 31, 2023, 5:10:25 PM
    Author     : Falcon_9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <jsp:include page="includes/header.jsp"/>
    </head>
    <body>
        <form action="filehandler" method="post">
    <center>
        <div class="mb-3">
            <label for="file_name" class="form-label">Enter File Name</label>
            <input type="text" class="form-control" name="file_name" id="file_name" required>
        </div>

        <div class="mb-3">
            <label for="file2" class="form-label">Select File</label>
            <input type="file" class="form-control" name="file2" id="file2" required>
        </div>
        
        <div>
            <button type="submit" class="btn btn-primary">Upload</button>
        </div>
    </center>
</form>

    </body>
     <jsp:include page="includes/footer.jsp"/>
</html>
