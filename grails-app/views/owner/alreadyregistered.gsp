<%--
  Copyright (c) 7/7/2015 The CPP Group Plc. All Rights Reserved.
--%>

<%@ page import="com.amtcs.businessidmanagementregistration.Owner" %>
<!DOCTYPE html>
<html>
<head><meta name="layout" content="main">
  <title>Already Completed Registration</title></head>

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
              <div class="row ">
                <div style="margin-top: 30px;margin-bottom: -10px" class="alert-info alert form-group col-sm-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
                  <span style=" color:darkblue;padding-top: -1%"><g:message code="default.amtcs.member.number.alreadyRegistered" /></span>
                  <br/>
                  <br/>
                  <span style=" color:darkblue;padding-top: -1%"><g:message code="default.amtcs.member.number.reminder" /></span>
                </div>
              </div>

              <div class="row forgot">
                <div class="form-group">
                  <div class="col-sm-8 col-xs-12">

                  </div>
                  <g:form class="form" url="${landingUrl}">
                    <div align="right" class="col-sm-4 ">
                    <button type="submit" class="btn btn-primary"><g:message code="default.amtcs.button.label.continue" />  &nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i>
                    </button>
                  </g:form>
                </div>
                </div>
              </div>
            </div>

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
