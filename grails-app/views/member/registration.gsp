<%--
  Created by IntelliJ IDEA.
  User: jj
  Date: 6/15/15
  Time: 7:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Registration</title>
</head>

<body>
<section>
    <div class="content_area">
        <div class="col-sm-3"></div>

        <div class="col-sm-9">
            <div class="spag_content">
                <div class="row">
                    <div class="col-sm-9 col-xs-12">
                        <p><g:message code="default.amtcs.registration.message" /></p>

                        <div class="field">
                            <div class="row">
                                <div class="form-group col-sm-4 col-xs-12">
                                    <p><g:message code="default.amtcs.label.firstName" /></p>
                                    <input class="fname removeNumbers" id="firstName" name="firstName" required type="name" maxlength="25" title="${message( code:'default.amtcs.title.hover.fname' )}" />
                                </div>

                                <div class="form-group col-sm-4 col-xs-12">
                                    <p><g:message code="default.amtcs.label.middleInitial" /></p>
                                    <input name="middleInitial" id="middleInitial" class="lname removeNumbers" type="name" maxlength="1" />
                                </div>

                                <div class="form-group col-sm-4 col-xs-12">
                                    <p><g:message code="default.amtcs.label.lastName" /></p>
                                    <input id="lastName" name="lastName" class="lname removeNumbers" required type="name" maxlength="25" title="${message( code:'default.amtcs.title.hover.lname' )}" />
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-12 ">
                                    <p><g:message code="default.amtcs.label.email" /></p>
                                    <input maxlength="50" id="emailAddress" name="emailAddress" type="name" pattern="^[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,6}$"
                                           required data-error="Please enter a valid email" placeholder="Email" title="${message( code:'default.amtcs.title.hover.email' )}" id="inputEmail" />
                                    <div class="help-block with-errors"></div>
                                </div>

                                <div class="form-group col-sm-6 col-xs-12 ">
                                    <p><g:message code="default.amtcs.label.confirmEmail" /></p>
                                    <input maxlength="50" id="confirmEmailAddress" name="confirmEmailAddress" type="email" data-match="#emailAddress" data-error="Email does not match" placeholder="Confirm Email" />

                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-12">
                                    <p><g:message code="default.amtcs.label.phone" /></p>
                                    <input id="phoneNo" name="phoneNo" pattern="\((\d{3}). \d{3}\-\d{4}|\d{10}" class="removeLetters" required type="name" maxlength="14" title="${message( code:'default.amtcs.title.hover.phone' )}" data-error="Please enter a valid phone number" placeholder="i.e. 555 555 1212" />
                                    <div class="help-block with-errors"></div>
                                </div>

                                <div class="col-sm-4 col-xs-12">

                                </div>
                            </div>
                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-12 ">
                                    <p><g:message code="default.amtcs.label.address1" /></p>
                                    <input id="address1" name="address1" type="name" required maxlength="50" title="${message( code:'default.amtcs.title.hover.address1' )}" />
                                </div>
                                <div class="form-group col-sm-6 col-xs-12">
                                    <p><g:message code="default.amtcs.label.address2" /></p>
                                    <input id="address2" name="address2" type="name" />
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-6">
                                    <p><g:message code="default.amtcs.label.city" /></p>
                                    <input id="city" name="city" maxlength="25" required class="city removeNumbers" title="${
                                        message( code:'default.amtcs.title.hover.city' )}" type="name" />
                                </div>

                                <div class="form-group col-sm-2 col-xs-4">
                                    <p><g:message code="default.amtcs.label.state" /></p>
                                    <select id="state" name="state" title="${message( code:'default.amtcs.title.hover.state' )}">
                                        <option value="AL">AL</option>
                                        <option value="AK">AK</option>
                                        <option value="AZ">AZ</option>
                                        <option value="AR">AR</option>
                                        <option value="CA">CA</option>
                                        <option value="CO">CO</option>
                                        <option value="CT">CT</option>
                                        <option value="DE">DE</option>
                                        <option value="DC">DC</option>
                                        <option value="FL">FL</option>
                                        <option value="GA">GA</option>
                                        <option value="HI">HI</option>
                                        <option value="ID">ID</option>
                                        <option value="IL">IL</option>
                                        <option value="IN">IN</option>
                                        <option value="IA">IA</option>
                                        <option value="KS">KS</option>
                                        <option value="KY">KY</option>
                                        <option value="LA">LA</option>
                                        <option value="ME">ME</option>
                                        <option value="MD">MD</option>
                                        <option value="MA">MA</option>
                                        <option value="MI">MI</option>
                                        <option value="MN">MN</option>
                                        <option value="MS">MS</option>
                                        <option value="MO">MO</option>
                                        <option value="MT">MT</option>
                                        <option value="NE">NE</option>
                                        <option value="NV">NV</option>
                                        <option value="NH">NH</option>
                                        <option value="NJ">NJ</option>
                                        <option value="NM">NM</option>
                                        <option value="NY">NY</option>
                                        <option value="NC">NC</option>
                                        <option value="ND">ND</option>
                                        <option value="OH">OH</option>
                                        <option value="OK">OK</option>
                                        <option value="OR">OR</option>
                                        <option value="PA">PA</option>
                                        <option value="RI">RI</option>
                                        <option value="SC">SC</option>
                                        <option value="SD">SD</option>
                                        <option value="TN">TN</option>
                                        <option value="TX">TX</option>
                                        <option value="UT">UT</option>
                                        <option value="VT">VT</option>
                                        <option value="VA">VA</option>
                                        <option value="WA">WA</option>
                                        <option value="WV">WV</option>
                                        <option value="WI">WI</option>
                                        <option value="WY">WY</option>
                                    </select>

                                </div>

                                <div class="form-group col-sm-4 col-xs-12">
                                    <p><g:message code="default.amtcs.label.zip" /></p>
                                    <input id="zipCode" name="zipCode" type="name" required maxlength="10" title="${message(
                                            code:'default.amtcs.title.hover.zip' )}" pattern="^\d{5}(?:[-\s]\d{4})?$" data-error="Please enter valid Zip Code" class="removeLetters zip" />

                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="col-sm-5 ">
                                    <label for="ssn1">Social Security Number</label>

                                    <div class="row">
                                        <div class="form-group" title="${message( code:'default.amtcs.title.hover.ssn' )}">
                                            <div class="col-sm-4 col-xs-4">
                                                <input id="ssn1" name="ssn1" data-error="bad ssn" onkeyup="autoFormAdvance(3,'ssn1','ssn2')" class="section1ofSSN" maxlength="3" required pattern="[0-9]{3}" type="name" />
                                            </div>

                                            <div style="padding:0;" class="col-sm-2 col-xs-4">
                                                <input id="ssn2" name="ssn2" onkeyup="autoFormAdvance(2,'ssn2','lastFourSSN')" class="section2ofSSN" maxlength="2" required pattern="[0-9]{2}" type="name" />
                                            </div>

                                            <div class="col-sm-5 col-xs-4">
                                                <input id="lastFourSSN" data-error="Bad number" name="lastFourSSN" class="lastFourSSN" maxlength="4" required pattern="[0-9]{4}" type="name" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-7 col-xs-12" >
                                    <label for="dobPicker1"><g:message code="default.amtcs.label.dob" /></label>

                                    <div class="row">
                                        <div class="form-group">
                                            <div class='form-group input-group date' id='datetimepicker2'>

                                                <input name="dob" id="dobPicker1" maxlength="10"data-error="Invalid date format. Must be 18" type='address' required class="amtcsDatePicker" placeholder="mm/dd/yyyy" title="${
                                                    message( code:'default.amtcs.title.hover.dob' )}" />
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>

                            <div class="row">
                                <div class="col-sm-3 col-sm-offset-5"></div>
                                <div align="right" class="col-sm-4 "><button>Submit  &nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i>
                                </button></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-xs-12">
                        <div class="reg_img">
                            <img src="${assetPath(src: 'image3.png')}" alt=""/>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<div class="clear"></div>
</body>
</html>
