package org.findmymasjid

class QuickLinks {

	static mapWith = "mongo"
	
	static mapping = {
		score index:true
		activeFromDate index:true
		expiryDate index:true
	}

	
    static constraints = {
		
		title nullable:false
		uriLink nullable:false, url:true 
		
		score nullable:false, range:1..10
		
		shortDesc nullable:true
		longDesc nullable:true, widget:'textarea'
		
		activeFromDate nullable:false
		expiryDate  nullable:false 
    }
	
	String title
	String uriLink
	
	int score //shall determine the order of the appearance of the link
	
	String shortDesc
	String longDesc
	
	Date activeFromDate
	Date expiryDate
	
	
	
}
