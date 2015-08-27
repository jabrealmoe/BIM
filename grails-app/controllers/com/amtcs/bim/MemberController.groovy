package com.amtcs.bim

class MemberController {

    def index() {
        redirect(action:"registration")
    }
    def registration(){
        render (view: "registration")
    }
    def error(){
        render view: "error"
    }
    def success(){
        render view: "success"
    }
}
