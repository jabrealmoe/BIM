
<%@ page import="com.amtcs.bim.Owner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Member Signin</title>
	</head>
	<body>
	<section>
		<div class="content_area">
			<div class="col-sm-3 col-xs-12" ></div>
			<div class="col-sm-9 col-xs-12">
				<div class="spag_content">
					<div class="row">
						<div class="col-sm-9 col-xs-12">
							<g:form data-toggle="validator" role="form" controller="member" action="index">
							<p><g:message code="default.amtcs.registration.message"/></p>
							<div class="field l_field">
								<div class="row">
									<div class="form-group col-sm-8 col-xs-12">
										<p><g:message code="default.amtcs.label.member" /></p>
										<input data-error="${message(code:'default.amtcs.data.error.memberNumber')}" name="memberNumber" pattern="^(IB|ib|Ib|iB){0,1}\d{8}$" required type="name" maxlength="10" title="${message( code:'default.amtcs.title.hover.memberNumber')}" />
										<div class="help-block with-errors"></div>
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
											<a  class = "thickbox test"
												href="${resource(dir:'images', file:'hover.png')}"><g:message code="default.amtcs.link.forgotMessage" /></a>
										</div>
										<div align="right" class="col-sm-4 "><button type="submit" class="btn btn-primary"><g:message code="default.amtcs.button.label.submit" />  &nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i>
										</button></div>
									</div>
								</div>
							</div>
							 </g:form>
						</div>
						<div class="col-sm-3 col-xs-12">
							<div class="reg_img2">
								<img src="${assetPath(src: 'image1.png')}" alt="" />
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
