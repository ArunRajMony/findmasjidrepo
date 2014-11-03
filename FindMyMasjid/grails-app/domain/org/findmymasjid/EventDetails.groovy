package org.findmymasjid

import org.joda.time.Chronology
import org.joda.time.LocalDate
import org.joda.time.chrono.ISOChronology
import org.joda.time.chrono.IslamicChronology

class EventDetails {


	static mapWith = "mongo"

	static embedded = ['eventStartTime','eventEndTime']
	
	static mapping = {
		eventDate index:true
		city index:true
		pinCode index:true
	}

	static constraints = {
		eventName nullable:false
		organizerName nullable:false

		eventDate nullable:false
		eventDateHijriCalendar nullable:true

		eventStartTime nullable:true, display:false
		eventEndTime nullable:true, display:false

		city nullable:false
		subLocality nullable:false
		addressOne nullable:false
		addressTwo nullable:true
		pinCode nullable:false, size:6..6, matches:"^[0-9]*"

		additionalDetails nullable:true, widget:'textarea'
	}

	String eventName
	String organizerName

	Date eventDate
	transient String eventDateHijriCalendar


	OnlyTime eventStartTime
	OnlyTime eventEndTime

	String city
	String subLocality
	String addressOne
	String addressTwo
	String pinCode

	String additionalDetails




	String getEventDateHijriCalendar(){
		if(eventDate == null)
			return ""

		Chronology iso = ISOChronology.getInstanceUTC()
		Chronology hijri = IslamicChronology.getInstanceUTC()

		Calendar cal = Calendar.getInstance()
		cal.setTime(eventDate)

		LocalDate eventDateIso = new LocalDate(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH), iso);
		LocalDate eventDateHijri = new LocalDate(eventDateIso.toDateTimeAtStartOfDay(),
				hijri)

		return eventDateHijri
	}
	
	
}
