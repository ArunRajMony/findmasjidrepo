
<%@ page import="org.findmymasjid.MasjidDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'masjidDetails.label', default: 'MasjidDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-masjidDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-masjidDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list masjidDetails">
			
				<g:if test="${masjidDetailsInstance?.masjidName}">
				<li class="fieldcontain">
					<span id="masjidName-label" class="property-label"><g:message code="masjidDetails.masjidName.label" default="Masjid Name" /></span>
					
						<span class="property-value" aria-labelledby="masjidName-label"><g:fieldValue bean="${masjidDetailsInstance}" field="masjidName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="masjidDetails.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${masjidDetailsInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="masjidDetails.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${masjidDetailsInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.cityTown}">
				<li class="fieldcontain">
					<span id="cityTown-label" class="property-label"><g:message code="masjidDetails.cityTown.label" default="City Town" /></span>
					
						<span class="property-value" aria-labelledby="cityTown-label"><g:fieldValue bean="${masjidDetailsInstance}" field="cityTown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="masjidDetails.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${masjidDetailsInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.pincode}">
				<li class="fieldcontain">
					<span id="pincode-label" class="property-label"><g:message code="masjidDetails.pincode.label" default="Pincode" /></span>
					
						<span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${masjidDetailsInstance}" field="pincode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="masjidDetails.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${masjidDetailsInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="masjidDetails.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${masjidDetailsInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="masjidDetails.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${masjidDetailsInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="masjidDetails.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${masjidDetailsInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.googleLocationLink}">
				<li class="fieldcontain">
					<span id="googleLocationLink-label" class="property-label"><g:message code="masjidDetails.googleLocationLink.label" default="Google Location Link" /></span>
					
						<span class="property-value" aria-labelledby="googleLocationLink-label"><g:fieldValue bean="${masjidDetailsInstance}" field="googleLocationLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="masjidDetails.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${masjidDetailsInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="masjidDetails.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${masjidDetailsInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.numberOfFloors}">
				<li class="fieldcontain">
					<span id="numberOfFloors-label" class="property-label"><g:message code="masjidDetails.numberOfFloors.label" default="Number Of Floors" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFloors-label"><g:fieldValue bean="${masjidDetailsInstance}" field="numberOfFloors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.canAccomodate}">
				<li class="fieldcontain">
					<span id="canAccomodate-label" class="property-label"><g:message code="masjidDetails.canAccomodate.label" default="Can Accomodate" /></span>
					
						<span class="property-value" aria-labelledby="canAccomodate-label"><g:fieldValue bean="${masjidDetailsInstance}" field="canAccomodate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.twoWheelerParkingAvailable}">
				<li class="fieldcontain">
					<span id="twoWheelerParkingAvailable-label" class="property-label"><g:message code="masjidDetails.twoWheelerParkingAvailable.label" default="Two Wheeler Parking Available" /></span>
					
						<span class="property-value" aria-labelledby="twoWheelerParkingAvailable-label"><g:fieldValue bean="${masjidDetailsInstance}" field="twoWheelerParkingAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.numberOfTwoWheelerParking}">
				<li class="fieldcontain">
					<span id="numberOfTwoWheelerParking-label" class="property-label"><g:message code="masjidDetails.numberOfTwoWheelerParking.label" default="Number Of Two Wheeler Parking" /></span>
					
						<span class="property-value" aria-labelledby="numberOfTwoWheelerParking-label"><g:fieldValue bean="${masjidDetailsInstance}" field="numberOfTwoWheelerParking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.fourWheelerParkingAvailable}">
				<li class="fieldcontain">
					<span id="fourWheelerParkingAvailable-label" class="property-label"><g:message code="masjidDetails.fourWheelerParkingAvailable.label" default="Four Wheeler Parking Available" /></span>
					
						<span class="property-value" aria-labelledby="fourWheelerParkingAvailable-label"><g:fieldValue bean="${masjidDetailsInstance}" field="fourWheelerParkingAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.numberOfFourWheelerParking}">
				<li class="fieldcontain">
					<span id="numberOfFourWheelerParking-label" class="property-label"><g:message code="masjidDetails.numberOfFourWheelerParking.label" default="Number Of Four Wheeler Parking" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFourWheelerParking-label"><g:fieldValue bean="${masjidDetailsInstance}" field="numberOfFourWheelerParking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.masjidType}">
				<li class="fieldcontain">
					<span id="masjidType-label" class="property-label"><g:message code="masjidDetails.masjidType.label" default="Masjid Type" /></span>
					
						<span class="property-value" aria-labelledby="masjidType-label"><g:fieldValue bean="${masjidDetailsInstance}" field="masjidType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.languageOfPrayer}">
				<li class="fieldcontain">
					<span id="languageOfPrayer-label" class="property-label"><g:message code="masjidDetails.languageOfPrayer.label" default="Language Of Prayer" /></span>
					
						<span class="property-value" aria-labelledby="languageOfPrayer-label"><g:fieldValue bean="${masjidDetailsInstance}" field="languageOfPrayer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_1_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_1_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_1_TimingsHour.label" default="Prayer1 Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_1_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_1_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_1_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_1_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_1_TimingsMinutes.label" default="Prayer1 Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_1_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_1_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_1_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_1_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_1_TimingsAMPM.label" default="Prayer1 Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_1_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_1_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_2_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_2_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_2_TimingsHour.label" default="Prayer2 Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_2_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_2_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_2_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_2_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_2_TimingsMinutes.label" default="Prayer2 Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_2_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_2_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_2_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_2_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_2_TimingsAMPM.label" default="Prayer2 Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_2_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_2_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_3_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_3_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_3_TimingsHour.label" default="Prayer3 Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_3_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_3_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_3_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_3_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_3_TimingsMinutes.label" default="Prayer3 Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_3_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_3_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_3_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_3_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_3_TimingsAMPM.label" default="Prayer3 Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_3_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_3_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_4_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_4_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_4_TimingsHour.label" default="Prayer4 Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_4_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_4_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_4_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_4_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_4_TimingsMinutes.label" default="Prayer4 Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_4_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_4_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_4_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_4_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_4_TimingsAMPM.label" default="Prayer4 Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_4_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_4_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_5_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_5_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_5_TimingsHour.label" default="Prayer5 Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_5_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_5_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_5_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_5_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_5_TimingsMinutes.label" default="Prayer5 Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_5_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_5_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_5_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_5_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_5_TimingsAMPM.label" default="Prayer5 Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_5_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_5_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_FridayNoon_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_FridayNoon_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_FridayNoon_TimingsHour.label" default="Prayer Friday Noon Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_FridayNoon_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_FridayNoon_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_FridayNoon_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_FridayNoon_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_FridayNoon_TimingsMinutes.label" default="Prayer Friday Noon Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_FridayNoon_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_FridayNoon_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_FridayNoon_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_FridayNoon_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_FridayNoon_TimingsAMPM.label" default="Prayer Friday Noon Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_FridayNoon_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_FridayNoon_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_jummah_TimingsHour}">
				<li class="fieldcontain">
					<span id="prayer_jummah_TimingsHour-label" class="property-label"><g:message code="masjidDetails.prayer_jummah_TimingsHour.label" default="Prayerjummah Timings Hour" /></span>
					
						<span class="property-value" aria-labelledby="prayer_jummah_TimingsHour-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_jummah_TimingsHour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_jummah_TimingsMinutes}">
				<li class="fieldcontain">
					<span id="prayer_jummah_TimingsMinutes-label" class="property-label"><g:message code="masjidDetails.prayer_jummah_TimingsMinutes.label" default="Prayerjummah Timings Minutes" /></span>
					
						<span class="property-value" aria-labelledby="prayer_jummah_TimingsMinutes-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_jummah_TimingsMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayer_jummah_TimingsAMPM}">
				<li class="fieldcontain">
					<span id="prayer_jummah_TimingsAMPM-label" class="property-label"><g:message code="masjidDetails.prayer_jummah_TimingsAMPM.label" default="Prayerjummah Timings AMPM" /></span>
					
						<span class="property-value" aria-labelledby="prayer_jummah_TimingsAMPM-label"><g:fieldValue bean="${masjidDetailsInstance}" field="prayer_jummah_TimingsAMPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.contactPersonName}">
				<li class="fieldcontain">
					<span id="contactPersonName-label" class="property-label"><g:message code="masjidDetails.contactPersonName.label" default="Contact Person Name" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonName-label"><g:fieldValue bean="${masjidDetailsInstance}" field="contactPersonName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.contactPersonTelNumber}">
				<li class="fieldcontain">
					<span id="contactPersonTelNumber-label" class="property-label"><g:message code="masjidDetails.contactPersonTelNumber.label" default="Contact Person Tel Number" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonTelNumber-label"><g:fieldValue bean="${masjidDetailsInstance}" field="contactPersonTelNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.contactPersonEmail}">
				<li class="fieldcontain">
					<span id="contactPersonEmail-label" class="property-label"><g:message code="masjidDetails.contactPersonEmail.label" default="Contact Person Email" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonEmail-label"><g:fieldValue bean="${masjidDetailsInstance}" field="contactPersonEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.busStopName}">
				<li class="fieldcontain">
					<span id="busStopName-label" class="property-label"><g:message code="masjidDetails.busStopName.label" default="Bus Stop Name" /></span>
					
						<span class="property-value" aria-labelledby="busStopName-label"><g:fieldValue bean="${masjidDetailsInstance}" field="busStopName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.nearestRailwayStation}">
				<li class="fieldcontain">
					<span id="nearestRailwayStation-label" class="property-label"><g:message code="masjidDetails.nearestRailwayStation.label" default="Nearest Railway Station" /></span>
					
						<span class="property-value" aria-labelledby="nearestRailwayStation-label"><g:fieldValue bean="${masjidDetailsInstance}" field="nearestRailwayStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.landmark}">
				<li class="fieldcontain">
					<span id="landmark-label" class="property-label"><g:message code="masjidDetails.landmark.label" default="Landmark" /></span>
					
						<span class="property-value" aria-labelledby="landmark-label"><g:fieldValue bean="${masjidDetailsInstance}" field="landmark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.otherInfo}">
				<li class="fieldcontain">
					<span id="otherInfo-label" class="property-label"><g:message code="masjidDetails.otherInfo.label" default="Other Info" /></span>
					
						<span class="property-value" aria-labelledby="otherInfo-label"><g:fieldValue bean="${masjidDetailsInstance}" field="otherInfo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:masjidDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${masjidDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
