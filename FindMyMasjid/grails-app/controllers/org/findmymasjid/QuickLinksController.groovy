package org.findmymasjid



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuickLinksController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond QuickLinks.list(params), model:[quickLinksInstanceCount: QuickLinks.count()]
    }

    def show(QuickLinks quickLinksInstance) {
        respond quickLinksInstance
    }

    def create() {
		QuickLinks instance = new QuickLinks(params) 
		instance.activeFromDate  = new Date()
		instance.expiryDate  = new Date()
        respond instance
    }

    @Transactional
    def save(QuickLinks quickLinksInstance) {
        if (quickLinksInstance == null) {
            notFound()
            return
        }

        if (quickLinksInstance.hasErrors()) {
            respond quickLinksInstance.errors, view:'create'
            return
        }

        quickLinksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'quickLinks.label', default: 'QuickLinks'), quickLinksInstance.id])
                redirect quickLinksInstance
            }
            '*' { respond quickLinksInstance, [status: CREATED] }
        }
    }

    def edit(QuickLinks quickLinksInstance) {
        respond quickLinksInstance
    }

    @Transactional
    def update(QuickLinks quickLinksInstance) {
        if (quickLinksInstance == null) {
            notFound()
            return
        }

        if (quickLinksInstance.hasErrors()) {
            respond quickLinksInstance.errors, view:'edit'
            return
        }

        quickLinksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'QuickLinks.label', default: 'QuickLinks'), quickLinksInstance.id])
                redirect quickLinksInstance
            }
            '*'{ respond quickLinksInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(QuickLinks quickLinksInstance) {

        if (quickLinksInstance == null) {
            notFound()
            return
        }

        quickLinksInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'QuickLinks.label', default: 'QuickLinks'), quickLinksInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'quickLinks.label', default: 'QuickLinks'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
