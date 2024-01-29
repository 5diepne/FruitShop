<%-- 
    Document   : addProduct
    Created on : Jan 26, 2024, 8:30:51 AM
    Author     : DiepTCNN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ADD NEW PRODUCT</h1>
        <form action="add" method="get">
            <table border="1">
                <tr>
                    <td>Product ID:</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Product Name:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Image Product:</td><td><input type="text" name="image"/></td>
                </tr>
                <tr>
                    <td>Description:</td><td><input type="text" name="description"/></td>
                </tr>
                <tr>
                    <td>Price:</td><td><input type="text" name="price"/></td>
                </tr> 
            </table>
            <input type="submit" value="ADD"/>
        </form>
    </body>
</html>
