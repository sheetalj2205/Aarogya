<%-- 
    Document   : SignUpPatient
    Created on : 13 Mar, 2021, 11:18:15 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Aarogya | Patient Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
        <!-- Register Form -->
        <div class="form-wrapper">
            <!-- Form-wrapper only for positioning -->
            <form action="signUpPatientCode.jsp" method="post" class="fcorn-register container">
                <p class="register-info">Note: All fields are required.</p>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="firstName" placeholder="First Name" required></p>
                    <p class="col-md-6"><input type="text" name="lastName" placeholder="Last Name" required></p>
                </div>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="aadhar" placeholder="Aadhar Card Number" required></p>
                    <p class="col-md-6"><input type="text" name="contact" placeholder="Contact Number" required></p>
                </div>
<!--                <p><input type="text" name="aadhar" placeholder="Aadhar Card Number" required>
                    <span class="extern-type">We'll keep this private.</span>
                </p>-->
                
                <div class="row">
                    <p class="col-md-4"><input type="text" name="date" placeholder="Day (dd)" required></p>
                    <p class="col-md-4"><input type="text" name="month" placeholder="Month (mm)" required></p>
                    <p class="col-md-4"><input type="text" name="year" placeholder="Year (yyyy)" required></p>
                    
                </div>
                <div class="row">
                    <p class="col-md-6 city-wrap">
                        <select name="District">
                            <option  selected disabled>District</option>
                            <option>Indore</option>
                            <option>Bhopal</option>
                            <option>Dhar</option>
                            <option>Badwani</option>
                            <option>Vidhisha</option>
                            <option>Ujjain</option>
                        </select>
                    </p>
                    <p class="col-md-6 country-wrap">
                        <!-- Add more country name -->
                        <select name="city">
                            <option selected disabled>Town</option>
                            <option>Sanavad</option>
                            <option>Saugor</option>
                            <option>Bakaner</option>
                            <option>Manawar</option>
                        </select>
                    </p>
                    
                        
                        <p class="col-md-6 specialty-wrap">
                        <select name="specialityReq">
                            <option selected disabled>Specialty Required</option>
                            <option>Cardiology</option>
                            <option>Oncology </option>
                            <option>Neurology</option>
                            <option>Urology</option>
                            <option>Surgical Gastroenterology</option>
                            <option>Medical Gastroenterology</option>
                            <option>Obstetrics and Gynaecology</option>
                            <option>Bone Marrow Transplant</option>
                            <option>Dentist</option>
                        </select>
                        <p class="col-md-6 language-wrap">
                            <select name="lang">
                                <option selected disabled>Language</option>
                                <option>English</option>
                                <option>Hindi</option>
                            </select>
                            <span class="extern-type">Patient language.</span>
                        </p>
                        <p class="col-md-4"><input name="disease" type="text" placeholder="Disease Name" required>
                            <span class="extern-type"></p>

                            <p class="col-md-4"><input name="bloodGroup" type="text" placeholder="Blood Group" required></p>

                            <p class="col-md-4"><input name="bloodPressure" type="number" placeholder="Blood Pressure" required></p>

                            
                            

                            <p class="col-xs-6"><input type="number" name="sugarLevel" placeholder="Enter your Sugar Level" required></p>

                            <p class="col-xs-6"><input type="number" name="bloodLevel" placeholder="Enter your Blood Level" required></p>

                            <p><input type="text" name="other" placeholder="Any other information that you want to give us" required>
                    <span class="extern-type">We'll keep this private.</span>
                </p>
                               <p><input type="password" name="password" placeholder="Password" required>
                    <span class="extern-type">Atleast 8 characters long.</span>
                </p>
                <p><input type="password" name="verifyPassword" placeholder="Verify Password" required></p>
                </div>
                <p class="register-toggle">
                    <label for="register-agree" class="toggle-label" data-on="YES" data-off="NO">
                        <input type="checkbox" name="termsAndConditions" id="register-agree" class="toggle-input">
                        <span class="toggle-handle"></span>
                    </label>
                    <span class="info">Do you want Prescription on Mail</span>
                    
                </p>
                <p class="register-submit"><input type="submit" name="submit" value="Register Now"></p>
            </form>
        </div>
    </body>
</html>
