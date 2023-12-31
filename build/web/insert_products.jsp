<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

    <div class="container mt-5">
        <h2>Insert Product</h2>
        <form action="product_details" method="post" enctype="multipart/form-data">

            <div class="form-group">
                <label for="productName">Product Name:</label>
                <input type="text" class="form-control" id="productName" name="productName" required>
            </div>
            <div class="form-group">
                <label for="productPrice">Product Price:</label>
                <input type="text" class="form-control" id="productPrice" name="productPrice" required>
            </div>
            <div class="form-group">
                <label for="productDescription">Product Description:</label>
                <textarea class="form-control" id="productDescription" name="productDescription" required></textarea>
            </div>
            <div class="container mt-5">

                <div class="form-group">
                    <label for="image" class="form-label">Select Image:</label>
                    <input type="file" class="form-control" id="image" name="file2" accept="image/*">
                </div>



            </div>

            <div class="form-group">
                <label for="productStatus">Product Status:</label>
                <select class="form-control" id="productStatus" name="productStatus" required>
                    <option value="In Stocks">In Stocks</option>
                    <option value="Out of Stocks">Out of Stocks</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Insert Product</button>
        </form>
    </div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
