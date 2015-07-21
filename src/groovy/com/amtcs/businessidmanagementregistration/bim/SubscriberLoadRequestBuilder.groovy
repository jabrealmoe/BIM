package com.amtcs.businessidmanagementregistration.bim

import com.cppna.b2bintegration.csid.web.client.request.CsidRequestFactory
import com.cppna.b2bintegration.csid.web.client.request.SubscriberLoadRequest
import com.cppna.common.domain.SimpleFeeBasedProductCode
import com.cppna.common.service.ProductCodeService
import com.cppna.common.service.ThirdPartyServicesService
import org.apache.commons.logging.Log
import org.apache.commons.logging.LogFactory

import com.amtcs.businessidmanagementregistration.MemberTypeService

import com.amtcs.businessidmanagementregistration.DbSequenceService

/**
 * TODO Please insert class description here.
 *
 * Copyright (c) 2015 CPP Group Plc. All Rights Reserved.
 *
 * @author 17385
 */
class SubscriberLoadRequestBuilder {
  def DbSequenceService dbSequenceService
  def CsidRequestFactory csidRequestFactory
  def ProductCodeService productCodeService
  def ThirdPartyServicesService thirdPartyServicesService
  def String SERVICE_TYPE = "CRMONITOR"

  def MemberTypeService memberTypeService

  private final static Log LOG = LogFactory.getLog(SubscriberLoadRequestBuilder.class);

  def SubscriberLoadRequest buildSubscriberLoadRequest(MembershipData membershipData, String ssn, Date dob) {

    LOG.debug("Building SubscriberLoadRequest for memberNumber: $membershipData.memberNumber")

    SubscriberLoadRequest request = csidRequestFactory.createSubscriberLoadRequest();

    LOG.debug("Recieved SubscriberLoadRequest from factory.")

    request.setSSN(ssn)
    request.setDOB(dob)

    request.traceNumber = dbSequenceService.nextTraceNumber?.toString()

    request.setLogMessage(true)

    request.firstName = membershipData.firstName
    request.lastName = membershipData.lastName
    request.middleInitial = membershipData.middleName?.substring(0, 1)

    request.emailAddress = membershipData.emailAddress
    request.telephone = membershipData.phoneNumber

    request.address1 = membershipData.address?.addressLineOne
    request.address2 = membershipData.address?.addressLineTwo
    request.city = membershipData.address?.city
    request.state = membershipData.address?.stateCode
    String zipCode = membershipData.address?.zipCode
    request.zipCode = zipCode.substring(0, Math.min(5, zipCode.length()))

    updateRequestWithCsidPartnerAndType(request, membershipData.membershipId)

    request.subscriberNumber = memberTypeService.getMemberType(membershipData.memberNumber) + String.valueOf(membershipData.memberNumber)

    LOG.debug("Finished building SubscriberLoadRequest for subscriberNumber:  $request.subscriberNumber ")
    return request
  }

  /**
   * This is overrides the defaults that come from the CsidRequestFactory for the CsidPartnerNumber and
   * CsidProductType. This code is also in the b2b-csid-integration project.
   *
   * @param request SubscriberLoadRequest - writes to the partnerNumber and productType fields
   * @param membershipId used to get find partnerNumber and productType
   */
  def updateRequestWithCsidPartnerAndType(final SubscriberLoadRequest request, final long membershipId) {

    LOG.debug("Looking up product code from membershipId: $membershipId");
    final String productCodeId = productCodeService.findOriginalProductCodeForMembership(membershipId)

    LOG.debug("Looking for CSID Product Code from productCode: $productCodeId")
    final SimpleFeeBasedProductCode productCode = productCodeService.findSimpleFeeBasedProductCode(productCodeId)
    final Long clientId = productCode?.client?.id
    final String categoryCode = productCode?.productCategory?.categoryCode
    final String productId = productCode?.productCategory?.product?.id  // memberType

    LOG.debug("Looking for CSID Partner Number and Product Type. Using clientId: $clientId, productId: $productId, categoryCode: $categoryCode, SERVICE_TYPE: $SERVICE_TYPE")
    final String partnerNumber = thirdPartyServicesService.getCsidPartnerNumber(clientId ?: 0L, SERVICE_TYPE)
    final String productType = thirdPartyServicesService.getCsidProductType(productId, categoryCode, SERVICE_TYPE)

    LOG.debug("For membershipId: $membershipId, using partnerNumber: $partnerNumber, productType: $productType")
    request.setPartnerNumber(partnerNumber)
    request.setProductType(productType)
  }
}
