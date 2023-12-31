<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Panel</title>
    <jsp:include page="includes/header.jsp" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />

    
</head>

<body style="background: url('ppp.jpg') no-repeat center center fixed; background-size: cover; position: relative;">

 
    <jsp:include page="includes/admin_nav.jsp" />

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-3">
                <div class="container">
                    <div class="card shadow-lg border-0">
                        <div class="card-body">
                            <h5 class="card-title">Add Products</h5>
                            <p class="card-text">Click here to add products.</p>
                            <a href="insert_products.jsp" class="btn btn-primary btn-lg" role="button">Add Products</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="container">
                    <div class="card shadow-lg border-0">
                        <div class="card-body">
                            <h5 class="card-title">All Products</h5>
                            <p class="card-text">View all products here.</p>
                            <a href="orders.jsp" class="btn btn-primary btn-lg" role="button">All Products</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="container">
                    <div class="card shadow-lg border-0">
                        <div class="card-body">
                            <h5 class="card-title">User Details</h5>
                            <p class="card-text">View user details here.</p>
                            <a href="userdetails.jsp" class="btn btn-primary btn-lg" role="button">User Details</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="container">
                    <div class="card shadow-lg border-0">
                        <div class="card-body">
                            <h5 class="card-title">Logout</h5>
                            <p class="card-text">Click here to logout.</p>
                            <a href="login.jsp" class="btn btn-primary btn-lg" role="button">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="includes/footer.jsp" />
</body>

</html>
