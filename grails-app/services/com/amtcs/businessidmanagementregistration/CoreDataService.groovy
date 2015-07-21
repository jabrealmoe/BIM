package com.amtcs.businessidmanagementregistration

import com.amtcsbusinessidmanagementregistration.web.bim.exception.MissingDataException
import com.cppna.common.domain.Address
import com.cppna.common.domain.AlternateMembershipId
import com.cppna.common.domain.Customer
import com.cppna.common.domain.MembershipThirdPartyServices
import com.cppna.common.domain.MembershipTransactionEventDetail
import com.cppna.common.domain.Phone
import com.cppna.common.domain.Product
import com.cppna.common.domain.ThirdPartyService
import com.cppna.common.domain.enums.AddressType
import com.cppna.common.domain.enums.MembershipStatus
import com.cppna.common.domain.enums.PhoneType
import com.cppna.common.service.CustomerService
import com.cppna.common.service.MembershipEventService
import com.cppna.common.service.MembershipService
import com.cppna.common.service.ProductService
import com.cppna.common.service.ThirdPartyServicesService
import org.springframework.beans.factory.annotation.Value
import com.cppna.common.service.ProductCodeService
import com.cppna.common.domain.SimpleFeeBasedProductCode

import com.amtcsbusinessidmanagementregistration.bim.MembershipData

class CoreDataService {

    @Value( "#{grailsApplication.config.app.registration.servicetype}" )
    def String servicetype

//  @Value( "#{grailsApplication.config.app.registration.membertype}" )
//  def String memberType

    @Value( "#{grailsApplication.config.app.registration.userid}" )
    def String userId

    @Value( "#{grailsApplication.config.app.registration.transactioncode}" )
    def String transactionCode

    @Value( "#{grailsApplication.config.app.registration.program}" )
    def String program


    def ProductService productService
    def MembershipService membershipService
    def CustomerService customerService
    def ThirdPartyServicesService thirdPartyServicesService
    def MembershipEventService membershipEventService
    def MemberTypeService memberTypeService
    def ProductCodeService productCodeService


    /**
     * Use the CPPNA Product and Membership Service to find a MembershipStatus.
     *
     * @param memberNumber
     * @return MembershipStatus - Null means not found.
     */
    def MembershipStatus getMembershipStatus( final long memberNumber ) {

        MembershipStatus status = null;

        final String memberType = memberTypeService.getMemberType(memberNumber)

        final Product product = productService.findProduct(memberType) ;

        if ( product != null ) {
            status = membershipService.findMembershipStatus( product, memberNumber );
        }
        else {
            log.warn( "Product not found for memberType $memberType" );
        }
        return status;
    }

    /**
     * Uses the CPPNA MembershipService and CustomerService to look up an address for a member id.
     *
     * @param memberNumber
     * @return zipcode
     */
    def String retrieveZipCodeForMember( final long memberNumber ) {

        Customer customer = null
        Address address = null
        String existingZipCode = null

        final Long membershipId = getMembershipId( memberNumber )

        if ( membershipId != null ) {
            customer = customerService.findCustomer( membershipId )

            if ( customer == null ) {
                log.warn( "Customer not found for membershipId: $membershipId" )
            }
            else {
                address = customerService.findCurrentAddress( customer.getId(), AddressType.MailingAddress )

                if ( address == null ) {
                    log.warn( "Mailing address not found for customerId: ${customer.getId()}" )
                }
                else {
                    existingZipCode = address.getZipCode()
                }
            }
        }
        return existingZipCode
    }

    /**
     * Uses ThirdPartyServicesService to query for any third party services records for CSID
     *
     * @param memberNumber
     * @return
     */
    def ThirdPartyService getThirdPartyService( final long memberNumber ) {

        ThirdPartyService thirdPartyService = null

        if ( memberNumber != null ) {
            MembershipThirdPartyServices membershipThirdPartyService =
                thirdPartyServicesService.getThirdPartyServicesForMembership( memberNumber, memberTypeService.getMemberType(memberNumber) )

            if ( membershipThirdPartyService == null ) {
                log.debug( "No third party services found for memberNumber: $memberNumber" )
            }
            else {
                log.debug( "Some third party services found for memberNumber: $memberNumber" )
                thirdPartyService = membershipThirdPartyService.getServiceByServiceType( servicetype )
            }
        }
        return thirdPartyService;
    }

    def String getCsidPartnerNumber( final long clientNumber ) {

        final String partnerNumber = thirdPartyServicesService.getCsidPartnerNumber( clientNumber, servicetype  )

        return partnerNumber
    }

    def Long getMembershipId( final long memberNumber ) {

        final AlternateMembershipId alternateMembershipId = new AlternateMembershipId()
        alternateMembershipId.setMembershipNumber( memberNumber )
        alternateMembershipId.setProductId( memberTypeService.getMemberType(memberNumber) )

        Long membershipId = membershipService.findMembershipId( alternateMembershipId )

        if ( membershipId == null ) {
            log.debug( "Membership not found for memberNumber: $memberNumber" )
        }
        else {
            log.debug( "Membership $membershipId found for memberNumber: $memberNumber" )
        }
        return membershipId
    }

    def MembershipData getMembershipData( final long memberNumber ) {

        log.debug( "Looking up membership data for memberNumber: $memberNumber" )

        MembershipData data = new MembershipData()
        data.memberNumber = memberNumber

        final Long membershipId = getMembershipId( memberNumber )

        if ( membershipId == null ) {
            throw new MissingDataException( "Membership Id not found for member number: $memberNumber" )
        }
        data.membershipId = membershipId

        Customer customer = customerService.findCustomer( membershipId )
        if ( customer == null ) {
            throw new MissingDataException( "Customer not found for membershipId: $membershipId" )
        }
        else {
            log.debug( "Found customer: ${customer.firstName} for membershipId $membershipId" )
        }
        data.firstName = customer.firstName
        data.middleName = customer.middleName
        data.lastName = customer.lastName

        Address address = customerService.findCurrentAddress( customer.getId(), AddressType.MailingAddress )
        if ( address == null ) {
            throw new MissingDataException( "Mailing address not found for customerId: ${customer.getId()}" )
        }
        else {
            log.debug( "Found mailing address for customerId: ${customer.getId()}" )
        }
        data.address = address

        Phone phone = customerService.findPhone( customer.getId(), PhoneType.Home )
        if ( phone?.phoneNumber == null ) {
            phone = customerService.findPhone( customer.getId(), PhoneType.CellPhone )
        }
        if ( phone?.phoneNumber != null ) {
            data.phoneNumber = phone.phoneAreaCode + phone.phoneNumber
        }
        if ( data.phoneNumber != null ) {
            log.debug( "Found phone number for customerId: ${customer.getId()}" )
        }
        String email = membershipService.findEmailAddress( membershipId )
        if ( email == null ) {
            throw new MissingDataException( "Email address not found for membershipId: $membershipId" )
        }
        log.debug( "Found email: $email for membershipId: $membershipId" )

        data.emailAddress = email
        return data
    }

    def Long createMembershipTransactionEvent( final long memberNumber ) {
        log.debug("Creating transaction event for memberNumber: $memberNumber")
        MembershipTransactionEventDetail detail = new MembershipTransactionEventDetail()
        detail.memberNumber = memberNumber
        detail.memberType = memberTypeService.getMemberType(memberNumber)
        detail.programName = program
        detail.userId = userId
        detail.thirdPartyReasonCode = transactionCode
        return membershipEventService.createTransactionEvent( detail, program )
    }

    String getCsidLandingUrlFromMembershipData(MembershipData memberData) {
        String productCodeId = productCodeService.findOriginalProductCodeForMembership(memberData.membershipId)
        assert productCodeId : "Product ID code is null!"
        SimpleFeeBasedProductCode productCode = productCodeService.findSimpleFeeBasedProductCode(productCodeId?:"")
        Long clientId = productCode?.client?.id
        if ( thirdPartyServicesService.getCsidLandingUrl(clientId, servicetype) == null ) {
            log.warn( "CSID URL not found for client: $clientId" )
        }
        return thirdPartyServicesService.getCsidLandingUrl(clientId, servicetype);
    }

}
