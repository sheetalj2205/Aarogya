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
            <form action="#non" method="post" class="fcorn-register container">
                <p class="register-info">Note: All fields are required.</p>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="firstName" placeholder="First Name" required></p>
                    <p class="col-md-6"><input type="text" name="lastName" placeholder="Last Name" required></p>
                </div>
                <p><input type="email" name="email" placeholder="Email Address" required>
                    <span class="extern-type">We'll keep this private.</span>
                </p>
                <p><input type="password" name="password" placeholder="Password" required>
                    <span class="extern-type">Atleast 8 characters long.</span>
                </p>
                <p><input type="password" name="verifyPassword" placeholder="Verify Password" required></p>
                <div class="row">
                    <p class="col-md-4"><input type="text" name="date" placeholder="Day (dd)" required></p>
                    <p class="col-md-4"><input type="text" name="month" placeholder="Month (mm)" required></p>
                    <p class="col-md-4"><input type="text" name="year" placeholder="Year (yyyy)" required></p>
                    
                </div>
                <div class="row">
                    <p class="col-md-6 city-wrap">
                        <select>
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
                        <select>
                            <option name="town" value="0" selected disabled>Town</option>
                            <option name="townSanavad" value="1">Sanavad</option>
                            <option name="townSaugor" value="2">Saugor</option>
                            <option name="townBhind" value="3">Bakaner</option>
                            <option name="townManawar" value="4">Manawar</option>
                        </select>
                    </p>
                    <p class="col-md-6 specialty-wrap">
                        <select>
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
                            <select>
                                <option name="language" value="0" selected disabled>Language</option>
                                <option name="languageEnglish" value="1">English</option>
                                <option name="languageHindi" value="2">Hindi</option>
                            </select>
                            <span class="extern-type">Patient language.</span>
                        </p>
                        <p class="col-md-4"><input name="disease" type="text" placeholder="Disease Name" required>
                            <span class="extern-type"></p>

                            <p class="col-md-4"><input name="bloodGroup" type="text" placeholder="Blood Group" required></p>

                            <p class="col-md-4"><input name="bloodPressure" type="number" placeholder="Blood Pressure" required></p>

                            <p class="col-md-6">
                                <form>
                                    Upload your medical Report:
                                    <input type="file" name="medicalReport" id="medicalReport">
                                    <input type="submit" value="Upload Image" name="submitReport" required>
                                
                            </p>

                            <p class="col-md-6">
                                <form action="upload.php" method="post" enctype="multipart/form-data">
                                    Upload your personal photo:
                                    <input type="file" name="photo" id="photo">
                                    <input type="submit" value="Upload Image" name="submitPhoto" required>
                                    <span class="extern-type">Current Image of Patient</span>
                                
                            </p>

                            <p class="col-xs-6"><input type="number" name="sugarLevel" placeholder="Enter your Sugar Level" required></p>

                            <p class="col-xs-6"><input type="number" name="bloodLevel" placeholder="Enter your Blood Level" required></p>

                        </p>    
                    </p>
                </div>
                <p class="register-toggle">
                    <label for="register-agree" class="toggle-label" data-on="YES" data-off="NO">
                        <input type="checkbox" name="termsAndConditions" id="register-agree" class="toggle-input">
                        <span class="toggle-handle"></span>
                    </label>
                    <span class="info">Do you want Prescription on Mail</a>
                    </span>
                </p>
                <p class="register-submit"><input type="submit" name="submit" value="Register Now"></p>
            </form>
        </div>
    </body>
</html>
