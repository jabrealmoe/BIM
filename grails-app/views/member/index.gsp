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
                        <p>As a part of your Business Identity Management product you receive a complimentary personal identity management membership. Please use this portal to activate your membership to turn on your personal credit monitoring.</p>

                        <form data-toggle="validator" role="form">
                        <div class="field">
                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-12">
                                    <p>First Name</p>
                                    <input class="fname" type="name"/>
                                </div>

                                <div class="form-group col-sm-6 col-xs-12">
                                    <p>Last Name</p>
                                    <input class="lname" type="name"/>
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-12 ">
                                    <p>Email</p>
                                    <input type="email" data-error="Bruh, that email address is invalid" placeholder="Email"/>
                                    <div class="help-block with-errors"></div>
                                </div>

                                <div class="form-group col-sm-6 col-xs-12">
                                    <p>Phone</p>
                                    <input type="number"/>
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-12 ">
                                    <p>Address 1</p>
                                    <input type="name"/>
                                </div>

                                <div class="form-group col-sm-6 col-xs-12">
                                    <p>Address 2</p>
                                    <input type="name"/>
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="form-group col-sm-6 col-xs-6">
                                    <p>City</p>
                                    <input class="city" type="name"/>
                                </div>

                                <div class="form-group col-sm-2 col-xs-4">
                                    <p>State</p>
                                    <select name="state">
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
                                    <p>Zip</p>
                                    <input class="zip" type="address"/>
                                </div>
                            </div>

                            <div class="clear"></div>

                            <div class="row">
                                <div class="col-sm-5 ">
                                    <p>Social Security Number</p>

                                    <div class="row">
                                        <div class="form-group col-sm-4 col-xs-4">
                                            <input maxlength="3" required pattern="[0-9]{3}" type="name"/>
                                        </div>

                                        <div style="padding:0;" class="form-group col-sm-2 col-xs-4">
                                            <input maxlength="2" required pattern="[0-9]{2}" type="name"/>
                                        </div>

                                        <div class="form-group col-sm-5 col-xs-4">
                                            <input maxlength="4" required pattern="[0-9]{4}" type="name"/>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-5 col-sm-offset-2 col-xs-12" style="padding-right: 1.5em">
                                    <p>Date of Birth</p>
                                    <div class="row">
                                        <div class='form-group input-group date' id='datetimepicker1'>
                                            <input type='address' class="datepicker" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
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
                        </form>
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
