<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

                    <!DOCTYPE html
                        PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                    <html>

                    <head>
                        <meta charset='utf-8'>
                        <link rel="shortcut icon" type="x-icon" href="">
                        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                        <title>ABC Cars | Car Details</title>
                        <meta name='viewport' content='width=device-width, initial-scale=1'>
                        <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                        <link rel='stylesheet' type='text/css' media='screen' href='/css/style2.css'>
                        <script src='/js/script.js'></script>
                    </head>

                    <body>
                        <%@ include file="header.jsp" %>

                            <div class="container">

                                <div class="row" style="margin-top: 80px;">
                                    <h3 class="margin text-center">Detail Car Information!</h3>

                                    <div class="col-md-8">

                                        <form:form class="form-horizontal">

                                            <div class="form-group">
                                                <div class="col-sm-8"><img src="/images/${car.carphoto}" width="600px">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="make" class="control-label col-sm-4">Car Make:
                                                </label>
                                                <div class="col-sm-8">${car.make}</div>
                                            </div>

                                            <div class="form-group">
                                                <label for="model" class="control-label col-sm-4">Car
                                                    Model: </label>
                                                <div class="col-sm-8">${car.model}</div>
                                            </div>

                                            <div class="form-group">
                                                <label for="reg" class="control-label col-sm-4">Reg No: </label>
                                                <div class="col-sm-8">${car.registration}</div>
                                            </div>

                                            <div class="form-group">
                                                <label for="price" class="control-label col-sm-4">Price: </label>
                                                <div class="col-sm-8">${car.price}</div>
                                            </div>

                                            <hr />

                                            <div class="form-group">
                                                <div class="col-sm-8" style="padding: 20px;">

                                                    <form action="car_detail?id=${car.id}" method="post">
                                                        <label for="highBid" class="form-label"
                                                            style="margin-left: 120px;">Bid for Car (Php):</label>
                                                        <input type="hidden" name="id" value="${car.id}" />
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" /> <input type="number"
                                                            placeholder="Enter bidding price" name="bitprice" required/>
                                                        <p class="text-secondary">The price must exceed the current
                                                            highest bid.</p>
                                                        <div class="form-group" style="padding: 20px;">
                                                            <input type="submit" value="Bid Car" class="btn btn-success"
                                                                style="padding: 10px; background-color: #28a745; color: white;">
                                                            <a href="cars" class="btn btn-danger"
                                                                style="background-color: #af000f; color: white; padding: 10px">Go
                                                                Back</a>
                                                        </div>

                                                    </form>
                                                </div>

                                            </div>

                                            <script>
                                                function goBack() {
                                                    window.history.back();
                                                }
                                            </script>

                                        </form:form>

                                    </div>

                                    <div class="col-md-3" style="width: 350px;">
                                        <h4 style="margin-bottom: 0px; margin-top: 30px;"> Current Bidding Price!</h4>
                                        <br />
                                        <c:forEach var="car_bidding" items="${bidinfo}">
                                            <div class="card mb-3" style="padding:10px; background-color: #808080;">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <img class="card-img-top" src="/images/profile.png" width="30px"
                                                            class="rounded-circle mr-3" alt="avator">
                                                        <p style="color: #ffffff;">${car_bidding.bidderName}</p>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="card-body">
                                                            <p class="card-head"><small class="text-muted"
                                                                    style="color: #ffffff;">${car_bidding.bid_date_time}</small>
                                                            </p>
                                                            <p class="card-text" style="color: #ffffff;">Bidded Price
                                                                (Php): ${car_bidding.bidderPrice}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr style="border-top: 1px solid #ffffff;">
                                        </c:forEach>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <c:if test="${bidFail != null}">

                                    <div class="alert alert-danger">Bid Price too Low</div>

                                </c:if>
                                <c:if test="${bidSucc != null}">

                                    <div class="alert alert-success">You are the highest bidder!</div>

                                </c:if>
                            </div>
                    </body>
                    <%@ include file="footer.jsp" %>

                    </html>