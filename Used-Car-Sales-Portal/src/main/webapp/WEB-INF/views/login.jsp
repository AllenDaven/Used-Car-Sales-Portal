<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html>

                <head>
                    <meta charset='utf-8'>
                    <link rel="shortcut icon" type="x-icon" href="">
                    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                    <title>ABC Cars | Login</title>
                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                    <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                    <link rel='stylesheet' type='text/css' media='screen' href='/css/main.css'>
                    <script src='/js/script.js'></script>
                </head>

                <body>
                    <div class="login-box">
                        <h1>Login</h1>

                        <c:if test="${error_string != null}">
                            <div class="alert alert-danger"
                                style="color: #af000f; text-align: center; margin-bottom: 20px; font-weight: bold;">
                                ${error_string}
                            </div>
                        </c:if>

                        <c:if test="${success_login != null}">
                            <div class="alert alert-success" style="color: #28a745; text-align: center; margin-bottom: 20px;">
                                ${success_login}
                                Go <a href="cars" style="text-decoration: none; font-weight: bold; color: #ffffff;">HOME</a>
                            </div>
                        </c:if>                        

                        <c:if test="${success_logout != null}">
                            <div class="alert alert-success" 
                                style="color: #28a745; text-align: center; margin-bottom: 20px; font-weight: bold;">
                                ${success_logout} 
                            </div>
                        </c:if>

                        <form action="/login" method="post">

                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                            <div class="user-box">
                                <input type="text" name="username" id="username" required="true">
                                <label for="username">Username</label>
                            </div>
                            <div class="user-box">
                                <input type="password" name="password" id="password" required="true">
                                <label for="password">Password</label>
                            </div>
                            <div class="remember-forgot">
                                <div class="remember-me">
                                    <input type="checkbox" id="remember-me">
                                    <label for="remember-me">Remember Me</label>
                                </div>
                                <a href="#">Forgot Password?</a>
                            </div>
                            <div>
                                <input type="submit" name="Login" value="Sign in">
                            </div>
                            <p class="signup-text">Don't have an account? <a href="register" class="signup-link">Sign
                                    up</a>
                            </p>
                        </form>
                    </div>
                </body>

                </html>