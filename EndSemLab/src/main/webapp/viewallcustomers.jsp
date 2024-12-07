<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Customers</title>
    <style>
           table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
     <%@include file="mainnavbar.jsp" %>
     
    <h3 style="text-align: center;"><u>View All Customers</u></h3>
    
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>address</th>
        </tr>
        <c:forEach items="${custlist}" var="cust">
            <tr>
                <td><c:out value="${cust.id}"/></td>
                <td><c:out value="${cust.name}"/></td>
                <td><c:out value="${cust.gender}"/></td>
                <td><c:out value="${cust.email}"/></td>
                <td><c:out value="${cust.contactno}"/></td>
                <td><c:out value="${cust.address}"/></td>
                
               
        </c:forEach>
    </table>
</body>
</html>