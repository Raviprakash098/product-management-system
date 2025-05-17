<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<style>
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: white;
        padding: 2rem 3rem;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        width: 90%;
        max-width: 500px;
        animation: fadeIn 0.6s ease-out;
    }

    h2 {
        color: #2c3e50;
        text-align: center;
        margin-bottom: 2rem;
        font-size: 2em;
    }

    .form-group {
        margin-bottom: 1.5rem;
    }

    label {
        display: block;
        margin-bottom: 0.5rem;
        color: #34495e;
        font-weight: 500;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 0.8rem;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        font-size: 1rem;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        outline: none;
        border-color: #3498db;
    }

    .button-group {
        display: flex;
        gap: 1rem;
        margin-top: 2rem;
    }

    input[type="submit"],
    input[type="reset"],
    .back-btn {
        flex: 1;
        padding: 0.8rem;
        border: none;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: 600;
        cursor: pointer;
        transition: transform 0.2s ease, opacity 0.2s ease;
    }

    input[type="submit"] {
        background: linear-gradient(45deg, #3498db, #2980b9);
        color: white;
    }

    input[type="reset"] {
        background: linear-gradient(45deg, #e74c3c, #c0392b);
        color: white;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        transform: translateY(-2px);
        opacity: 0.9;
    }

    .back-btn {
        display: inline-block;
        text-align: center;
        text-decoration: none;
        background: linear-gradient(45deg, #95a5a6, #7f8c8d);
        color: white;
        margin-top: 1rem;
        padding: 0.8rem 1.5rem;
    }

    .back-btn:hover {
        transform: translateY(-2px);
        opacity: 0.9;
    }

    @media (max-width: 480px) {
        .container {
            padding: 1.5rem;
        }
        
        .button-group {
            flex-direction: column;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Add Product</h2>
        <form action="ProductStoreController" method="post">
            <div class="form-group">
                <label>Product ID</label>
                <input type="number" name="pid" required>
            </div>
            
            <div class="form-group">
                <label>Product Name</label>
                <input type="text" name="pname" required>
            </div>
            
            <div class="form-group">
                <label>Price</label>
                <input type="number" name="price" required step="0.01">
            </div>
            
            <div class="button-group">
                <input type="submit" value="Store Product">
                <input type="reset" value="Clear">
            </div>
        </form>
        <a href="index.html" class="back-btn">Back to Home</a>
    </div>
</body>
</html>