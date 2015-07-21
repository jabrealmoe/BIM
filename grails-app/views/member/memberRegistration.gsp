<%--
  Copyright (c) 7/7/2015 The CPP Group Plc. All Rights Reserved.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main">
  <title>Registration</title>
</head>

<body><section>
  <div class="content_area">
    <div class="col-sm-3"></div>

    <div class="col-sm-9">
      <div class="spag_content">
        <div class="row">
          <div class="col-sm-9 col-xs-12">
            <p><g:message code="default.amtcs.registration.message"/> </p>
            <form data-toggle="validator" role="form" controller="member" action="registerMember">
              <div class="field">
                <div class="row">
                  <div class="form-group col-sm-4 col-xs-12">
                    <p><g:message code="default.amtcs.label.firstName"/> </p>
                    <input class="fname removeNumbers" id="firstName" name="firstName" required type="name" maxlength="25" title="${message(code:'default.amtcs.title.hover.fname')}"/>
                  </div>
                  <div class="form-group col-sm-4 col-xs-12">
                    <p><g:message code="default.amtcs.label.middleInitial"/> </p>
                    <input name="middleInitial" id="middleInitial" class="lname removeNumbers" type="name" maxlength="25" />
                  </div>
                  <div class="form-group col-sm-4 col-xs-12">
                    <p><g:message code="default.amtcs.label.lastName"/> </p>
                    <input id="lastName" name="lastName" class="lname removeNumbers" required type="name" maxlength="25" title="${message(code:'default.amtcs.title.hover.lname')}" />
                  </div>
                </div>

                <div class="clear"></div>

                <div class="row">
                  <div class="form-group col-sm-6 col-xs-12 ">
                    <p><g:message code="default.amtcs.label.email"/> </p>
                    <input maxlength="25" id="emailAddress" name="emailAddress" type="email" required data-error="Please enter a valid email" placeholder="Email" title="${message(code:'default.amtcs.title.hover.email')}" id="inputEmail"/>
                    <div class="help-block with-errors"></div>
                  </div>
                  <div class="form-group col-sm-6 col-xs-12 ">
                    <p><g:message code="default.amtcs.label.confirmEmail"/> </p>
                    <input maxlength="25" id="confirmEmailAddress" name="confirmEmailAddress" type="email"  data-match="#emailAddress" data-error="Email does not match" placeholder="Confirm Email"/>
                    <div class="help-block with-errors"></div>
                  </div>


                </div>

                <div class="clear"></div>

                <div class="row">
                  <div class="form-group col-sm-6 col-xs-12">
                    <p><g:message code="default.amtcs.label.phone"/> </p>
                    <input id="phoneNo" name="phoneNo" class="removeLetters" required type="name" maxlength="10"title="${message(code:'default.amtcs.title.hover.phone')}" data-error="Please enter a valid phone number" placeholder="i.e. 555 555 1212"/>
                    <div class="help-block with-errors"></div>
                  </div>

                  <div class="col-sm-4 col-xs-12">

                  </div>
                </div>

                <div class="clear"></div>

                <div class="row">
                  <div class="form-group col-sm-6 col-xs-12 ">
                    <p><g:message code="default.amtcs.label.address1"/> </p>
                    <input id="address1" name="address1" type="name" required maxlength="50" title="${message(code:'default.amtcs.title.hover.address1')}"/>
                  </div>

                  <div class="form-group col-sm-6 col-xs-12">
                    <p><g:message code="default.amtcs.label.address2"/> </p>
                    <input id="address2" name="address2" type="name"/>
                  </div>
                </div>

                <div class="clear"></div>

                <div class="row">
                  <div class="form-group col-sm-6 col-xs-6">
                    <p><g:message code="default.amtcs.label.city"/> </p>
                    <input id="city" name="city" maxlength="25" required class="city removeNumbers" title="${message(code:'default.amtcs.title.hover.city')}" type="name"/>
                  </div>

                  <div class="form-group col-sm-2 col-xs-4">
                    <p><g:message code="default.amtcs.label.state"/> </p>
                    <select id="state" name="state" title="${message(code:'default.amtcs.title.hover.state')}">
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
                    <p><g:message code="default.amtcs.label.zip"/> </p>
                    <input id="zipCode" name="zipCode" type="name"  required maxlength="10" title="${message(code:'default.amtcs.title.hover.zip')}" pattern="^\d{5}(?:[-\s]\d{4})?$" data-error="Please enter valid Zip Code" class="removeLetters zip"/>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>

                <div class="clear"></div>

                <div class="row">
                  <div class="col-sm-5 ">
                    <p><g:message code="default.amtcs.label.ssn"/> </p>

                    <div class="row">
                      <div class="form-group" title="${message(code:'default.amtcs.title.hover.ssn')}">
                        <div class="col-sm-4 col-xs-4">
                          <input id="ssn1" name="ssn1" class="section1ofSSN" maxlength="3" required pattern="[0-9]{3}" type="name"/>
                        </div>

                        <div style="padding:0;" class="col-sm-2 col-xs-4">
                          <input id="ssn2" name="ssn2" class="section2ofSSN" maxlength="2" required pattern="[0-9]{2}" type="name"/>
                        </div>

                        <div class="col-sm-5 col-xs-4">
                          <input id="ssn3" name="ssn3" class="section3ofSSN" maxlength="4" required pattern="[0-9]{4}" type="name"/>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-5 col-sm-offset-2 col-xs-12" style="padding-right: 1.5em">
                    <p><g:message code="default.amtcs.label.dob"/> </p>
                    <div class="row">
                      <div class="form-group">
                        <div class='form-group input-group date' id='datetimepicker1'>
                          <input name="dob" type='address' class="amtcsDatePicker" placeholder="mm/dd/yyyy" title="${message(code:'default.amtcs.title.hover.dob')}" />
                          <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>
                <div class="clear"></div>
                <div class="row">
                  <div class="col-sm-8 col-xs-6">
                    <div class="form-group">
                      <div class="checkbox">
                        <label>
                          <input id="tandc1" name="tandc1" type="checkbox" id="terms" data-error="You must accept the Terms and Conditions to continue" required>
                          <g:message code="default.amtcs.button.label.terms1"/>
                        </label>
                        <div class="help-block with-errors"></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4 col-xs-6">

                  </div>

                </div>
                <div class="row">
                  <div class="col-sm-12 col-xs-12">
                   <div class="form-group">
                     <div class="checkbox">
                       <label>
                         <input id="tandc2" name="tandc2" type="checkbox" id="terms2" data-error="You must provide authorization continue" required>
                         <g:message code="default.amtcs.button.label.terms2"/>
                       </label>
                       <div class="help-block with-errors"></div>
                     </div>
                   </div>
                  </div>

                </div>

                <div class="row">
                  <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-5"></div>
                    <div align="right" class="col-sm-4 "><button type="submit" class="btn btn-primary"><g:message code="default.amtcs.button.label.submit"/>  &nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i>
                    </button></div>
                  </div>
                </div>
              </div>
            </form>
          </div>

          <div class="col-sm-3 col-xs-12">
            <div class="reg_img">
              <img src="${resource(dir:'images', file: 'image3.png')}" alt=""/>
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
