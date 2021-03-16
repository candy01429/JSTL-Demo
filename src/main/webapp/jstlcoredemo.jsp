<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--Set Page title--%>
<!--c:set標籤將變數值存在指定範圍裡-->
<c:set var="pageTitle">My Title</c:set>
<%--Generate the HTML response--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${pageTitle}</title>
    </head>
    <body>
        <!--使用c:set更新JavaBeans欄位值或Map內容-->
        <c:set target="cust" property="email" value="${param.emailAddress}" />
        <!--使用c:url具有"URL-Rewriting"的session管理功能-->
        <!--可以使用"相對"或"絕對"路徑-->
        <form action='<c:url value="/AddLeague"/>' method='GET' /><!--絕對路徑-->
        <form action='<c:url value="AddLeague"/>' method='GET' /><!--相對路徑-->
        <!--c:out執行某一運算式,並將結果輸出至目前JspWriter-->
        <c:out value="${param.email}" default="no email provided" />
    </body>
</html>
