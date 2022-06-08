<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html lang="en"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">

    <title>News Page</title>

    <!-- Bootstrap core CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" th:href="@{/css/app.css}">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">

        <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-2">
                <a class="nav-link" th:href="@{/(keyword=Fana)}">[Admin]</a>
        </ul>
    </div>
</nav>

<!-- Page Content -->
<div class="container" style="min-height: 84vh">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-12">
            <h1 class="my-5">News Site
                <small class="ml-4 h4 text-mute" th:text="${param.keyword}">Add New News</small>
            </h1>
        </div>

        <!-- News Post -->
        <div class="card my-5 hover-shadow align-items-my-center">
            <div class="card-header">
                <form th:method="POST" th:action="@{/news}" th:object="${news}">
                    <label for="title">Enter title: </label>
                    <input type="text" th:field="*{title}" id="title"/>
                    <br/>
                    <label for="content">Enter content: </label>
                    <input type="text" th:field="*{content}" id="content"/>
                    <br/>
                    <label for="category">Enter category: </label>
                    <input type="text" th:field="*{category}" id="category"/>
                    <br/>
                    <label for="date">Enter date: </label>
                    <input type="date" th:field="*{date}" id="date"/>
                    <br/>
                    <input type="submit" value="Add news!"/>
                </form>

            </div>
        </div>

        <div>
            <div class="card-header text-left">
                <form action="news.jsp" th:object="${news}">
                    <button type="button" name="back" onclick="history.back()">Back</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->
<hr>
</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-4 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">News 2022</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script th:src="@{webjars/jquery/3.4.1/jquery.min.js}"></script>
<script th:src="@{webjars/bootstrap/4.1.3/bootstrap.min.js}"></script>

</body>

</html>

<style>
    body {
        padding-top: 30px;
    }

    .hover-shadow {
        box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    }

    .hover-shadow:hover {
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
    }
</style>
