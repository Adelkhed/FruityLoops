<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fruits Store</title>
 <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.2.3/css/bootstrap.min.css' />">
 <style>
        .green {
            color: green;
            font-weight: bold;
        }
        .blue {
        color:blue;
        }
    </style>
</head>
<body class="bg-light">
    <div class="container my-5 p-4 bg-white rounded shadow-sm">
        <h1 class="text-center text-danger mb-4">Fruit Store</h1>
        <table class="table table-bordered table-hover">
            <thead class="table-danger">
                <tr>
                    <th class="text-center">Name</th>
                    <th class="text-center">Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="fruit" items="${fruits}">
                    <tr>
                        <td class="text-center ${fruit.name.startsWith('G') ? 'green' : 'blue'}">
                            ${fruit.name}
                        </td>
                        <td class="text-center">${fruit.price}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>