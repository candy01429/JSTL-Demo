<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    pageContext.setAttribute("jim1", "<strike>Jim1</strike>", PageContext.SESSION_SCOPE);
    pageContext.setAttribute("arr", new int[5], PageContext.SESSION_SCOPE);
    pageContext.setAttribute("x", 11, PageContext.SESSION_SCOPE);
%>

<h1>1. c:out</h1> <!--顯示運算結果或數值-->
escapeXml(false):<c:out value="${sessionScope.jim1}" escapeXml="false" />
escapeXml(true):<c:out value="${sessionScope.jim1}" escapeXml="true" />
<c:out value="${sessionScope.jim0}" default="no value" />

<h1>2. c:set</h1><!--設定變數或屬性的值,可指定儲存範圍-->
<c:set value="this is jim" var="oneStirng" />
${oneStirng}

<h1>3. c:remove</h1><!--刪除指定範圍內的變數-->
Before removed: ${sessionScope.jim1}
<c:remove var="jim1" scope="session" />
After removed: ${session.jim1}

<h1>4. c:catch</h1> <!--在jsp頁面中捕捉拋出的例外-->
<c:catch var="exception">
    <%
        int i = 5;
        int j = 0;
        int k = i / j;
    %>
</c:catch>
<c:out value="${exception}" />

<h1>5. c:if</h1><!--評估運算式結果,若為true將執行標籤本體-->
<c:if test="${not empty arr}" var="visits">
    \${arr} is not empty
</c:if>
\${visits}: ${visits}

<h1>6. c:choose, c:when, c:otherwise</h1>
<!--c:choose 沒有屬性,用於c:when跟c:otherwise的父標籤-->
<!--c:when = if,else if--> <!--c:otherwise = else-->
\${x} = ${x}
<c:choose>
    <c:when test="${x == 11}"> \${x == 11} is true </c:when>
    <c:when test="${x == 12}"> \${x == 12} is true </c:when>
    <c:when test="${x == 13}"> \${x == 13} is true </c:when>
    <c:otherwise> x != 11, 12, 13 </c:otherwise>
</c:choose>

<h1>7. c:forTokens</h1> <!--可根據某分隔符號將字串切割-->
<c:forTokens items="aa,bb,cc,dd" delims="," var="aValue">
    ${aValue}
</c:forTokens>

<h1>8. c:import</h1><!--包含另一個URL的內容到本頁來-->
<div>
    <c:import url="http://localhost:8080/JSTLDemo/importesPage.jsp" />
</div>
 
<h1>9. c:url</h1><!--得到rewriting後的URL-->
<c:url value="importesPage.jsp" var="urlPage" />
<a href="${urlPage}">${urlPage}</a>

<%--
<h1>10. c:redirect</h1> <!--頁面重新導向 = response.sendRedirect()-->
need to move the comment:
<c:redirect url="https://www.google.com" />
--%>