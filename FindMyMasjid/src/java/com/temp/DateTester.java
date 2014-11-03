package com.temp;

import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.LocalDate;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.chrono.IslamicChronology;

public class DateTester {
	public static void main(String[] args) throws Exception {
		Chronology iso = ISOChronology.getInstanceUTC();
		Chronology hijri = IslamicChronology.getInstanceUTC();

		LocalDate todayIso = new LocalDate(2014, 11, 02, iso);
		LocalDate todayHijri = new LocalDate(todayIso.toDateTimeAtStartOfDay(),
				hijri);
		System.out.println("todayHijri : " + todayHijri); // 1434-05-19

		// in IST timezone
		Chronology isoIST = ISOChronology.getInstance(DateTimeZone
				.forID("Asia/Calcutta"));
		Chronology hijriIST = IslamicChronology.getInstance(DateTimeZone
				.forID("Asia/Calcutta"));

		LocalDate todayHijriIST = new LocalDate(hijriIST);
		System.out.println("todayHijriIST : " + todayHijriIST);
		
		
		

	}

}
