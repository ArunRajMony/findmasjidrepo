<%@ page import="findmymasjid.MasjidMaster" %>



<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'masjidName', 'error')} required">
	<label for="masjidName">
		<g:message code="masjidMaster.masjidName.label" default="Masjid Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="masjidName" required="" value="${masjidMasterInstance?.masjidName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'addressLine1', 'error')} required">
	<label for="addressLine1">
		<g:message code="masjidMaster.addressLine1.label" default="Address Line1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressLine1" required="" value="${masjidMasterInstance?.addressLine1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'addressLine2', 'error')} required">
	<label for="addressLine2">
		<g:message code="masjidMaster.addressLine2.label" default="Address Line2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressLine2" required="" value="${masjidMasterInstance?.addressLine2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'cityTown', 'error')} required">
	<label for="cityTown">
		<g:message code="masjidMaster.cityTown.label" default="City Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cityTown" required="" value="${masjidMasterInstance?.cityTown}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="masjidMaster.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${masjidMasterInstance?.district}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'pincode', 'error')} required">
	<label for="pincode">
		<g:message code="masjidMaster.pincode.label" default="Pincode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pincode" maxlength="6" pattern="${masjidMasterInstance.constraints.pincode.matches}" required="" value="${masjidMasterInstance?.pincode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="masjidMaster.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${masjidMasterInstance.constraints.state.inList}" required="" value="${masjidMasterInstance?.state}" valueMessagePrefix="masjidMaster.state"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="masjidMaster.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="country" from="${masjidMasterInstance.constraints.country.inList}" required="" value="${masjidMasterInstance?.country}" valueMessagePrefix="masjidMaster.country"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="masjidMaster.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" pattern="${masjidMasterInstance.constraints.latitude.matches}" value="${masjidMasterInstance?.latitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="masjidMaster.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" pattern="${masjidMasterInstance.constraints.longitude.matches}" value="${masjidMasterInstance?.longitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'googleLocationLink', 'error')} required">
	<label for="googleLocationLink">
		<g:message code="masjidMaster.googleLocationLink.label" default="Google Location Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="googleLocationLink" cols="40" rows="5" required="" value="${masjidMasterInstance?.googleLocationLink}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'phone1', 'error')} required">
	<label for="phone1">
		<g:message code="masjidMaster.phone1.label" default="Phone1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone1" maxlength="14" pattern="${masjidMasterInstance.constraints.phone1.matches}" required="" value="${masjidMasterInstance?.phone1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'phone2', 'error')} ">
	<label for="phone2">
		<g:message code="masjidMaster.phone2.label" default="Phone2" />
		
	</label>
	<g:textField name="phone2" maxlength="14" pattern="${masjidMasterInstance.constraints.phone2.matches}" value="${masjidMasterInstance?.phone2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'numberOfFloors', 'error')} required">
	<label for="numberOfFloors">
		<g:message code="masjidMaster.numberOfFloors.label" default="Number Of Floors" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="numberOfFloors" from="${1..6}" class="range" required="" value="${fieldValue(bean: masjidMasterInstance, field: 'numberOfFloors')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'canAccomodate', 'error')} required">
	<label for="canAccomodate">
		<g:message code="masjidMaster.canAccomodate.label" default="Can Accomodate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="canAccomodate" from="${masjidMasterInstance.constraints.canAccomodate.inList}" required="" value="${masjidMasterInstance?.canAccomodate}" valueMessagePrefix="masjidMaster.canAccomodate"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'twoWheelerParkingAvailable', 'error')} required">
	<label for="twoWheelerParkingAvailable">
		<g:message code="masjidMaster.twoWheelerParkingAvailable.label" default="Two Wheeler Parking Available" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="twoWheelerParkingAvailable" from="${masjidMasterInstance.constraints.twoWheelerParkingAvailable.inList}" required="" value="${masjidMasterInstance?.twoWheelerParkingAvailable}" valueMessagePrefix="masjidMaster.twoWheelerParkingAvailable"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'numberOfTwoWheelerParking', 'error')} required">
	<label for="numberOfTwoWheelerParking">
		<g:message code="masjidMaster.numberOfTwoWheelerParking.label" default="Number Of Two Wheeler Parking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfTwoWheelerParking" type="number" min="0" value="${masjidMasterInstance.numberOfTwoWheelerParking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'fourWheelerParkingAvailable', 'error')} required">
	<label for="fourWheelerParkingAvailable">
		<g:message code="masjidMaster.fourWheelerParkingAvailable.label" default="Four Wheeler Parking Available" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="fourWheelerParkingAvailable" from="${masjidMasterInstance.constraints.fourWheelerParkingAvailable.inList}" required="" value="${masjidMasterInstance?.fourWheelerParkingAvailable}" valueMessagePrefix="masjidMaster.fourWheelerParkingAvailable"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'numberOfFourWheelerParking', 'error')} required">
	<label for="numberOfFourWheelerParking">
		<g:message code="masjidMaster.numberOfFourWheelerParking.label" default="Number Of Four Wheeler Parking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfFourWheelerParking" type="number" min="0" value="${masjidMasterInstance.numberOfFourWheelerParking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'masjidType', 'error')} required">
	<label for="masjidType">
		<g:message code="masjidMaster.masjidType.label" default="Masjid Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="masjidType" from="${masjidMasterInstance.constraints.masjidType.inList}" required="" value="${masjidMasterInstance?.masjidType}" valueMessagePrefix="masjidMaster.masjidType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'languageOfPrayer', 'error')} required">
	<label for="languageOfPrayer">
		<g:message code="masjidMaster.languageOfPrayer.label" default="Language Of Prayer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="languageOfPrayer" from="${masjidMasterInstance.constraints.languageOfPrayer.inList}" required="" value="${masjidMasterInstance?.languageOfPrayer}" valueMessagePrefix="masjidMaster.languageOfPrayer"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimings1', 'error')} required">
	<label for="prayerTimings1">
		<g:message code="masjidMaster.prayerTimings1.label" default="Prayer Timings1" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="prayerTimings1" format="yyyy-MM" precision="day"  value="${masjidMasterInstance?.prayerTimings1}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimings2', 'error')} required">
	<label for="prayerTimings2">
		<g:message code="masjidMaster.prayerTimings2.label" default="Prayer Timings2" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="prayerTimings2" precision="day"  value="${masjidMasterInstance?.prayerTimings2}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimings3', 'error')} ">
	<label for="prayerTimings3">
		<g:message code="masjidMaster.prayerTimings3.label" default="Prayer Timings3" />
		
	</label>
	<g:datePicker name="prayerTimings3" precision="day"  value="${masjidMasterInstance?.prayerTimings3}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimings4', 'error')} ">
	<label for="prayerTimings4">
		<g:message code="masjidMaster.prayerTimings4.label" default="Prayer Timings4" />
		
	</label>
	<g:datePicker name="prayerTimings4" precision="day"  value="${masjidMasterInstance?.prayerTimings4}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimings5', 'error')} ">
	<label for="prayerTimings5">
		<g:message code="masjidMaster.prayerTimings5.label" default="Prayer Timings5" />
		
	</label>
	<g:datePicker name="prayerTimings5" precision="day"  value="${masjidMasterInstance?.prayerTimings5}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimings6', 'error')} ">
	<label for="prayerTimings6">
		<g:message code="masjidMaster.prayerTimings6.label" default="Prayer Timings6" />
		
	</label>
	<g:datePicker name="prayerTimings6" precision="day"  value="${masjidMasterInstance?.prayerTimings6}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'prayerTimingsFridayNoon', 'error')} required">
	<label for="prayerTimingsFridayNoon">
		<g:message code="masjidMaster.prayerTimingsFridayNoon.label" default="Prayer Timings Friday Noon" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="prayerTimingsFridayNoon" precision="day"  value="${masjidMasterInstance?.prayerTimingsFridayNoon}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'jummahTime', 'error')} required">
	<label for="jummahTime">
		<g:message code="masjidMaster.jummahTime.label" default="Jummah Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="jummahTime" precision="day"  value="${masjidMasterInstance?.jummahTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'contactPersonName', 'error')} required">
	<label for="contactPersonName">
		<g:message code="masjidMaster.contactPersonName.label" default="Contact Person Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactPersonName" required="" value="${masjidMasterInstance?.contactPersonName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'contactPersonTelNumber', 'error')} required">
	<label for="contactPersonTelNumber">
		<g:message code="masjidMaster.contactPersonTelNumber.label" default="Contact Person Tel Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactPersonTelNumber" maxlength="14" pattern="${masjidMasterInstance.constraints.contactPersonTelNumber.matches}" required="" value="${masjidMasterInstance?.contactPersonTelNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'contactPersonEmail', 'error')} required">
	<label for="contactPersonEmail">
		<g:message code="masjidMaster.contactPersonEmail.label" default="Contact Person Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="contactPersonEmail" required="" value="${masjidMasterInstance?.contactPersonEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'busStopName', 'error')} ">
	<label for="busStopName">
		<g:message code="masjidMaster.busStopName.label" default="Bus Stop Name" />
		
	</label>
	<g:textField name="busStopName" value="${masjidMasterInstance?.busStopName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'nearestRailwayStation', 'error')} ">
	<label for="nearestRailwayStation">
		<g:message code="masjidMaster.nearestRailwayStation.label" default="Nearest Railway Station" />
		
	</label>
	<g:textField name="nearestRailwayStation" value="${masjidMasterInstance?.nearestRailwayStation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'landmark', 'error')} ">
	<label for="landmark">
		<g:message code="masjidMaster.landmark.label" default="Landmark" />
		
	</label>
	<g:textArea name="landmark" cols="40" rows="5" value="${masjidMasterInstance?.landmark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidMasterInstance, field: 'otherInfo', 'error')} ">
	<label for="otherInfo">
		<g:message code="masjidMaster.otherInfo.label" default="Other Info" />
		
	</label>
	<g:textArea name="otherInfo" cols="40" rows="5" value="${masjidMasterInstance?.otherInfo}"/>

</div>

