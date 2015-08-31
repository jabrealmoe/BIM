<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	<div class="full_body">
		<header>
			<div class="headerArea">
				<div class="header_main">
					<div class="row">
						<div class="col-sm-3 col-xs-12 col-md-3">
							<div class="logo">
								<img class="logo_img"src="${assetPath(src: 'logo.png')}" alt="" />
							</div>
						</div>
						<div class="col-sm-9 col-xs-12 col-md-9">
							<ul>
								<li><a href="#">Business Identity Management</a></li>
								<li><a href="#">Premier</a></li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>

				</div>
			</div>
		</header>
		<div class="clear"></div>
		<g:layoutBody/>
		<footer>
			<div class="foot">
				<div class="footerArea">
					<div class="row">
						<div class="col-sm-6 col-xs-6">
							<p>&copy 2015 AmTrust Solutions</p>

						</div>
						<div  class="col-sm-6 col-xs-6">
							<div class="footer_list">
								<ul>
									<li><a href="mailto:bim.admin@amtrustbimsolutions.com?subject=Questions about BIM">Contact Us</a></li>
									<li><a href="#">Term and Conditions</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
		</footer>
		<div class="clear"></div>
	</body>
</html>
