<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html>

                <head>
                    <meta charset='utf-8'>
                    <link rel="shortcut icon" type="x-icon" href="">
                    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                    <title>ABC Cars | User Profile</title>
                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                    <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                    <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
                    <script src='/js/script.js'></script>

                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
                        rel="stylesheet">
                </head>

                <body>
                    <c:forEach items="${user}" var="u">
                        <c:set var="id" value="${u.id}"></c:set>
                        <c:set var="name" value="${u.name}"></c:set>
                        <c:set var="uname" value="${u.userName}"></c:set>
                        <c:set var="email" value="${u.email}"></c:set>
                        <c:set var="mobile" value="${u.mobile}"></c:set>
                        <c:set var="address" value="${u.address}"></c:set>
                    </c:forEach>
                    <%@ include file="header.jsp" %>

                        <div class="container border"
                            style="border-color: #ffffff; padding: 60px; background-color: #d3d3d3;">

                            <div class="row">
                                <h3 style="margin-bottom: 40px; font-size: 2.5em;">
                                    User Profile
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                        <i class="fas fa-edit fa-sm"></i>
                                    </button>
                                </h3>

                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1"
                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Update User</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">

                                                <!-- User Update Form -->
                                                <sf:form action="updateUser?uid=${id}" method="post"
                                                    class="was-validated" modelAttribute="user">
                                                    <div class="mb-3 mt-3">
                                                        <label for="name" class="form-label">Name:</label> <input
                                                            type="text" class="form-control" placeholder="Enter name"
                                                            name="name" path="name" value="${name}" required="true" />
                                                        <div class="valid-feedback">Valid.</div>
                                                        <div class="invalid-feedback">That ain't allowed</div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="userName" class="form-label">Username:</label>
                                                        <input type="text" class="form-control" id="userName"
                                                            placeholder="Enter username" name="userName" path="userName"
                                                            value="${uname}" required="true" />
                                                        <div class="valid-feedback">Valid.</div>
                                                        <div class="invalid-feedback">That ain't allowed</div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="email" class="form-label">Email:</label> <input
                                                            type="email" class="form-control"
                                                            placeholder="Enter username" name="email" path="email"
                                                            value="${email}" required="true" />
                                                        <div class="valid-feedback">Valid.</div>
                                                        <div class="invalid-feedback">That ain't allowed</div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="mobile" class="form-label">Mobile:</label> <input
                                                            type="text" class="form-control" id="mobile"
                                                            placeholder="Enter mobile" name="mobile" path="mobile"
                                                            value="${mobile}" required="true" />
                                                        <div class="valid-feedback">Valid.</div>
                                                        <div class="invalid-feedback">Please fill out this field.</div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="address" class="form-label">Address:</label> <input
                                                            type="text" class="form-control" id="address"
                                                            placeholder="Enter address" name="address" path="address"
                                                            value="${address}" required="true" />
                                                        <div class="valid-feedback">Valid.</div>
                                                        <div class="invalid-feedback">Please fill out this field.</div>
                                                    </div>

                                                    <button type="submit" class="btn btn-primary" style="background-color: #28a745; border-color: #28a745; color: white;">Update</button>
                                                </sf:form>
                                                <!-- User Update Form -->
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">Close</button>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="row">

                                <div class="col-lg-4">
                                    <div class="card mb-4">
                                        <div class="card-body text-center" style="height: 284px;">
                                            <img src="/images/profile.png" alt="avatar" class="rounded-circle img-fluid"
                                                style="width: 150px;">
                                            <h5 class="my-3">${name}</h5>
                                            <p class="text-muted mb-1">${address}</p>

                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-8">
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p class="mb-0">Name</p>
                                                </div>
                                                <div class="col-sm-9">
                                                    <p class="text-muted mb-0">${name}</p>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p class="mb-0">Email</p>
                                                </div>
                                                <div class="col-sm-9">
                                                    <p class="text-muted mb-0">${email}</p>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p class="mb-0">Username</p>
                                                </div>
                                                <div class="col-sm-9">
                                                    <p class="text-muted mb-0">${uname}</p>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p class="mb-0">Mobile</p>
                                                </div>
                                                <div class="col-sm-9">
                                                    <p class="text-muted mb-0">${mobile}</p>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p class="mb-0">Address</p>
                                                </div>
                                                <div class="col-sm-9">
                                                    <p class="text-muted mb-0">${address}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="text-info text-center">
                                <c:if test="${empty postedCars}">
                                    <h3>No cars to download here</h3>
                                </c:if>
                                <c:if test="${not empty postedCars}">
                                    <c:forEach items="${postedCars}" var="car">
                                        <div
                                            class="container text-info justify-content-center border border-info rounded-pill py-3 my-5">
                                            <img class="img-fluid" src="/images/${car.carphoto}"  width="650"
                                                height="400">
                                            <h1>${car.year()} ${car.model()}</h1>
                                            <h3><i class="fas fa-tags"></i>&nbsp;Php ${car.price()}</h3>
                                            <a class="btn btn-info mb-3" href="/detail?cid=${car.id}">Detail</a>
                                            <a class="btn btn-danger mb-3" href="/deleteCar?cid=${car.id}">Deactivate</a>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                </body>
                <%@ include file="footer.jsp" %>

                </html>