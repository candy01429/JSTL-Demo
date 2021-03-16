<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
    <head>
        <title>JSTL Function Tags</title>
    </head>
    <body>
        <%
            pageContext.setAttribute("s1", "this is JSTL functions tags test");
            pageContext.setAttribute("s2", " jim ");
        %>
        <c:if test="${fn:containsIgnoreCase(s1,'jstl')}">
            'jstl' found!
        </c:if><br />

        <c:if test="${fn:contains(s1,'test')}">
            'test' found!
        </c:if><br />

        <c:if test="${fn:startsWith(s1,'this')}">
            s1 starts with 'this'
        </c:if><br />

        length of s2 (${s2}) is: ${fn:length(s2)}<br />

        <c:set var="s3" value="${fn:trim(s2)}" />
        length of s3 (${s3}) is: ${fn:length(s3)}
    </body>
</html>