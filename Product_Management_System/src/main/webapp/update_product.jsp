<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
    
    .update-card {
        animation: fadeIn 0.6s ease-out;
        background: rgba(255, 255, 255, 0.95);
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    }
    
    .form-control:focus {
        border-color: #4a90e2;
        box-shadow: 0 0 0 0.25rem rgba(74, 144, 226, 0.25);
    }
    
    .btn-update {
        background: linear-gradient(45deg, #4a90e2, #2c6cd4);
        color: white;
        transition: transform 0.2s ease;
    }
    
    .btn-update:hover {
        transform: translateY(-2px);
        color: white;
    }
</style>
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card update-card p-4 mx-auto" style="max-width: 500px;">
        <div class="card-body">
            <h2 class="text-center mb-4 text-primary fw-bold">Update Product Details</h2>
            
            <form action="ProductUpdateController" method="post">
                <div class="mb-3">
                    <label for="pid" class="form-label fw-bold">Product ID</label>
                    <input type="number" class="form-control" id="pid" name="pid" required 
                           placeholder="Enter product ID">
                </div>
                
                <div class="mb-4">
                    <label for="price" class="form-label fw-bold">New Price</label>
                    <input type="number" class="form-control" id="price" name="price" required 
                           step="0.01" placeholder="Enter new price">
                </div>
                
                <div class="d-grid gap-3 d-flex justify-content-center">
                    <button type="submit" class="btn btn-update btn-lg px-4">
                        <i class="bi bi-arrow-repeat me-2"></i>Update Product
                    </button>
                    <button type="reset" class="btn btn-outline-secondary btn-lg">
                        Reset
                    </button>
                </div>
            </form>
            
            <div class="text-center mt-4">
                <a href="index.html" class="btn btn-link text-decoration-none">
                    <i class="bi bi-arrow-left me-2"></i>Back to Home
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>