<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en"
      xmlns="http://www.w3.org/1999/xhtml">


<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">

    <title>News Page</title>

    <!-- Bootstrap core CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css" rel="stylesheet">
</head>


<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-2">
                <a class="text-right text-light" >[User]</a>
        </ul>
    </div>
</nav>

<!-- Page Content -->
<div class="container" style="min-height: 84vh">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="my-4">News Site
                <small class="ml-3 h4 text-mute">All News</small>
            </h1>

            <!-- News Post -->

            <c:forEach var="news" items="${newsList}">
                <div class="card my-4 hover-shadow">
                    <form method="get">
                        <div class="card-header">
                            <a class="badge badge-pill badge-primary text-light text-capitalize"
                            >${news.category}</a>
                        </div>
                        <div class="card-body">
                            <h2 class="card-title">${news.title}</h2>
                            <p class="card-text">${news.content}</p>
                        </div>
                        <div class="card-footer text-muted text-right">${news.date}</div>
                    </form>
                </div>
            </c:forEach>
        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
            <br><br><br>
            <!-- Search Widget -->

            <div class="card my-4 hover-shadow">
                <h5 class="card-header">Search</h5>
                <div class="card-body">

                    <form method="get" action="${pageContext.request.contextPath}/news/content">
                        <div class="input-group shadow-sm">
                            <input class="form-control" id="searchBar" name="content" placeholder="Enter keyword"
                                   type="text">
                            <span class="input-group-btn">
                            <button class="btn btn-primary" type="submit">Go!</button>
                        </span>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Categories Widget -->
            <div class="card my-4 hover-shadow">
                <h5 class="card-header">Categories</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6 my-2 px-4">
                            <a class="btn-primary btn-light text-black" href="${pageContext.request.contextPath}/news/category/Sport" role="button">Sport</a>
                        </div>
                        <div class="col-lg-6 my-2 px-4">
                            <a class="btn-primary btn-light text-black" href="${pageContext.request.contextPath}/news/category/Cinema" role="button">Cinema</a>
                        </div>
                        <div class="col-lg-6 my-2 px-4">
                            <a class="btn-primary btn-light text-black" href="${pageContext.request.contextPath}/news/category/Games" role="button">Games</a>
                        </div>
                        <div class="col-lg-6 my-2 px-4">
                            <a class="btn-primary btn-light text-black" href="${pageContext.request.contextPath}/news/category/Animals" role="button">Animals</a>
                        </div>
                    </div>
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
<script src="@{webjars/jquery/3.4.1/jquery.min.js}"></script>
<script src="@{webjars/bootstrap/4.1.3/bootstrap.min.js}"></script>

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
