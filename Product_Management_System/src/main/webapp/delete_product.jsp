<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Product</title>
<style>
    @keyframes slideIn {
        from { opacity: 0; transform: translateY(-30px); }
        to { opacity: 1; transform: translateY(0); }
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #fff1eb 0%, #ace0f9 100%);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: rgba(255, 255, 255, 0.95);
        padding: 2.5rem;
        border-radius: 15px;
        box-shadow: 0 8px 32px rgba(0,0,0,0.1);
        width: 90%;
        max-width: 400px;
        animation: slideIn 0.5s ease-out;
    }

    h2 {
        color: #e74c3c;
        text-align: center;
        margin-bottom: 1.5rem;
        font-size: 2em;
        text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    }

    .form-group {
        margin-bottom: 1.5rem;
    }

    label {
        display: block;
        margin-bottom: 0.8rem;
        color: #2c3e50;
        font-weight: 600;
    }

    input[type="number"] {
        width: 100%;
        padding: 0.8rem;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        font-size: 1rem;
        transition: all 0.3s ease;
    }

    input[type="number"]:focus {
        outline: none;
        border-color: #e74c3c;
        box-shadow: 0 0 8px rgba(231, 76, 60, 0.2);
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
        transition: all 0.2s ease;
    }

    input[type="submit"] {
        background: linear-gradient(45deg, #e74c3c, #c0392b);
        color: white;
    }

    input[type="reset"] {
        background: linear-gradient(45deg, #95a5a6, #7f8c8d);
        color: white;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    }

    .back-btn {
        display: inline-block;
        width: 100%;
        text-align: center;
        text-decoration: none;
        background: linear-gradient(45deg, #3498db, #2980b9);
        color: white;
        margin-top: 1.5rem;
        padding: 0.8rem;
        border-radius: 8px;
    }

    .back-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
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
        <h2>Delete Product</h2>
        <form action="ProductDeleteController" method="post">
            <div class="form-group">
                <label>Product ID</label>
                <input type="number" name="pid" required>
            </div>
            
            <div class="button-group">
                <input type="submit" value="Delete Product">
                <input type="reset" value="Clear">
            </div>
        </form>
        <a href="index.html" class="back-btn">Back to Home</a>
    </div>
</body>
</html>