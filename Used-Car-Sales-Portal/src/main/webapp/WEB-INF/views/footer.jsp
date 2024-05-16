<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Footer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
    <style>
        .footer {
            background: #000000;
            color: white;
            margin: 0;
            padding: 100px;
        }

        @media screen and (max-width: 768px) {
            .footer {
                padding: 20px;
            }
        }

        .footer .about-company h3 {
            color: #ffffff;
            margin-bottom: 10px;
        }

        .footer h4 {
            color: #ffffff;
            margin-bottom: 10px;
            margin-left: 100px;
        }

        @media screen and (max-width: 768px) {
            .footer h4 {
                margin-left: 5px;
            }
        }

        .footer .about-company p {
            color: #ffffff;
        }

        .footer .about-company a {
            color: #808080;
            transition: color 0.2s;
        }

        .footer .about-company a:hover {
            color: #af000f;
            text-decoration: none;
        }

        .footer .links ul {
            list-style-type: none;
            padding-left: 0;
        }

        .footer .links ul li a {
            color: #808080;
            transition: color 0.2s;
            margin-left: 100px;
            text-decoration: none;
        }

        @media screen and (max-width: 768px) {
            .footer .links ul li a {
                margin-left: 25px;
            }
        }

        .footer .links ul li a:hover {
            color: #af000f;
            text-decoration: none;
            margin-right: 100px;
        }

        .footer .location i {
            font-size: 18px;
            margin-right: 100px;
        }

        @media screen and (max-width: 768px) {
            .footer .location i {
                margin-right: 25px;
            }
        }

        .footer .location p {
            color: #808080;
            padding-right: 0 !important;
        }

        .footer .copyright p {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #ffffff;
        }

        .footer .copyright {
            text-align: center;
        }

        .footer p {
            text-align: justify;
        }

        .links {
            margin-bottom: 20px;
        }

        .footer-links {
            color: #ffffff;
            text-decoration: none;
        }

        .footer-links:hover {
            color: #af000f;
        }
    </style>
</head>

<body>
    <footer>
        <div class="pt-5 pb-5 footer">
            <div class="row">
                <div class="col-lg-5 col-xs-12 about-company">
                    <h3>USED CAR SALES PORTAL</h3>
                    <p class="pr-5 text-white-50">ABC Cars Pte Ltd's Used Car Sales portal highlights our commitment to
                        providing a seamless car buying and selling experience. With a focus on trust, transparency, and
                        exceptional service, we connect buyers and sellers in a secure online marketplace. Our
                        experienced team is dedicated to helping users find the perfect match for their automotive
                        needs. Join us today and experience the difference with ABC Cars.</p>
                    <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i
                                class="fa fa-linkedin-square"></i></a></p>
                </div>
                <div class="col-lg-3 col-xs-12 links">
                    <h4 class="mt-lg-0 mt-sm-3">CAR BRANDS</h4>
                    <ul class="m-0 p-0">
                        <li><a href="#">Toyota</a></li>
                        <li><a href="#">Honda</a></li>
                        <li><a href="#">Ford</a></li>
                        <li><a href="#">SuzukI</a></li>
                        <li><a href="#">Isuzu</a></li>
                        <li><a href="#">Nissan</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-xs-12 location">
                    <h4 class="mt-lg-0 mt-sm-4">LOCATION</h4>
                    <p><i class=""></i>22 Cornelia St., Manila, Philippines</p>
                    <p class="mb-0"><i class=""></i>(541) 754-3010</p>
                    <p><i class=""></i>abccarportal@gmail.com</p>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col copyright">
                    <p class="copyright-text">
                        <a href="#" class="footer-links">Terms and Conditions</a> |
                        <a href="#" class="footer-links">Privacy Policy</a> |
                        Copyright &copy; 2024 All Rights Reserved by ABC Cars Pte Ltd
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>