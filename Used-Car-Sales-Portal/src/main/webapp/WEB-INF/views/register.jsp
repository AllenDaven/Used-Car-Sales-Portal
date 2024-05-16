<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

                    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                    <html>

                    <head>
                        <meta charset='utf-8'>
                        <link rel="shortcut icon" type="x-icon" href="">
                        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                        <title>ABC Cars | Sign up</title>
                        <meta name='viewport' content='width=device-width, initial-scale=1'>
                        <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                        <link rel='stylesheet' type='text/css' media='screen' href='/css/main.css'>
                        <script src='/js/script.js'></script>
                    </head>

                    <body>
                        <div class="login-box">
                            <h1>Sign up</h1>

                            <c:if test="${register_success != null}">
                                <div class="alert alert-success"
                                    style="color: #ffffff; text-align: center; margin-bottom: 20px;">
                                    <p>${register_success} Click <a href="login"
                                            style="color: #28a745; font-weight: bold; text-decoration: none;">Sign
                                            In</a> to use our portal...</p>
                                </div>
                            </c:if>

                            <form action="save" method="post" modelAttribute="user" class="sign-up-form">
                                <div class="user-box">
                                    <input type="text" name="userName" id="userName" required="true">
                                    <label for="userName">Username</label>
                                </div>
                                <div class="user-box">
                                    <input type="email" name="email" id="email" required="true">
                                    <label for="email">Email</label>
                                </div>
                                <div class="user-box">
                                    <input type="password" name="password" id="password" required="true">
                                    <label for="password">Password</label>
                                </div>
                                <div class="user-box">
                                    <input type="password" name="confirmPassword" id="confirmPassword" required="true">
                                    <label for="confirmPassword">Confirm Password</label>
                                </div>
                                <div class="remember-forgot">
                                    <div class="remember-me">
                                        <input type="checkbox" id="remember-me" required="true">
                                        <label for="remember-me">Agree to terms and conditions</label>
                                    </div>
                                </div>
                                <div>
                                    <input type="submit" name="register" value="Sign up">
                                </div>
                                <p class="signup-text">Already have an account? <a href="login"
                                        class="signup-link">Login</a></p>
                            </form>
                        </div>

                        <script>
                            document.querySelector('.sign-up-form').addEventListener('submit', function (event) {
                                var password = document.getElementById('password').value;
                                var confirmPassword = document.getElementById('confirmPassword').value;
                                if (password !== confirmPassword) {
                                    alert("Password and Confirm Password do not match!!");
                                    event.preventDefault();
                                }
                            });
                        </script>
                    </body>

                    </html>