<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <link rel="shortcut icon" type="x-icon" href="">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ABC Cars - Used Car Sales Portal</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
    <script src='/js/script.js'></script>
</head>

<body>
    <header>
        <div class="header">
            <a href="cars" class="logo">
                <img src="/images/logo.png" alt="Logo">
            </a>
            <div class="header-right">

                <sec:authorize access="!isAuthenticated()">
                    <li><a href="login">Login</a></li>
                    <li><a href="register">Sign Up</a></li>
                </sec:authorize>

                <sec:authorize access="isAuthenticated()">

                    <sec:authorize access="hasRole('USER')">
                        <a href="cars">Home</a>
                        <a href="about">About Us</a>
                        <a href="contact">Contact Us</a>
                        <a href="new_car">Upload Car</a>
                        <a href="profile">Profile</a>
                    </sec:authorize>

                    <sec:authorize access="hasRole('ADMIN')">
                        <a href="car_lists">Car Management</a>
                        <a href="all_users">User Management</a>
                    </sec:authorize>

                    <form action="logout" method="post" id="logoutButton" style="display: inline-block;">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <input type="submit" name="Logout" value="Logout" class="btn btn-primary"></input>
                    </form>

                </sec:authorize>
            </div>
        </div>
    </header>

</body>

</html>