package findmymasjid

class MasjidMaster {

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
		googleLocationLink nullable:false,widget:'textarea' ,  url:true //matches:"Reg = /^https?\\:\\/\\/(www\\.|maps\\.)?google(\\.[a-z]+){1,2}\\/maps\\/?\\?([^&]+&)*(ll=-?[0-9]{1,2}\\.[0-9]+,-?[0-9]{1,2}\\.[0-9]+|q=[^&]+)+(\$|&)/;"
		  //TODO use regular expression for validating a proper google maps link and not just an URI

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

		prayerTimings1 nullable:false, format:'yyyy-MM'
		prayerTimings2 nullable:false
		prayerTimings3 nullable:true
		prayerTimings4 nullable:true
		prayerTimings5 nullable:true
		prayerTimings6 nullable:true

		prayerTimingsFridayNoon nullable:false
		jummahTime nullable:false


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

	Date prayerTimings1
	Date prayerTimings2
	Date prayerTimings3
	Date prayerTimings4
	Date prayerTimings5
	Date prayerTimings6

	Date prayerTimingsFridayNoon
	Date jummahTime


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



}