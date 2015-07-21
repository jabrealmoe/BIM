package com.amtcs.businessidmanagementregistration

import org.apache.commons.lang.StringUtils

class RegistrationService {

    def coreDataService

    def isMemberZipCodeMatch( Long memberNumber, String zipcodeToTest ) {
        if ( memberNumber == null || zipcodeToTest == null ) {
            return false
        }
        String existingZipCode = coreDataService.retrieveZipCodeForMember( memberNumber );

        String existingZipCodeTruncated = StringUtils.substring( existingZipCode, 0, 5 );
        String zipCodeToTestTruncated = StringUtils.substring( zipcodeToTest, 0, 5 );

        return StringUtils.equals( existingZipCodeTruncated, zipCodeToTestTruncated );
    }
}
