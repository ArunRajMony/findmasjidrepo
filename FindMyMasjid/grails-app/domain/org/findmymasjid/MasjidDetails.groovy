package org.findmymasjid

import java.util.Date;
import java.util.Map;

class MasjidDetails {

	static mapWith = "mongo"

	static constraints = {

		masjidName nullable:false
		addressLine1 nullable:false
		addressLine2 nullable:false
		cityTown nullable:false
		district nullable:false
		pincode nullable:false, size:6..6, matches:"^[0-9]*"
		state nullable:false, inList:[
			'Tamil Nadu',
			'Kerala',
			'Andhra',
			'Karnataka'
		]
		country nullable:false, inList:['India']
		latitude nullable:true, matches:"^-?([1-8]?[1-9]|[1-9]0)\\.{1}\\d{1,6}"  // see http://www.regexlib.com/Search.aspx?k=latitude
		longitude nullable:true, matches: "^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\\.{1}\\d{1,6}"
		location nullable:true, display:false
		googleLocationLink nullable:true,widget:'textarea' ,  url:true //matches:"Reg = /^https?\\:\\/\\/(www\\.|maps\\.)?google(\\.[a-z]+){1,2}\\/maps\\/?\\?([^&]+&)*(ll=-?[0-9]{1,2}\\.[0-9]+,-?[0-9]{1,2}\\.[0-9]+|q=[^&]+)+(\$|&)/;"
		//TODO use regular expression for validating a proper google maps link and not just an "url:true"

		phone1 nullable:false , matches:"^[0-9]*" ,  size: 10..14
		phone2 nullable:true, matches:"^[0-9]*" , size: 10..14

		//capacity related
		numberOfFloors nullable:false , range:1..6
		canAccomodate nullable:false, inList:[
			'20',
			'40',
			'60',
			'80',
			'100',
			'125',
			'150',
			'175',
			'200',
			'250',
			'300',
			'350',
			'400',
			'450',
			'500',
			'600',
			'700',
			'800',
			'900',
			'1000',
			'1200',
			'1500'
		]
		twoWheelerParkingAvailable nullable:false, inList:['Yes', 'No']
		numberOfTwoWheelerParking nullable:false, min:0
		fourWheelerParkingAvailable nullable:false, inList:['Yes', 'No']
		numberOfFourWheelerParking nullable:false, min:0


		//more info
		masjidType nullable:false, inList:['Sunnathwal', 'Tauhid']
		//Photo TODO
		languageOfPrayer nulable:false , inList:[
			'Tamil',
			'Urdu',
			'Malayalam',
			'Kannada',
			'Telugu',
			'Hindi'
		]


		prayer_1_TimingsHour nullable:true, range:1..12
		prayer_1_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_1_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_1_Timings nullable:true, display:false

		prayer_2_TimingsHour nullable:true, range:1..12
		prayer_2_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_2_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_2_Timings nullable:true, display:false

		prayer_3_TimingsHour nullable:true, range:1..12
		prayer_3_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_3_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_3_Timings nullable:true, display:false

		prayer_4_TimingsHour nullable:true, range:1..12
		prayer_4_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_4_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_4_Timings nullable:true, display:false

		prayer_5_TimingsHour nullable:true, range:1..12
		prayer_5_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_5_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_5_Timings nullable:true, display:false


		prayer_FridayNoon_TimingsHour nullable:true, range:1..12
		prayer_FridayNoon_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_FridayNoon_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_FridayNoon_Timings nullable:true, display:false


		
		prayer_jummah_TimingsHour nullable:true, range:1..12
		prayer_jummah_TimingsMinutes nullable:true, inList:[
			00,
			05,
			10,
			15,
			20,
			25,
			30,
			35,
			40,
			45,
			50,
			55
		]
		prayer_jummah_TimingsAMPM nullable:true , inList:['AM', 'PM']
		prayer_jummah_Timings nullable:true, display:false



		//champion
		contactPersonName nullable:false
		contactPersonTelNumber nullable:false, matches:"^[0-9]*" , size: 10..14
		contactPersonEmail email:true , nullable:false
		//TODO Committee: Year:??

		//additional location details
		busStopName nullable:true
		nearestRailwayStation nullable:true
		landmark nullable:true , widget:'textarea'
		otherInfo nullable:true, widget:'textarea'

	}

	static mapping = {
		pincode index:true
		location geoIndex:'2d'
	}


	String masjidName
	String addressLine1
	String addressLine2
	String cityTown
	String district
	String pincode
	String state
	String country
	String latitude
	String longitude
	Map location  // http://grails.github.io/grails-data-mapping/mongodb/manual/guide/3.%20Mapping%20Domain%20Classes%20to%20MongoDB%20Collections.html#3.6.1%20Geospacial%202d%20Index%20Support
	String googleLocationLink

	String phone1
	String phone2

	//capacity related
	int numberOfFloors
	String canAccomodate
	String twoWheelerParkingAvailable
	int numberOfTwoWheelerParking
	String fourWheelerParkingAvailable
	int numberOfFourWheelerParking


	//more info
	String masjidType
	//Photo TODO
	String languageOfPrayer


	int prayer_1_TimingsHour
	int prayer_1_TimingsMinutes
	String prayer_1_TimingsAMPM
	String prayer_1_Timings

	int prayer_2_TimingsHour
	int prayer_2_TimingsMinutes
	String prayer_2_TimingsAMPM
	String prayer_2_Timings

	int prayer_3_TimingsHour
	int prayer_3_TimingsMinutes
	String prayer_3_TimingsAMPM
	String prayer_3_Timings

	int prayer_4_TimingsHour
	int prayer_4_TimingsMinutes
	String prayer_4_TimingsAMPM
	String prayer_4_Timings

	int prayer_5_TimingsHour
	int prayer_5_TimingsMinutes
	String prayer_5_TimingsAMPM
	String prayer_5_Timings

	int prayer_FridayNoon_TimingsHour
	int prayer_FridayNoon_TimingsMinutes
	String prayer_FridayNoon_TimingsAMPM
	String prayer_FridayNoon_Timings

	int prayer_jummah_TimingsHour
	int prayer_jummah_TimingsMinutes
	String prayer_jummah_TimingsAMPM
	String prayer_jummah_Timings


	//champion
	String contactPersonName
	String contactPersonTelNumber
	String contactPersonEmail
	//TODO Committee: Year:??

	//additional location details
	String busStopName
	String nearestRailwayStation
	String landmark
	String otherInfo



	/**
	 * derives the location from the lat/long input fields
	 * TODO : derive the location from the google link property if the lat/long is null and it is not
	 * @return
	 */
	Map getLocation(){
		def mapp = [:]
		if(latitude != null && longitude != null){
			double dLat = Double.valueOf(latitude).doubleValue()
			double dLong = Double.valueOf(longitude).doubleValue()
			mapp = ["lat" : dLat, "long": dLong]
		}
		return mapp
	}


	String getprayer_1_Timings(){
		return 	""+ prayer_1_TimingsHour + ":" + prayer_1_TimingsMinutes + " " + prayer_1_TimingsAMPM
	}

	String getprayer_2_Timings(){
		return 	""+ prayer_2_TimingsHour + ":" + prayer_2_TimingsMinutes + " " + prayer_2_TimingsAMPM
	}

	String getprayer_3_Timings(){
		return 	""+ prayer_3_TimingsHour + ":" + prayer_3_TimingsMinutes + " " + prayer_3_TimingsAMPM
	}

	String getprayer_4_Timings(){
		return 	""+ prayer_4_TimingsHour + ":" + prayer_4_TimingsMinutes + " " + prayer_4_TimingsAMPM
	}

	String getprayer_5_Timings(){
		return 	""+ prayer_5_TimingsHour + ":" + prayer_5_TimingsMinutes + " " + prayer_5_TimingsAMPM
	}

	String getprayer_FridayNoon_Timings(){
		return 	""+ prayer_FridayNoon_TimingsHour + ":" + prayer_FridayNoon_TimingsMinutes + " " + prayer_FridayNoon_TimingsAMPM
	}

	String getprayer_jummah_Timings(){
		return 	""+ prayer_jummah_TimingsHour + ":" + prayer_jummah_TimingsMinutes + " " + prayer_jummah_TimingsAMPM
	}

}
