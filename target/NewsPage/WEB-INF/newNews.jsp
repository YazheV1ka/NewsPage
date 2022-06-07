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
        <div class="col-md-8">
            <h1 class="my-4">News Site
                <small class="ml-3 h4 text-mute" th:text="${param.keyword}">Add New News</small>
            </h1>
            <div th:if="${newsList.isEmpty()}">
                <hr/>

            </div>

            <!-- News Post -->
            <div class="card my-4 hover-shadow" th:each="post:${newsList}">
                <div class="card-header">
                    <span class="badge badge-pill badge-primary text-light text-capitalize"
                          th:text="${post.source}">Sport</span>
                </div>
                <div class="card-body">
                    <h2 class="card-title" th:text="${post.title}">Scotland - Armenia: match prediction</h2>
                    <p class="card-text" th:text="${post.description}">The upcoming match will be the first in history
                        between the national teams of Scotland and Armenia. And despite the victory of the team of
                        Joaquin Caparros over Ireland, I do not observe other arguments in their favor, except for the
                        suppression of the Scots after losing to Ukraine. I expect the "tartan army" to win by 1 or 2 goals.
                        Due to the negligible coefficient, I don’t consider the option simply with the victory of the “tartan army”.
                        But in a set with a total under (3.5) - this is a completely different matter!</p>
                </div>
                <div class="card-footer text-muted" th:text="${post.date}">

                </div>
            </div>


            <div class="card my-4 hover-shadow" th:each="post:${newsList}">
                <div class="card-header">
                    <span class="badge badge-pill badge-primary text-light text-capitalize"
                          th:text="${post.source}">Animals</span>
                </div>
                <div class="card-body">
                    <h2 class="card-title" th:text="${post.title}">Dog Patron received an award at Cannes</h2>
                    <p class="card-text" th:text="${post.description}">The fighting dog was awarded the "Palm Dog" film award.
                        The cartridge became a real star of the world newsreel, so the jury decided that the pyrotechnician deserved
                        a prestigious status!</p>
                </div>
                <div class="card-footer text-muted" th:text="${post.date}">

                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
    <hr>
</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
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
        padding-top: 56px;
    }

    .hover-shadow {
        box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    }

    .hover-shadow:hover {
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
    }
</style>
