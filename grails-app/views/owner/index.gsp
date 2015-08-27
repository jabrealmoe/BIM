
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
									<div class="col-sm-8 col-xs-12">
										<p>Member Number</p>
										<input  type="number" />
									</div>
									<div class="col-sm-6 col-xs-12">
										<p>Zip Code</p>
										<input  type="number" />
									</div>
								</div>
								<div class="clear"></div>
								<div class="row forgot">
									<div class="col-sm-6 col-xs-12">
										<a class="showTip L1" href="#">Forgot Member Number?</a>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div align="right"><button>Next Step &nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i></button></div>
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
