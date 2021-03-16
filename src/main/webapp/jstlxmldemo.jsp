<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL xml</title>
    </head>
    <body>
        <h3>Books Info:</h3>
        <c:import  var="bookInfo" url="xmlSample.xml"/>
        <x:parse xml="${bookInfo}" var="output" />
        The title of the 1st books is:
        <x:out select="$output/books/book[1]/name" /><br/>
        The price of the 2st books is:
        <x:out select="$output/books/book[2]/price" />
    </body>
</html>
