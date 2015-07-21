package com.amtcs.businessidmanagementregistration

import java.text.MessageFormat

class OwnerController {

  static allowedMethods = [save:"POST", update:"POST", delete:"POST"]


  def registrationService

  def index() {

  }

  def alreadyRegistered(){
    view: "alreadyRegistered"
  }

  def notActive = { params ->

    view: "notActive"
  }
  def submitMemberInfo ={params ->
    params.zipCode = cleanupZipCode(params.zipCode)
    def owner = new Owner(params);
    owner.validate(  )

    if (owner.hasErrors(  )) {
      log.info( "This is a problem!" )
      render view:"error"
    }

    //Does Member zipcode match
    if(!registrationService.isMemberZipCodeMatch( owner.zipCode.toLong( ),owner.memberNumber )){
      render view:"notActive"
    }

    if (true){
      log.info("User id " + params.memberNumber + " is already registered!")
      render view: "alreadyregistered"
    }



  }

  def cleanMemberNumber = {subscriberNumber ->
    return subscriberNumber?.replaceAll("\\D+","")?.toLong()
  }

  def cleanupZipCode = {zipCode ->
    if (zipCode instanceof String){
      def cleanedup = zipCode.replaceAll( "[\\s\\-()]", "" ).substring( 0,5 )
     return cleanedup
    }
  }






}
