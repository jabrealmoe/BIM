modules = {
  application {
    resource id: 'css', url:[dir:'css', file:'main.css']
    resource id: 'css', url:[dir:'css', file:'font-awesome.min.css']
    resource id: 'css', url:[dir:'css', file:'bootstrap.min.css']
    resource id: 'css', url:[dir:'css', file:'bootstrap-theme.css']
    resource id: 'css', url:[dir:'css', file:'bootstrap-theme.min.css']
    resource id: 'css', url:[dir:'css', file:'datepicker.css']
    resource id: 'css', url:[dir:'css', file:'mobile.css']

    dependsOn 'jquery'
    resource id: 'js', url:[dir:'js', file:'jquery-1.11.1.min.js']
    resource id: 'js', url:[dir:'js', file:'bootstrap-datepicker.js']
    resource id: 'js', url:[dir:'js', file:'application.js']
    resource id: 'js', url:[dir:'js', file:'owner.js']
    resource id: 'js', url:[dir:'js', file:'validator.js']
  }


  html5 {
    resource id: 'js', url:[dir:'js', file:'html5shiv.js']
  }

}
