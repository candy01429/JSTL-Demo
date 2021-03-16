<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Page</title>
    </head>
    <body>
        <!--基本語法-->
        <c:forEach var="message" items="${errorMsgs}">
            <li>${message}</li>
        </c:forEach>
        <!--空標籤,沒有主體時語法-->
        <c:url value="/addLeague.do" />
        <!--前置詞、標籤、屬性,都區分大小寫-->
        <!--巢狀結構-->
        <c:if test="${not empty errorMsgs}">
            <c:forEach var="message" items="${errorMsgs}">
                <%--JSP code showing a single error message--%>
            </c:foreach>
        </c:if>
    </body>
</html>
