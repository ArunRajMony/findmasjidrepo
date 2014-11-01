dataSource {
	pooled = true
	jmxExport = true
	driverClassName = "org.h2.Driver"
	username = "sa"
	password = ""
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = false
	//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
	cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
	singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {

	development {
		grails {
			mongo {
				host = "localhost"
				port = 27017
				//username = "root"
				//password = ""
				databaseName = "FindMyMasjid"

				options {
					autoConnectRetry = true
					connectTimeout = 300
				}
			}
		}

		staging {
			grails {
				mongo {
					host = "localhost"
					port = 27017
					//username = "root"
					//password = ""
					databaseName = "FindMyMasjid"

					options {
						autoConnectRetry = true
						connectTimeout = 300
					}
				}
			}


		}
	}
}
