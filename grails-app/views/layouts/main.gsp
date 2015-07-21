<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title><g:layoutTitle default="Grails" /></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="${resource( dir:'images', file:'favicon.ico' )}" type="image/x-icon">

  <r:require module="application"/>
  <g:javascript src="html5shiv.js"/>
  <g:layoutHead />
  <r:layoutResources />
</head>

<body>
<div class="full_body">
  <header>
    <div class="headerArea">
      <div class="header_main">
        <div class="row">
          <div class="col-sm-3 col-xs-12 col-md-3">
            <div class="logo">
              <img class="logo_img"src="${resource(dir: 'images',file: 'logo.png')}" alt="" />
            </div>
          </div>
          <div class="col-sm-9 col-xs-12 col-md-9">
            <ul>
              <li><a href="#">Personal Identity Management</a></li>
              <li><a href="#">For Owner</a></li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </header>
  <div class="clear"></div>

</div>
<g:layoutBody />
<footer>
  <div class="foot">
    <div class="footerArea">
      <div class="row">
        <div class="col-sm-6 col-xs-6">
          <p><g:message code="${message(code:'default.amtcs.label.copyright')}"/></p>

        </div>
        <div  class="col-sm-6 col-xs-6">
          <div class="footer_list">
            <ul>
              <li><a href="mailto:bim.admin@amtrustbimsolutions.com?subject=Questions about BIM">Contact Us</a></li>
              <li><a href="${resource(dir: 'images',file: 'BIM-RTN-77.pdf')}">Terms, Conditions and Privacy</a></li>

            </ul>
          </div>
        </div>
      </div>
    </div>

  </div>
</footer>
<div class="clear"></div>
<r:layoutResources />
</body>
</html>
