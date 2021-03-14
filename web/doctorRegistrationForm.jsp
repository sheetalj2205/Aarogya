<%-- 
    Document   : doctorRegistrationForm
    Created on : 11 Mar, 2021, 4:19:09 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Aarogya | Doctor Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <header class="register">
            <div class="mainheader">
                <div class="logo">
                    <img src="images/logo.png">
                </div>

                <nav>
                    <a href="Homepage.jsp">home</a>
                    <a class="activeLink" href="doctorRegistrationForm.jsp">Doctor</a>
                    <a href="SignUpPatient.jsp">Patient</a>
                    
                </nav>

                <div class="menubtn">
                    <button>Apply</button>
                </div>
            </div>
        </header>
        <!-- Register Form -->
        <div class="form-wrapper">
            
            <!-- Form-wrapper only for positioning -->
            <form action="signUpCode.jsp" method="post" class="fcorn-register container">
                <p class="register-info">Note: All fields are required.</p>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="firstName" placeholder="First Name" required></p>
                    <p class="col-md-6"><input type="text" name="lastName" placeholder="Last Name" required></p>
                </div>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="email" placeholder="Email" required></p>
                    <p class="col-md-6"><input type="text" name="contact" placeholder="Contact Number" required></p>
                </div>
<!--                <p><input type="email" name="email" placeholder="Email Address" required>-->
<!--                    <span class="extern-type">We'll keep this private.</span>-->
                </p>
                
                <div class="row">
                    <p class="col-md-4"><input type="text" name="date" placeholder="Day (dd)" required></p>
                    <p class="col-md-4"><input type="text" name="month" placeholder="Month (mm)" required></p>
                    <p class="col-md-4"><input type="text" name="year" placeholder="Year (yyyy)" required></p>
                    
                </div>
                <div class="row">
                    <p class="col-md-6 city-wrap">
                        <select name="cityName">
                            <option name="city" value="0" selected disabled>City</option>
                            <option name="cityIndore" value="1">Indore</option>
                            <option name="cityBhopal" value="2">Bhopal</option>
                            <option name="cityDhar" value="3">Dhar</option>
                            <option name="cityBadwani" value="4">Badwani</option>
                            <option name="cityVidhisha" value="5">Vidhisha</option>
                            <option name="cityUjjain" value="6">Ujjain</option>
                        </select>
                    </p>
                    <p class="col-md-6 country-wrap">
                        <!-- Add more country name -->
                        <select name="countryName">
                            <option name="country" value="0" selected disabled>Country</option>
                            <option name="countryIndia" value="1">India</option>
                            <option name="countryNepal" value="2">Nepal</option>
                            <option name="countryBangladesh" value="3">Bangladesh</option>
                            <option name="countrySriLanka" value="4">Sri Lanka</option>
                        </select>
                    </p>
                    <p class="col-md-6 specialty-wrap">
                        <select name="specialization">
                            <option name="specialty" value="0" selected disabled>Specialty</option>
                            <option name="specialtyCardiology" value="1">Cardiology</option>
                            <option name="specialtyOncology" value="2">Oncology </option>
                            <option name="specialtyNeurology" value="3">Neurology</option>
                            <option name="specialtyUrology" value="4">Urology</option>
                            <option name="specialtySurgicalGastroenterology" value="5">Surgical Gastroenterology</option>
                            <option name="specialtyMedicalGastroenterology" value="6">Medical Gastroenterology</option>
                            <option name="specialtyObstetricsAndGynaecology" value="7">Obstetrics and Gynaecology</option>
                            <option name="specialtyBoneMarrowTransplant" value="8">Bone Marrow Transplant</option>
                            <option name="specialtyDentist" value="9">Dentist</option>
                        </select>
                        <p class="col-md-6 language-wrap">
                            <select name="lang">
                                <option name="language" value="0" selected disabled>Language</option>
                                <option name="languageEnglish" value="1">English</option>
                                <option name="languageHindi" value="2">Hindi</option>
                            </select>
                            <span class="extern-type">Proficient languages.</span>
                        </p>
                        <p class="col-md-4"><input name="medicalCollege" type="text" placeholder="Medical College" required>
                            <span class="extern-type"></p>

                            <p class="col-md-4"><input name="medicalID" type="text" placeholder="Medical ID" required></p>

                            <p class="col-md-4"><input name="aadharCardNumber" type="number" placeholder="Aadhar Card No." required></p>

                           

                            <p class="col-xs-6"><input type="text" name="facebook" placeholder="Enter your Facebook profile link" required></p>

                            <p class="col-xs-6"><input type="text" name="linkedin" placeholder="Enter your LinkedIn profile link" required></p>

                        </p>    
                    </p>
                </div>
                <p><input type="password" name="password" placeholder="Password" required>
                    <span class="extern-type">Atleast 8 characters long.</span>
                </p>
                <p><input type="password" name="verifyPassword" placeholder="Verify Password" required></p>
                <p class="register-toggle">
                    <label for="register-agree" class="toggle-label" data-on="YES" data-off="NO">
                        <input type="checkbox" name="termsAndConditions" id="register-agree" class="toggle-input">
                        <span class="toggle-handle"></span>
                    </label>
                    <span class="info">Do you agree to the
                        <a>terms and conditions?</a>
                    </span>
                </p>
                <p class="register-submit"><input type="submit" name="submit" value="Register Now"></p>
            </form>
            
        </div>
    </body>
</html>
