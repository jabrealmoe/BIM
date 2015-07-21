package com.amtcs.businessidmanagementregistration

class Owner {

  String memberNumber
  String zipCode

  static constraints = {
    memberNumber size:3..12, blank:false, nullable:false, validator: { val, obj ->
      return toDigits(val)?.size() > 0 ? null : "invalid.subscriberNumber"
    }
    zipCode size:5..9, blank:false, nullable:false, validator: { val, obj ->
      def size = toDigits(val)?.size()
      if( size != 5 && size != 9 ) {
        return "invalid"
      }
      return null
    }
  }

  /**
   * Use this method to return the member number as a number without any
   * characters other than the number characters.
   * @return
   */
  public String getMemberNumber() {
    return memberNumber?.replaceAll("\\D+","")?.toLong()
  }

  private static String toDigits(String ssnInput) {
    return ssnInput?.replaceAll("[^0-9]", "")
  }
}
