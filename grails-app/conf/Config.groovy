import org.apache.log4j.PatternLayout

// TODO change this to alter the default package name
grails.project.groupId = appName

grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text/plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']


// The default codec used to encode data with ${}
grails.views.default.codec = "html" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"

// Enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true

// Scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// Enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// Packages to include in Spring bean scanning
grails.spring.bean.packages = []
// Whether to disable processing of multi part requests
grails.web.disable.multipart=false

// Request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// Enable query caching by default
grails.hibernate.cache.queries = true

// Set per-environment serverURL stem for creating absolute links
environments {
    development {
        grails.logging.jul.usebridge = true
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}

// Log to the console for development & test. Production logging configured externally in JBoss.
log4j = {
  appenders {
    console name: 'stdout', layout: new PatternLayout( conversionPattern: '%d [%t] %-5p %c - %m%n' )
  }
  root {
    warn()
  }
}

grails.gorm.failOnError=true

//Application defaults
app.registration.abouturl = ""
app.registration.phonenumber = "1-800-605-9895"
//app.registration.membertype = "NI"
app.registration.servicetype = "CRMONITOR"
app.registration.program = "NewIdReg"
app.registration.transactioncode = "CSIW"
app.registration.userid = "WEB_"
