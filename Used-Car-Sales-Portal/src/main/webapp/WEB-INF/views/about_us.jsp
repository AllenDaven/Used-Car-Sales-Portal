<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset='utf-8'>
                <link rel="shortcut icon" type="x-icon" href="">
                <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                <title>ABC Cars | About Us</title>
                <meta name='viewport' content='width=device-width, initial-scale=1'>
                <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
                <script src='/js/script.js'></script>
            </head>

            <body>
                <%@ include file="header.jsp" %>

                    <div class="about-container">
                        <div class="about-text">
                            <h1>About ABC Car Portal</h1>
                            <p>ABC Cars Pte Ltd is a premier destination for those seeking top-quality used vehicles.
                                With a
                                rich history of providing exceptional service and a commitment to customer satisfaction,
                                we have
                                become a trusted name in the automotive industry.</p>
                            <p>At ABC Cars, we understand that purchasing a car is a significant investment, which is
                                why we
                                strive to offer the best selection of vehicles to meet the diverse needs and preferences
                                of our
                                customers. Our extensive inventory includes everything from fuel-efficient compact cars
                                to
                                spacious SUVs and luxurious sedans, ensuring that you'll find the perfect vehicle to
                                suit your
                                lifestyle and budget.</p>
                            <p>What sets us apart is our dedication to transparency and integrity. Our experienced team
                                of
                                professionals works tirelessly to ensure that every vehicle on our lot meets our
                                rigorous
                                quality standards. From comprehensive inspections to detailed vehicle history reports,
                                we
                                provide you with all the information you need to make an informed decision.</p>
                            <p>But our commitment to our customers goes beyond just selling cars. We believe in building
                                long-lasting relationships based on trust and reliability. Whether you're a first-time
                                buyer or
                                a seasoned car enthusiast, our friendly and knowledgeable staff are here to assist you
                                every
                                step of the way. From helping you find the right vehicle to providing personalized
                                financing
                                options, we're here to make your car-buying experience seamless and enjoyable.</p>
                            <p>Visit our showroom today to explore our extensive inventory and experience the ABC Cars
                                difference. Let us help you find the perfect vehicle to fit your needs and exceed your
                                expectations!</p>
                        </div>
                    </div>

                    <div class="about-image">
                        <img src="/images/about.jpg" alt="About Image">
                    </div>

                    <div class="services">
                        <h1>Discover Our Car Services</h1>
                        <p class="description">Explore the comprehensive car services offered by ABC Cars to enhance
                            your car
                            buying experience.</p>
                    </div>

                    <div class="rows">
                        <div class="columns">
                            <div class="card">
                                <img src="images/service1.jpg" alt="Service 1">
                                <div class="container">
                                    <h2 style="font-size: 31px;">Car Inspection</h2>
                                    <p class="title">ABC Cars</p>
                                    <p>Our expert inspectors thoroughly examine every aspect of the car to ensure its
                                        quality
                                        and reliability.</p>
                                    <p><button class="button">Learn More</button></p>
                                </div>
                            </div>
                        </div>

                        <div class="columns">
                            <div class="card">
                                <img src="images/service2.jpg" alt="Service 2">
                                <div class="container">
                                    <h2 style="font-size: 31px;">Financing Options</h2>
                                    <p class="title">ABC Cars</p>
                                    <p>Explore various financing options tailored to your needs, making it easier to
                                        afford your
                                        dream car.</p>
                                    <p><button class="button">Learn More</button></p>
                                </div>
                            </div>
                        </div>

                        <div class="columns">
                            <div class="card">
                                <img src="images/service3.jpg" alt="Service 3">
                                <div class="container">
                                    <h2 style="font-size: 31px;">Trade-In Assistance</h2>
                                    <p class="title">ABC Cars</p>
                                    <p>Effortlessly trade in your current vehicle with our assistance, ensuring a smooth
                                        transition to your new car.</p>
                                    <p><button class="button">Learn More</button></p>
                                </div>
                            </div>
                        </div>
                    </div>


            </body>
            <%@ include file="footer.jsp" %>

            </html>