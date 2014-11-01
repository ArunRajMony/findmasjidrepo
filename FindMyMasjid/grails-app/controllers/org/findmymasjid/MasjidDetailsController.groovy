package org.findmymasjid



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MasjidDetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MasjidDetails.list(params), model:[masjidDetailsInstanceCount: MasjidDetails.count()]
    }

    def show(MasjidDetails masjidDetailsInstance) {
        respond masjidDetailsInstance
    }

    def create() {
        respond new MasjidDetails(params)
    }

    @Transactional
    def save(MasjidDetails masjidDetailsInstance) {
        if (masjidDetailsInstance == null) {
            notFound()
            return
        }

        if (masjidDetailsInstance.hasErrors()) {
			println "has errors"
            respond masjidDetailsInstance.errors, view:'create'
            return
        }

        masjidDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'masjidDetails.label', default: 'MasjidDetails'), masjidDetailsInstance.id])
                redirect masjidDetailsInstance
            }
            '*' { respond masjidDetailsInstance, [status: CREATED] }
        }
    }

    def edit(MasjidDetails masjidDetailsInstance) {
        respond masjidDetailsInstance
    }

    @Transactional
    def update(MasjidDetails masjidDetailsInstance) {
        if (masjidDetailsInstance == null) {
            notFound()
            return
        }

        if (masjidDetailsInstance.hasErrors()) {
            respond masjidDetailsInstance.errors, view:'edit'
            return
        }

        masjidDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MasjidDetails.label', default: 'MasjidDetails'), masjidDetailsInstance.id])
                redirect masjidDetailsInstance
            }
            '*'{ respond masjidDetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MasjidDetails masjidDetailsInstance) {

        if (masjidDetailsInstance == null) {
            notFound()
            return
        }

        masjidDetailsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MasjidDetails.label', default: 'MasjidDetails'), masjidDetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'masjidDetails.label', default: 'MasjidDetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
