<%--
  Copyright (c) 7/7/2015 The CPP Group Plc. All Rights Reserved.
--%>

<%@ page import="com.amtcs.Owner" %>
<!DOCTYPE html>
<html>
<head><meta name="layout" content="main">
  <title>Member Signin</title></head>

<body>
<section>
  <div class="content_area">
    <div class="col-sm-3"></div>

    <div class="col-sm-9">
      <div class="spag_content">
        <div class="row">
          <div class="col-sm-9 col-xs-12">
            <p><g:message code="default.amtcs.registration.message" /></p>

            <form data-toggle="validator" role="form" controller="owner" action="submitMemberInfo">
              <div class="field">
                <div class="row">
                  <div class="form-group col-sm-8 col-xs-12">
                    <p><g:message code="default.amtcs.label.member" /></p>
                    <input class="restrictMemberId" data-error="${message(code:'default.amtcs.data.error.memberNumber')}" name="memberNumber" required type="name" maxlength="11" title="${
                      message( code:'default.amtcs.title.hover.memberNumber' )}" />
                  </div>

                </div>

                <div class="clear"></div>

                <div class="row">
                  <div class="form-group col-sm-6 col-xs-12 ">
                    <p><g:message code="default.amtcs.label.zipCode" /></p>
                    <input id="zipCode" name="zipCode" type="name"  required maxlength="10" title="${message(code:'default.amtcs.title.hover.zip')}" pattern="^\d{5}(?:[-\s]\d{4})?$" data-error="${message(code:'default.amtcs.data.error.zipCode')}" class="removeLetters zip"/>
                    <div class="help-block with-errors"></div>
                  </div>


                </div>

                <div class="clear"></div>

                <div class="row forgot">
                  <div class="form-group">
                      <div class="col-sm-8 col-xs-12">
                        <a class="test" data-toggle="tooltip" data-placement="right"
                           title="${message( code:'default.amtcs.mouseover.forgotMessage' )}"
                           href="#"><g:message code="default.amtcs.link.forgotMessage" /></a>
                      </div>
                    <div align="right" class="col-sm-4 "><button type="submit" class="btn btn-primary"><g:message code="default.amtcs.button.label.submit" />  &nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i>
                    </button></div>
                  </div>
                </div>
              </div>
            </form>
          </div>

          <div class="col-sm-3 col-xs-12">
            <div class="reg_img">
              <img src="${resource( dir:'images', file:'image3.png' )}" alt="" />
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
