<%-- 
    Document   : updateProduct
    Created on : Jan 26, 2024, 10:33:20 AM
    Author     : DiepTCNN
--%>

<%@page import="Model.Fruit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>UPDATE NEW PRODUCT</h1>
        <%
            if (request.getAttribute("fruit") != null) {
                Fruit f = (Fruit) request.getAttribute("fruit");
        %>
        <form action="update" method="post">
             <table border="1">
                <tr>
                    <td>Product ID:</td>
                    <td><input type="text" name="id" value="<%= f.getProductId()%>"/></td>
                </tr>
                <tr>
                    <td>Product Name:</td>
                    <td><input type="text" name="name" value="<%= f.getProductName()%>"/></td>
                </tr>
                <tr>
                    <td>Product Image:</td>
                    <td><input type="text" name="image" value="<%= f.getProductImage() %>"/></td>
                </tr>
                <tr>
                    <td>Description:</td><td><input type="text" name="description" value="<%= f.getDescription()%>"/></td>
                </tr>
                <tr>
                    <td>Price:</td><td><input type="text" name="price" value="<%= f.getPrice()%>"/></td>
                </tr> 
            </table>
            <input type="submit" value="ADD"/>
        </form>
        <%
            }
        %>
    </body>
</html>
