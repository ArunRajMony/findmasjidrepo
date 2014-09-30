package findmymasjid



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MasjidMasterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MasjidMaster.list(params), model:[masjidMasterInstanceCount: MasjidMaster.count()]
    }

    def show(MasjidMaster masjidMasterInstance) {
        respond masjidMasterInstance
    }

    def create() {
        respond new MasjidMaster(params)
    }

    @Transactional
    def save(MasjidMaster masjidMasterInstance) {
        if (masjidMasterInstance == null) {
            notFound()
            return
        }

        if (masjidMasterInstance.hasErrors()) {
            respond masjidMasterInstance.errors, view:'create'
            return
        }

        masjidMasterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'masjidMaster.label', default: 'MasjidMaster'), masjidMasterInstance.id])
                redirect masjidMasterInstance
            }
            '*' { respond masjidMasterInstance, [status: CREATED] }
        }
    }

    def edit(MasjidMaster masjidMasterInstance) {
        respond masjidMasterInstance
    }

    @Transactional
    def update(MasjidMaster masjidMasterInstance) {
        if (masjidMasterInstance == null) {
            notFound()
            return
        }

        if (masjidMasterInstance.hasErrors()) {
            respond masjidMasterInstance.errors, view:'edit'
            return
        }

        masjidMasterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MasjidMaster.label', default: 'MasjidMaster'), masjidMasterInstance.id])
                redirect masjidMasterInstance
            }
            '*'{ respond masjidMasterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MasjidMaster masjidMasterInstance) {

        if (masjidMasterInstance == null) {
            notFound()
            return
        }

        masjidMasterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MasjidMaster.label', default: 'MasjidMaster'), masjidMasterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'masjidMaster.label', default: 'MasjidMaster'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
