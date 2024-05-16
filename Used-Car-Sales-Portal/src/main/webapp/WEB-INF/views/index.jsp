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
                    <title>ABC Cars | Used Car Sales Portal</title>
                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                    <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                    <link rel='stylesheet' type='text/css' media='screen' href='/css/style2.css'>
                    <script src='/js/script.js'></script>
                </head>

                <body>
                    <header>
                        <div class="header">
                            <a href="index" class="logo">
                                <img src="/images/logo.png" alt="Logo">
                            </a>
                            <div class="header-right">
                                <a href="login">Login</a>
                                <a href="register">Sign Up</a>
                            </div>
                        </div>
                    </header>

                    <div class="full-screen-image">
                        <img src="/images/index.jpg" alt="coverphoto">

                        <div class="content">
                            <p class="par">FIND YOUR DREAM CAR TODAY</p>
                            <h1>"EXPLORE OUR WIDE SELECTION OF USED CARS"</h1>
                            <p class="description">Discover a wide range of quality used cars at ABC Cars. Whether
                                you're looking for a sedan, SUV, or truck, we have the perfect vehicle to suit your
                                needs. Start your journey towards owning your dream car today!</p>
                            <a class="register-button" href="register">EXPLORE NOW!</a>
                        </div>
                    </div>

                </body>
                <%@ include file="footer.jsp" %>

                </html>