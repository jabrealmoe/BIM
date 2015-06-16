package com.amtcs.bim



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OwnerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
    }

}
