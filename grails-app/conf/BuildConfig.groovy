import uk.co.cpp.grails.base.ivy.ResolverFactory

grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.7
grails.project.source.level = 1.7

grails.project.war.file = 'target/BusinessIdManagementRegistration.war'

grails.project.dependency.resolution = {
  // Inherit Grails' default dependencies
  inherits("global") {
    // Uncomment to disable ehcache
    // excludes 'ehcache'
  }
  // Log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
  log "warn"
  // Whether to verify checksums on resolve
  checksums true

  repositories {
    // Register standard CPP dependency resolvers
    ResolverFactory.resolvers().each { dependencyResolver ->
      resolver dependencyResolver
    }
  }

  dependencies {
    // Specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes.
    // Added latest integration from NaServices-Shared-Lib
    // Reference Git commit 5f318bb3adeb6b4e89b36f226232c6bc331107cb for 'UR21647'

    compile( [group:'cpp', name:'cpputil-log4j', version:'1.0.1'],
             [group:'cpp', name:'naservices-core-impl', version:'latest.integration'],
             [group:'cpp', name:'naservices-core',version: 'latest.integration' ],
             [group:'cpp', name:'cpputil-acs', version:'1.0.2'],
             [group:'cpp', name:'dbcalls-feebase', version:'1.1.22']
             ) {
      exclude "log4j"
      exclude "aopalliance"
      exclude "slf4j"
    }
    compile(group: 'cpp', name: 'b2b-csid-soa-client', version: '1.0.6') {
      exclude "log4j"
      exclude "aopalliance"
      exclude "slf4j"
      exclude "springframework"
      exclude "rome-fetcher" // exclude from spring-integraion, not needed
      exclude "rome"
      exclude "naservices-core"
      exclude "naservices-core-impl"
    }
    compile(group: 'springframework', name: 'springframework', version: '3.1.2',) {
      dependencyConfiguration('oxm')
      transitive = false
    }

  }

  plugins {
    //Grails plugin dependencies
    runtime ":hibernate:$grailsVersion"
    runtime ":jquery:1.11.1"
    runtime ":resources:1.1.6"
    build ":tomcat:$grailsVersion"


    test ":code-coverage:1.2.5"
    test ":codenarc:0.18"
    test ":build-test-data:2.0.2"

	// Additional application dependencies
	compile 'cpp:base:6.0.0'
  }
}

coverage {
  exclusions = ['**/*BuildConfig*']
}

codenarc.reports = {
  MyXmlReport( 'xml' ) {
    outputFile = 'target/CodeNarc-Report.xml'
    title = 'XML Codenarc Report'
  }
  MyHtmlReport( 'html' ) {
    outputFile = 'target/CodeNarc-Report.html'
    title = 'HTML Codenarc Report'
  }
}

codenarc.properties = {
  GrailsPublicControllerMethod.enabled = false
  GrailsDomainHasEquals.enabled = false
  GrailsDomainHasToString.enabled = false
  MisorderedStaticImports.comesBefore = false
  GrailsStatelessService.enabled = false
}
