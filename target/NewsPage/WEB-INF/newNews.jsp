<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <style>
        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }
        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 500px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form button {

        }
        .form button:hover,.form button:active,.form button:focus {
        }
        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }
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

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">

        <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-2">
                <a class="nav-link">[Admin]</a>
        </ul>
    </div>
</nav>

<!-- Page Content -->
<div class="container" style="min-height: 84vh">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-12">
            <h1 class="my-5">News Site
                <small class="ml-4 h4 text-mute">Add New News</small>
            </h1>
        </div>

        <!-- News Post -->
        <div class="login-page">
            <div class="form">
                <form:form modelAttribute="newsService" method="post" action="newNews">
                    <form:input path="title" type="text" placeholder="Title:"/>

                    <form:input path="content" type="text" placeholder="Content:"/>

                    <form:input path="category" type="text" placeholder="Category:"/>

                    <form:input path="date" type="date" placeholder="Date:"/>

                    <button>Add News</button>
                </form:form>
            </div>
        </div>

        <div>
            <div class="card-header text-left">
                <form action="news.jsp" object="${news}">
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
<script src="@{webjars/jquery/3.4.1/jquery.min.js}"></script>
<script src="@{webjars/bootstrap/4.1.3/bootstrap.min.js}"></script>

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
