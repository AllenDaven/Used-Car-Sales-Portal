<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
                <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
                    <%@ page import="com.abccars.usedcarsalesportal.entity.Car" %>
                        <!DOCTYPE html>
                        <html>

                        <head>
                            <meta charset='utf-8'>
                            <link rel="shortcut icon" type="x-icon" href="">
                            <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                            <title>ABC Cars | Upload Car</title>
                            <meta name='viewport' content='width=device-width, initial-scale=1'>
                            <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                            <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
                            <script src='/js/script.js'></script>
                        </head>

                        <body class="bg-gray-100 h-screen justify-center">
                            <%@ include file="header.jsp" %>

                                <div class="mx-5 my-8 bg-white p-8 rounded-lg shadow-md w-full md:w-4/5 lg:w-3/5">
                                    <div class="border-b-2 pb-4 mb-6 text-center">
                                        <h1 class="text-2xl font-semibold">Post A Car For Sale!</h1>
                                    </div>

                                    <form:form method="POST" action="/cars" modelAttribute="car"
                                        enctype="multipart/form-data">
                                        <form:hidden path="id" />

                                        <div class="grid grid-cols-2 gap-4 mb-6">
                                            <div class="mb-4">
                                                <label for="carphoto" class="block font-medium mb-1">Upload Car
                                                    Photo:</label>
                                                <input type="file" id="file" name="file" placeholder="Upload car photo"
                                                accept="image/png, image/jpeg" required="true" value="/images/${car.carphoto}" width="300px"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input">
                                            </div>
                                            <div class="mb-4">
                                                <label for="model" class="block font-medium mb-1">Car Model:</label>
                                                <input type="text" id="model" name="model" placeholder="Enter car model"
                                                    required="true" value="${car.model}"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input">
                                            </div>
                                            <div class="mb-4">
                                                <label for="year" class="block font-medium mb-1">Manufacture
                                                    Year:</label>
                                                <input type="text" id="year" name="year"
                                                    placeholder="Enter manufacture year" required="true" value="${car.year}"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input">
                                            </div>
                                            <div class="mb-4">
                                                <label for="make" class="block font-medium mb-1">Distributor:</label>
                                                <input type="text" id="make" name="make"
                                                    placeholder="Enter distributor" required="true" value="${car.make}"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input">
                                            </div>
                                            <div class="mb-4">
                                                <label for="price" class="block font-medium mb-1">Price (Php):</label>
                                                <input type="text" id="price" name="price" placeholder="Enter car price"
                                                    required="true" value="${car.price}"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input">
                                            </div>
                                            <div class="mb-4">
                                                <label for="registration" class="block font-medium mb-1">Registration
                                                    Year:</label>
                                                <input type="text" id="registration" name="registration"
                                                    placeholder="Enter registration year" required="true"
                                                    value="${car.registration}"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input">
                                            </div>
                                            <div class="col-span-2 mb-4">
                                                <label for="description"
                                                    class="block font-medium mb-1">Description:</label>
                                                <textarea id="description" name="description"
                                                    placeholder="Describe car" required="true" value="${car.description}"
                                                    class="w-full border rounded-md py-2 px-3 focus:outline-none focus:ring-2 focus:ring-gray-500 custom-input custom-textarea">${description}</textarea>
                                            </div>
                                        </div>

                                        <div class="flex justify-between">
                                            <input type="submit" name="Add" value="Save" style="background-color: #28a745; border-color: #28a745; color: white;"
                                                class="w-full bg-gray-500 text-white py-2 rounded-md hover:bg-af000f hover:text-white cursor-pointer shadow-none mr-2">
                                            <input type="button" value="Cancel" style="background-color: #af000f; border-color: #af000f; color: white;" onclick="cancel()"
                                                class="w-full bg-gray-500 text-white py-2 rounded-md hover:bg-af000f hover:text-white cursor-pointer shadow-none ml-2">
                                        </div>                                        

                                        <script>
                                            function cancel() {
                                                window.location.href = "cars";
                                            }
                                        </script>
                                    </form:form>
                                </div>
                                <%@ include file="footer.jsp" %>

                        </body>


                        </html>