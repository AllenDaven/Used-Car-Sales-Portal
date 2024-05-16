<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset='utf-8'>
                <link rel="shortcut icon" type="x-icon" href="">
                <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                <title>ABC Cars | Contact Us</title>
                <meta name='viewport' content='width=device-width, initial-scale=1'>
                <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
                <script src='/js/script.js'></script>
            </head>

            <body>
                <%@ include file="header.jsp" %>

                    <div class="container">
                        <div class="contact-section">
                            <div class="contact-details">
                                <h1>Contact Us</h1>
                                <p>We're here to assist you with any inquiries you may have. Feel free to reach out to
                                    us using
                                    the
                                    information provided below.</p>
                                <div class="contact-info">
                                    <div class="info-item">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <p>6000 Gov. M. Cuenco Ave, Cebu City, 6000 Cebu</p>
                                    </div>
                                    <div class="info-item">
                                        <i class="fas fa-phone"></i>
                                        <p>(541) 754-3010</p>
                                    </div>
                                    <div class="info-item">
                                        <i class="fas fa-envelope"></i>
                                        <p>abccarportal@gmail.com</p>
                                    </div>
                                </div>
                            </div>
                            <div class="map-section">
                                <iframe class="map"
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925.0427360154927!2d123.90935737577283!3d10.338465167117786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33a998e133925eeb%3A0xfeda037a6ba9d730!2sUniversity%20of%20Cebu%20-%20Banilad%20Campus!5e0!3m2!1sen!2sph!4v1682657650551!5m2!1sen!2sph"
                                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>
            </body>
            <%@ include file="footer.jsp" %>

            </html>