// Place your Spring DSL code here
import com.cppna.b2bintegration.csid.web.client.request.CsidRequestFactory
import com.cppna.b2bservices.common.dao.jdbc.ApplicationLoggingDAOImpl
import com.cppna.b2bservices.common.service.impl.ApplicationLoggingServiceImpl
import com.cppna.common.dao.jdbc.CustomerDAOImpl
import com.cppna.common.dao.jdbc.MembershipCompanyDAOImpl
import com.cppna.common.dao.jdbc.MembershipDAOImpl
import com.cppna.common.dao.jdbc.MembershipEventDAOImpl
import com.cppna.common.dao.jdbc.ProductCodeDAOImpl
import com.cppna.common.dao.jdbc.ProductDAOImpl
import com.cppna.common.dao.jdbc.StateDAOImpl
import com.cppna.common.dao.jdbc.ThirdPartyServicesDAOImpl
import com.cppna.common.dao.support.MembershipClientSpecificCreator
import com.cppna.common.dao.support.MembershipCreator
import com.cppna.common.dao.support.MembershipDAOFindHelper
import com.cppna.common.dao.support.MembershipNoteCreator
import com.cppna.common.dao.support.MembershipTermAccountChannelCreator
import com.cppna.common.dao.support.MembershipTermCreator
import com.cppna.common.service.impl.CustomerServiceImpl
import com.cppna.common.service.impl.MembershipEventServiceImpl
import com.cppna.common.service.impl.ProductCodeServiceImpl
import com.cppna.common.service.impl.ProductServiceImpl
import com.cppna.common.service.impl.ThirdPartyServicesServiceImpl
import com.amtcs.businessidmanagementregistration.bim.SubscriberLoadRequestBuilder
import grails.util.Environment
import org.springframework.jdbc.core.JdbcTemplate
import org.springframework.jdbc.support.lob.OracleLobHandler
import org.springframework.jdbc.support.nativejdbc.JBossNativeJdbcExtractor
import org.springframework.jdbc.support.nativejdbc.SimpleNativeJdbcExtractor
import uk.co.cpp.dbcall.feebase.functions.Put3partyUserTranAndClose
import uk.co.cpp.dbcall.feebase.memberthirdpartyservice.ActivateMembership
import uk.co.cpp.util.acs.ACSBackedMap

// Place your Spring DSL code here
beans = {

  // set up XML logging to the DB. We don't want JBoss dependency in development
  switch ( Environment.current ) {
    case Environment.PRODUCTION:
      nativeJdbcExtractor( JBossNativeJdbcExtractor ) {}
      break
    case Environment.DEVELOPMENT:
    case Environment.TEST:
      nativeJdbcExtractor( SimpleNativeJdbcExtractor ) {}
  }

  applicationLoggingService( ApplicationLoggingServiceImpl ) {
    applicationLoggingDAO = ref( "applicationLoggingDAO" )
  }

  lobHandler( OracleLobHandler ) {
    nativeJdbcExtractor = ref( "nativeJdbcExtractor" )
  }

  applicationLoggingDAO( ApplicationLoggingDAOImpl ) {
    dataSource = ref( "dataSource" )
    lobHandler = ref( "lobHandler" )
  }

  csidRequestFactory( CsidRequestFactory, ref( 'csidResourceMap' ) )

  // database based config data
  csidResourceMap( ACSBackedMap, ref( 'dataSource_wlsdb' ), 'NAB2B_THIRD_PARTY_SERVICE', 'CSIDFBS_COMMS_INFO' ) {}

  // NAServices project data

  putThirdPartyUserTranAndClose( Put3partyUserTranAndClose, ref( "dataSource" ) ) {}

  customerService( CustomerServiceImpl ) {
    customerDAO = ref( "customerDAO" )
  }

  customerDAO( CustomerDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  /* -----------------------------------------*/
  membershipService( com.cppna.common.service.impl.MembershipServiceImpl ) {
    membershipDAO = ref( "membershipDAO" )
    membershipCompanyServiceDelegate = ref( "membershipCompanyServiceDelegate" )
  }

  membershipDAO( MembershipDAOImpl ) {
    dataSource = ref( "dataSource" )
    findHelper = ref( 'findHelper' )
    membershipClientSpecificCreator = new MembershipClientSpecificCreator()
    membershipNoteCreator = new MembershipNoteCreator()
    membershipTermAccountChannelCreator = new MembershipTermAccountChannelCreator()
    membershipTermCreator = new MembershipTermCreator()
    membershipCreator = new MembershipCreator()
  }

  findHelper( MembershipDAOFindHelper ) {
    jdbcTemplate = ref( "jdbcTemplate" )
  }

  jdbcTemplate( JdbcTemplate ) {
    dataSource = ref( "dataSource" )
  }
  stateDAO( StateDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  membershipCompanyDAO( MembershipCompanyDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  membershipCompanyServiceDelegate( com.cppna.common.dao.support.MembershipCompanyServiceDelegate ) {
    stateDAO = ref( "stateDAO" )
    membershipCompanyDAO = ref( "membershipCompanyDAO" )
  }

  breachVerificationDAO( com.cppna.common.dao.jdbc.BreachVerificationDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  breachVerificationService( com.cppna.common.service.impl.BreachVerificationServiceImpl ) {
    breachVerificationDAO = ref( "breachVerificationDAO" )
  }
  /* -----------------------------------------*/

  productService( ProductServiceImpl ) {
    productDAO = ref( "productDAO" )
  }

  productDAO( ProductDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  thirdPartyServicesService( ThirdPartyServicesServiceImpl ) {
    thirdPartyServicesDAO = ref( "thirdPartyServicesDAO" )
  }

  thirdPartyServicesDAO( ThirdPartyServicesDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  membershipEventService( MembershipEventServiceImpl ) {
    membershipEventDAO = ref( "membershipEventDAO" )
  }

  membershipEventDAO( MembershipEventDAOImpl ) {
    dataSource = ref( "dataSource" )
    put3partyUserTranAndCloseDBCall = ref( "putThirdPartyUserTranAndClose" )
  }

  productCodeService( ProductCodeServiceImpl ) {
    productCodeDAO = ref( "productCodeDAO" )
  }

  productCodeDAO( ProductCodeDAOImpl ) {
    dataSource = ref( "dataSource" )
  }

  //FeeBased project service
  activateMembership( ActivateMembership, ref( "dataSource" ) ) {}

  //Internal beans
  subscriberLoadRequestBuilder( SubscriberLoadRequestBuilder ) {
    dbSequenceService = ref( "dbSequenceService" )
    csidRequestFactory = ref( "csidRequestFactory" )
    productCodeService = ref( "productCodeService" )
    thirdPartyServicesService = ref( "thirdPartyServicesService" )
    memberTypeService = ref( "memberTypeService" )
  }
}
