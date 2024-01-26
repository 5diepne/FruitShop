<%-- 
    Document   : list_product
    Created on : Dec 13, 2023, 8:48:11 AM
    Author     : Dell
--%>

<%@page contentType="text/html" import="Model.*,java.util.*" pageEncoding="UTF-8"%>

<!-- Product Listings Section -->
<div class="container">
    <div class="row">
        <%
            ArrayList<Fruit> allFruits = (ArrayList<Fruit>) request.getAttribute("data");
            if (allFruits != null) {
                for (Fruit o : allFruits) {
        %>
        <div class="col-md-4">
            <a href="list_product.jsp"></a>
            <div class="card">
                <img src="<%= o.getProductImage()%>" class="card-img-top" height="356pt" alt="<%=o.getProductName()%>">
                <div class="card-body">
                    <h5 class="card-title"><%=o.getProductName()%></h5>
                    <p class="card-text"><%=o.getDescription()%></p>
                    <p class="card-text">Price: $<%=o.getPrice()%>/kg</p>
                    <a href="addToCart?id=<%= o.getProductId()%>" class="btn btn-primary">Add to Cart</a>
                    <a href="update?id=<%= o.getProductId()%>" class="btn btn-primary">Update</a>
                    <a href="#" onclick="doDelete(<%= o.getProductId()%>)" class="btn btn-primary">Delete</a>
                </div>
            </div>
            <script type="text/javascript">
                function doDelete(id) {
                    if (confirm("Are you sure to detele category with id = " + id + "?"))
                        window.location = "delete?id=" + id;
                }
            </script>    
        </div>
        <%
                }
            }
        %>

    </div>