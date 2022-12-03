<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<html>
<head>
    <title>게시판</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <style>
        #list{
            border: 1px solid gray;
        }
        th{
          border: 1px solid black;
            background-color: royalblue;
            align-content: center;
            text-align: center;
        }
        td{
            border: 1px solid grey;
            background-color: azure;
            align-content: center;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>자유게시판</h1>
    <table id="list" width="90%">
        <tr>
            <th>id</th>
            <th>Category</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Content</th>
            <th>Regdate</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}"><i class="bi bi-pencil-square"></i></a></td>
            <td><a href="deleteok/${u.seq}"><i class="bi bi-trash"></i></a></td>
        </tr>
    </c:forEach>
    </table>

    <br/><button type="button" onclick="location.href='add'">추가하기</button>
</body>
</html>
