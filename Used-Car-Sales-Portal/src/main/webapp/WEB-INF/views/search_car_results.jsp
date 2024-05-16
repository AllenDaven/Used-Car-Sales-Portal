<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta charset='utf-8'>
                <link rel="shortcut icon" type="x-icon" href="">
                <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                <title>ABC Cars | Search Car Results</title>
                <meta name='viewport' content='width=device-width, initial-scale=1'>
                <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                <link rel='stylesheet' type='text/css' media='screen' href='/css/style2.css'>
                <script src='/js/script.js'></script>
            </head>

            <body>
                <%@ include file="header.jsp" %>

                    <div class="container-fluid bg-1">
                        <div>
                            <h2 class="text-center">Search Car Results</h2>

                            <div class="row">
                                <div class="col-md-12">
                                    <c:url var="get_search_url" value="search" />
                                    <form action="${get_search_url}" id="myform" method="get"
                                        class="form-inline text-right search-form">
                                        <input class="form-control mr-sm-2 search-input" type="search"
                                            placeholder="Search" value="${keyword}" name="keyword"
                                            style="border-color: #808080; box-shadow: 0 0 5px #808080;" />
                                        <input type="submit" value="Search" class="btn btn-info" />
                                    </form>

                                </div>
                            </div>

                            <div class="row">

                                <div class="col-md-12">

                                    <div class="card-group">

                                        <c:if test="${empty search_cars}">
                                            <div style="text-align: center;">
                                                <h4 class="text-danger"> No Matching Items Found. </h4>
                                                <h5 class="text-danger"> Please try with another keywords.
                                                </h5>
                                            </div>
                                        </c:if>

                                        <c:if test="${not empty search_cars}">
                                            <% int i=1; %>
                                                <c:forEach var="car" items="${search_cars}">
                                                    <div class="card">
                                                        <img src="/images/${car.carphoto}" class="card-img-top">
                                                        <div class="card-body">
                                                            <h5 class="card-title">${car.price}</h5>
                                                            <p class="card-text">
                                                            <p>Car Make : ${car.make}</p>
                                                            <p>Car Model: ${car.model}</p>
                                                            <p>Car Reg :${car.registration}</p>
                                                            <p>Sell Price:${car.price}</p>
                                                            <p class="card-text">
                                                                <small class="text-muted">
                                                                    <sec:authorize access="hasRole('Administrator')">
                                                                        <a href="edit?id=${car.id}">
                                                                            <button class="btn btn-info">Update</button>
                                                                        </a>
                                                                        <a href="delete?id=${car.id}">
                                                                            <button
                                                                                class="btn btn-danger">Delete</button>
                                                                        </a>
                                                                    </sec:authorize>
                                                                    <a href="car_detail?id=${car.id}">
                                                                        <button class="btn btn-info">View</button></a>
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