<%@ page import="java.util.*" %>
<%
    String cPage = request.getServletPath();
%>

<nav class="navbar navbar-expand-lg bg-dark" style="background-color: #333; padding: 15px;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="color: white; font-size: 24px;">
            <img src="images.png" width="50" height="50" alt="alt" class="mr-2"/> Admin Panel
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
                
               
                
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp" style="color: white; font-size: 18px;">Logout</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search Products" style="border: none; border-bottom: 1px solid white; border-radius: 0; font-size: 16px;">
                <button type="submit" class="btn btn-outline-success" style="color: white; font-size: 18px;">Search</button>
            </form>
        </div>
    </div>
</nav>
