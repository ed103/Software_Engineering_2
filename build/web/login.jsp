<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('fruits.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-color: rgba(255, 255, 255, 0.5);
        }

        .container {
            height: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            margin-top: 5%;
        }

        .background-image {
            width: 100%;
            height: auto;
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
            border-radius: 15px;
        }

        .text-center h2 {
            color: #333;
        }

        .form-group label {
            color: #333;
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            background-color: rgba(255, 255, 255, 0.7);
            border: 1px solid #ddd;
            border-radius: 5px;
            color: #333;
        }

        .form-group input::placeholder,
        .form-group textarea::placeholder,
        .form-group select::placeholder {
            color: #555;
        }

        .form-group input:focus,
        .form-group textarea:focus,
        .form-group select:focus {
            background-color: rgba(255, 255, 255, 0.9);
            border: 1px solid #555;
            outline: none;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>

<body>

    <div class="container">
        <img src="fruits.jpg" alt="Background Image" class="background-image">
        <h2 class="text-center">Insert Product</h2>
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
            <div class="form-group">
                <label for="image" class="form-label">Select Image:</label>
                <input type="file" class="form-control" id="image" name="file2" accept="image/*">
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
