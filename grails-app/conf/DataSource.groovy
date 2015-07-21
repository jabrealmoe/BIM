hibernate {
  cache.use_second_level_cache = true
  cache.use_query_cache = false
  cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
  validator.apply_to_ddl = false
  validator.autoregister_listeners = false
  dialect = "org.hibernate.dialect.Oracle9iDialect"
}

def commonConfigStandalone = {
  pooled = true
  driverClassName = "oracle.jdbc.driver.OracleDriver"
  dialect = "org.hibernate.dialect.Oracle9iDialect"
  dbCreate = "validate"
}

def configStandaloneFbsdev = {
  commonConfigStandalone()
  username = "JP"
  password = "JP"
  url = "jdbc:oracle:thin:@//dev-oraacs01.amtrustservices.com:1521/AMTDEV"
}

def configStandaloneWlsdb = {
  commonConfigStandalone()
  username = "WLSDB"
  password = "SLsEbHAgBuOVADSPIq18"
  url = "jdbc:oracle:thin:@//dev-oraacs01.amtrustservices.com:1521/AMTDEV"
}


environments {
  development {
    dataSource {
      configStandaloneFbsdev()
    }
    dataSource_wlsdb {
      configStandaloneWlsdb()
    }
  }
  test {
    dataSource {
      configStandaloneFbsdev()
    }
    dataSource_wlsdb {
      configStandaloneWlsdb()
    }
  }
  production {
    dataSource {
      dbCreate = "validate"
      jndiName = "cpp.jdbc.MemberAreaFBSDatasource"
    }
    dataSource_wlsdb {
      dbCreate = "validate"
      jndiName = "cpp.jdbc.WlsdbXADatasource"
    }
  }
}
