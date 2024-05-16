<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset='utf-8'>
                    <link rel="shortcut icon" type="x-icon" href="">
                    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                    <title>ABC Cars | Car List</title>
                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                    <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                    <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
                    <script src='/js/script.js'></script>
                </head>

                <body>

                    <body>
                        <%@ include file="header.jsp" %>
                            <h1>Car Manager</h1>

                            <table class="table table-active">
                                <thead class="bg-info">
                                    <tr>
                                        <th>Model</th>
                                        <th>Manufactured</th>
                                        <th>Distributor</th>
                                        <th>Registration</th>
                                        <th>Price</th>
                                        <th>Seller</th>
                                        <th>Highest Bid</th>
                                        <th>Winning Bidder</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach items="${listOfCars}" var="car">
                                        <tr>
                                            <td>${car.model}</td>
                                            <td>${car.year}</td>
                                            <td>${car.make}</td>
                                            <td>${car.registration}</td>
                                            <td>Php ${car.price}</td>
                                            
                                            <td><a type="button" class="btn btn-info" href="/detail?cid=${car.id}"><i
                                                        class="far fa-eye"></i></a>

                                                <button type="button" class="btn btn-info" data-bs-toggle="modal"
                                                    data-bs-target="#editModal${car.id}">
                                                    <i class="fas fa-edit"></i>
                                                </button>


                                                <div class="modal fade" id="editModal${car.id}" tabindex="-1"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="editModalLabel">Update Car
                                                                </h5>
                                                                <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">

                                                                <!-- User Update Form -->
                                                                <sf:form action="updateCar?cid=${car.id}" method="post"
                                                                    class="was-validated" modelAttribute="user">
                                                                    <div class="mb-3">
                                                                        <label for="model"
                                                                            class="form-label">Model:</label> <input
                                                                            type="text" class="form-control" id="model"
                                                                            placeholder="Enter model" name="model"
                                                                            path="model" value="${car.model}"
                                                                            required="true" />
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="year" class="form-label">Manufacture
                                                                            Year:</label> <input type="text"
                                                                            class="form-control"
                                                                            placeholder="Enter manufacture year"
                                                                            name="year" path="year" value="${car.year}"
                                                                            required="true" />
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="maker"
                                                                            class="form-label">Distributor:</label>
                                                                        <input type="text" class="form-control"
                                                                            id="maker" placeholder="Enter distributor"
                                                                            name="maker" path="maker" value="${car.make}"
                                                                            required="true" />
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="registration"
                                                                            class="form-label">Registration
                                                                            Year:</label> <input type="text"
                                                                            class="form-control" id="registration"
                                                                            placeholder="Enter registration"
                                                                            name="registration" path="registration"
                                                                            value="${car.registration}" required="true" />
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="price" class="form-label"> Starting
                                                                            Price:</label> <input type="text"
                                                                            class="form-control" id="price"
                                                                            placeholder="Enter price" name="price"
                                                                            path="price" value="${car.price}"
                                                                            required="true" />
                                                                    </div>

                                                                    <button type="submit"
                                                                        class="btn btn-primary">Update</button>
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


                                                <a type="button" class="btn btn-danger" href="/deleteCar?cid=${car.id}"><i
                                                        class="far fa-trash-alt"></i></a>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            </div>

                    </body>
                    <%@ include file="footer.jsp" %>

                </html>