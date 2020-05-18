<%--
  Created by IntelliJ IDEA.
  User: Nimi
  Date: 5/7/2020
  Time: 11:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory</h1>

            <p class="lead">This is Product Inventory Page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productID}.png"/> " alt="image"
                             style="width: 100%"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} CAD</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productID}"/>">
                        <span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productID}"/>">
                            <span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/productInventory/editProduct/${product.productID}"/>">
                            <span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary" > Add Product </a>


        <%@include file="/WEB-INF/views/template/footer.jsp"%>
