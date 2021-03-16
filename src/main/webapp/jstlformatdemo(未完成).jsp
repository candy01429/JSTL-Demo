<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html;charset=UTF-8"%>

<html>
    <head>
        <title>JSTL Format Tags</title>
    </head>

    <h2>fmt:setLocale, fmt:bundle</h2>
    <fmt:setLocale value="ru_RU" /> <!--設置Localec環境-->
    <fmt:bundle basename="MessagesBundle"> <!--設定資源綁定檔的名稱,在該標籤的本體使用的key都會由該綁定檔取出對應值-->
        <fmt:message key="menu6"><!--設定key,取出資源綁定檔中對應的value-->
            <fmt:param value="99" />
        </fmt:message>
    </fmt:bundle><br>

    <h2>fmt:setLocale, fmt:setBundle</h2>
    <fmt:setLocale value="zh_TW" />
    <fmt:setBundle basename="MessagesBundle" var="bundle" />
    <fmt:message key="menu6" bundle="${bundle}">
        <fmt:param value="99" />
    </fmt:message><br>

    <h2>fmt:parseDate</h2>
    <c:set var="now" value="20-10-2010" />
    <fmt:parseDate value="${now}" var="parsedEmpDate" pattern="dd-MM-yyyy" />
    Parsed Date : <c:out value="${parsedEmpDate}" /><br>

    <h2>fmt:parseNumber</h2>
    <c:set var="balance" value="1250003.350" />
    <fmt:parseNumber var="i1" type="number" value="${balance}" />
    Parsed Number (1) : <c:out value="${i1}" /><br>
    
    <fmt:parseNumber var="i2" integerOnly="true" type="number" value="${balance}" />
    Parsed Number (2) : <c:out value="${i2}" /><br>
    Parsed Number (3) : <fmt:parseNumber value="15%" /><br>

    <h2>fmt:formatDate</h2>
    <c:set var="now" value="<%=new java.util.Date()%>" />
    Formatted Date (1) : 
    <fmt:formatDate type="time" value="${now}" /><br>
    Formatted Date (2) : 
    <fmt:formatDate type="date" value="${now}" /><br>
    Formatted Date (3) : 
    <fmt:formatDate type="both" value="${now}" /><br>
    Formatted Date (4) : 
    <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}" /><br>
    Formatted Date (5) : 
    <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}" /><br>
    Formatted Date (6) : 
    <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" /><br>
    Formatted Date (7) : 
    <fmt:formatDate pattern="yyyy-MM-dd" value="${now}" /><br>

    <h2>fmt:formatNumber</h2>
    <c:set var="balance" value="120000.2309" />

    Formatted Number (1):
    <fmt:formatNumber value="${balance}" type="currency" /><br>	
    Formatted Number (2):
    <fmt:formatNumber type="number" maxIntegerDigits="3" value="${balance}" /><br>
    Formatted Number (3):
    <fmt:formatNumber type="number" maxFractionDigits="3" value="${balance}" /><br>
    Formatted Number (4):
    <fmt:formatNumber type="number" groupingUsed="false" value="${balance}" /><br>
    Formatted Number (5):
    <fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}" /><br>
    Formatted Number (6):
    <fmt:formatNumber type="percent" minFractionDigits="10" value="${balance}" /><br>
    Formatted Number (7):
    <fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}" /><br>
    Formatted Number (8):

    Currency in USA :
    <fmt:setLocale value="en_US" />
    <fmt:formatNumber value="${balance}" type="currency" /><br>