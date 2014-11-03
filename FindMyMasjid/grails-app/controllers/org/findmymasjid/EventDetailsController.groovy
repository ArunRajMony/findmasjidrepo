package org.findmymasjid



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventDetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EventDetails.list(params), model:[eventDetailsInstanceCount: EventDetails.count()]
    }

    def show(EventDetails eventDetailsInstance) {
        respond eventDetailsInstance
    }

    def create() {
		EventDetails eventDetailsInstance =new EventDetails(params)
		eventDetailsInstance.eventStartTime = new OnlyTime()
		eventDetailsInstance.eventEndTime = new OnlyTime()
		
        respond eventDetailsInstance
    }

    @Transactional
    def save(EventDetails eventDetailsInstance) {
        if (eventDetailsInstance == null) {
            notFound()
            return
        }

        if (eventDetailsInstance.hasErrors()) {
            respond eventDetailsInstance.errors, view:'create'
            return
        }

        eventDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'eventDetails.label', default: 'EventDetails'), eventDetailsInstance.id])
                redirect eventDetailsInstance
            }
            '*' { respond eventDetailsInstance, [status: CREATED] }
        }
    }

    def edit(EventDetails eventDetailsInstance) {
        respond eventDetailsInstance
    }

    @Transactional
    def update(EventDetails eventDetailsInstance) {
        if (eventDetailsInstance == null) {
            notFound()
            return
        }

        if (eventDetailsInstance.hasErrors()) {
            respond eventDetailsInstance.errors, view:'edit'
            return
        }

        eventDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EventDetails.label', default: 'EventDetails'), eventDetailsInstance.id])
                redirect eventDetailsInstance
            }
            '*'{ respond eventDetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EventDetails eventDetailsInstance) {

        if (eventDetailsInstance == null) {
            notFound()
            return
        }

        eventDetailsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EventDetails.label', default: 'EventDetails'), eventDetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'eventDetails.label', default: 'EventDetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
