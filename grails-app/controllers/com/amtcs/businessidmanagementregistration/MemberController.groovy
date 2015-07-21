package com.amtcs.businessidmanagementregistration

class MemberController {

  def index() {
    render( view:"memberRegistration" )
  }

  def save(){
    def registration = new Registration(params)
    registration.save(  )
    redirect( controller:"member", action:"index", model:registration )
  }

  def error(){
    render view: "error"
  }
  def success(){
    render view: "success"
  }

  def registerMember ={params ->

    if (params.dob !=null) {
      params.dob = new Date().parse( "dd/MM/yyyy", params.dob )
    }
    def registration = new Registration(params)
    registration.save(  )

    render "Hello Registrate"
  }


}
