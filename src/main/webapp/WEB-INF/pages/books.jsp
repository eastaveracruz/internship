<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>
<h1>Search</h1>
<form:form action="/search/0" commandName="book">
    <table>
        <tr>
            <td>
                <form:label path="bookTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookTitle"/>
            </td>
        </tr>

        <tr>
            <td colspan="2">

                <input type="submit"
                       value="<spring:message text="Search"/>"/>

            </td>
        </tr>
    </table>
</form:form>

<h1>Book List</h1>

<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="30">ID</th>
            <th width="120">Title</th>
            <th width="120">Author</th>
            <th width="60">Year</th>
            <th width="30">ReadAlready?</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td><a href="/bookdata/${book.id}" target="_blank">${book.bookTitle}</a></td>
                <td>${book.bookAuthor}</td>
                <td>${book.bookPrintYear}</td>
                <td>
                    <c:if test="${book.bookReadAlready  == 1}">
                        YES
                    </c:if>
                    <c:if test="${book.bookReadAlready  != 1}">
                        NO
                    </c:if>
                </td>
                <td><a href="<c:url value='/edit/${book.id}'/>" target="_blank">Edit</a></td>
                <td><a href="<c:url value='/remove/${book.id}/${page}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <br>
</c:if>
<c:if test="${page > 0}">
    <a href="/books/${page - 1}">previous</a> -
</c:if>
<c:if test="${!empty listBooks}">
    <a href="/books/${page + 1}">next</a>
</c:if>
</body>
</html>
