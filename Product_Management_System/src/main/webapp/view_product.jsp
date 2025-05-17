<%@page import="java.util.Iterator"%>
<%@page import="com.pms.bean.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>View Products</title>
</head>
<body>
<div class="container">
    <h2>View Product</h2>
    
    <h3>All Product information using scriptlet tag</h3>
    <table class="table table-bordered">
        <tr class="table-primary">
            <th>PId</th>
            <th>PName</th>
            <th>Price</th>
        </tr>
        <%
            Object obj = request.getAttribute("listofproduct");
            if (obj != null) {
                List<Product> listOfProduct = (List<Product>) obj;
                Iterator<Product> li = listOfProduct.iterator();
                while (li.hasNext()) {
                    Product p = li.next();
        %>
        <tr>
            <td><%= p.getPid()%></td>
            <td><%= p.getPname()%></td>
            <td><%= p.getPrice()%></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="3">No products found</td>
        </tr>
        <%
            }
        %>
    </table>

    <hr/>

    <h3>All Product information using JSTL</h3>
    <table class="table table-bordered">
        <tr class="table-primary">
            <th>PId</th>
            <th>PName</th>
            <th>Price</th>
        </tr>
        <c:choose>
            <c:when test="${not empty listofproduct}">
                <c:forEach items="${listofproduct}" var="product">
                    <tr>
                        <td>${product.pid}</td>
                        <td>${product.pname}</td>
                        <td>${product.price}</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="3">No products found</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </table>
    <a href="index.html" class="btn btn-secondary">Back</a>
</div>
</body>
</html>