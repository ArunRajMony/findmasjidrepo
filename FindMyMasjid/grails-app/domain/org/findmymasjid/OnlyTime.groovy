package org.findmymasjid

class OnlyTime {

	static mapWith = "mongo"
	
    static constraints = {
		hour nullable:true, inList:['01','02','03','04','05','06','07','09','09','10','11','12']
		minutes nullable:true , inList:['00','05','10','15','20','25','30','35','40','45','50','55']
		ampm nullable:true, inList:['AM','PM']
    }
	
	String hour
	String minutes
	String ampm
	
	
}
