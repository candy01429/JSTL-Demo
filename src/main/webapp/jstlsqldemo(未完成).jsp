<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>JSTL SQL Tags</title>
    </head>

    <body>
        <sql:setDataSource 
            var="dataSource"
            driver="org.apache.derby.jdbc.ClientDriver"
            url="jdbc:derby://localhost:1527/myDB" 
            user="root" password="sa" />

        <c:set var="empId" value="3" />

        Try to update employee(id=<c:out value="${empId}"/>) set Salary = 99... <br>
        <sql:update dataSource="${dataSource}" var="count">
            update Employee set Salary = 99 WHERE Id = ?
            <sql:param value="${empId}" />
        </sql:update>
        Update finished!<br><br>

        <sql:query dataSource="${dataSource}" var="result">
            SELECT * FROM Employee where ID <= 10
        </sql:query>

        <table border="1" width="100%">
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>BirthDate</th>
                <th>Salary</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.ID}" /></td>
                    <td><c:out value="${row.FirstName}" /></td>
                    <td><c:out value="${row.LastName}" /></td>
                    <td><c:out value="${row.BirthDate}" /></td>
                    <td><c:out value="${row.Salary}" /></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>