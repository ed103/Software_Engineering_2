<%@ page import="java.util.*" %>
<%
    String cPage = request.getServletPath();
%>

<nav class="navbar navbar-expand-lg bg-dark" style="background-color: #333; padding: 15px;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="color: white; font-size: 24px;">
            <img src="images.png" width="50" height="50" alt="alt" class="mr-2"/> Green Supermarket
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="admin.jsp" style="color: white; font-size: 18px;">Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp" style="color: white; font-size: 18px;">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
