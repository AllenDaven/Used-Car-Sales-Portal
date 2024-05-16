<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta charset='utf-8'>
                <link rel="shortcut icon" type="x-icon" href="">
                <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                <title>ABC Cars | Used Cars</title>
                <meta name='viewport' content='width=device-width, initial-scale=1'>
                <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                <link rel='stylesheet' type='text/css' media='screen' href='/css/style2.css'>
                <script src='/js/script.js'></script>
            </head>

            <body>
                <%@ include file="header.jsp" %>

                    <div class="full-screen-image">
                        <img src="/images/home.jpg" alt="coverphoto">
                        <div class="content">
                            <p class="par">WELCOME BACK!</p>
                            <h1>"EXPLORE YOUR OPTIONS AT ABC CARS"</h1>
                            <p class="description">You're logged in and ready to take the next step. Whether you're
                                looking to
                                sell your car, buy a new one, or explore our unique bidding system for junk cars, ABC
                                Cars has you
                                covered.</p>
                            <a class="register-button" href="new_car">BUY & SELL CARS NOW!</a>
                        </div>
                    </div>

                    <div class="container-fluid bg-1">
                        <div>
                            <h2 class="text-center">Car List</h2>

                            <c:if test="${not empty error_message}">
                                <p>${error_message}</p>
                            </c:if>

                            <c:if test="${empty cars}">
                                <sec:authorize access="hasRole('Administrator')">
                                    <span> No Cars are added yet. </span>
                                </sec:authorize>
                                <sec:authorize access="hasRole('Users')">
                                    <span> Please click on Add button to add Cars to the system. </span>
                                </sec:authorize>
                            </c:if>

                            <div class="row">
                                <div class="col-md-12">

                                    <sec:authorize access="hasRole('USERS')">
                                        <a href="new_car">
                                            <button class="btn btn-primary">Post A Car For Sale</button>
                                        </a>
                                    </sec:authorize>

                                    <c:url var="get_search_url" value="search" />
                                    <form action="${get_search_url}" id="myform" method="get"
                                        class="form-inline text-right search-form"
                                        style="padding: 20px; color: #808080;">
                                        <input class="form-control mr-sm-2 search-input" type="search"
                                            placeholder="Search" value="" name="keyword"
                                            style="border-color: #808080; box-shadow: 0 0 5px #808080;" />
                                        <input type="submit" value="Search" class="btn btn-info" />
                                    </form>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card-group">
                                        <c:if test="${not empty cars}">
                                            <% int i=1; %>
                                                <c:forEach var="car" items="${cars}">
                                                    <div class="card">
                                                        <img src="/images/${car.carphoto}" class="card-img-top">
                                                        <div class="card-body">
                                                            <h5 class="card-title">${car.price}</h5>
                                                            <p class="card-text">
                                                            <p>Distributor: ${car.make}</p>
                                                            <p>Model: ${car.model}</p>
                                                            <p>Registration Date: ${car.registration}</p>
                                                            <p>Starting Price: ${car.price}</p>
                                                            <p class="card-text">
                                                                <small class="text-muted">
                                                                    <sec:authorize access="hasRole('ADMIN')">
                                                                        <a href="edit?id=${car.id}">
                                                                            <button class="btn btn-info" style="background-color: #28a745; color: white;">Update</button>
                                                                        </a>
                                                                        <a href="delete?id=${car.id}">
                                                                            <button
                                                                                class="btn btn-danger" style="background-color: #af000f; color: white;">Delete</button>
                                                                        </a>
                                                                    </sec:authorize>
                                                                    <a href="car_detail?id=${car.id}">
                                                                        <button class="btn btn-info" style="background-color: #808080; color: white;">View</button>
                                                                    </a>
                                                                </small>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <% i++; %>
                                                </c:forEach>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </body>
            <%@ include file="footer.jsp" %>

            </html>