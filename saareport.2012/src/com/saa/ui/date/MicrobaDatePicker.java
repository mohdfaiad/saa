/**
 * 
 */
package com.saa.ui.date;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

import com.michaelbaranov.microba.calendar.DatePicker;

/**
 * @author Admin
 *
 */
public class MicrobaDatePicker extends DatePicker {

	/**
	 * 
	 */
	public MicrobaDatePicker() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 */
	public MicrobaDatePicker(Date initialDate) {
		super(initialDate);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 * @param dateStyle
	 */
	public MicrobaDatePicker(Date initialDate, int dateStyle) {
		super(initialDate, dateStyle);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 * @param dateFormat
	 */
	public MicrobaDatePicker(Date initialDate, DateFormat dateFormat) {
		super(initialDate, dateFormat);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 * @param dateStyle
	 * @param locale
	 */
	public MicrobaDatePicker(Date initialDate, int dateStyle, Locale locale) {
		super(initialDate, dateStyle, locale);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 * @param dateFormat
	 * @param locale
	 */
	public MicrobaDatePicker(Date initialDate, DateFormat dateFormat,
			Locale locale) {
		super(initialDate, dateFormat, locale);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 * @param dateStyle
	 * @param locale
	 * @param zone
	 */
	public MicrobaDatePicker(Date initialDate, int dateStyle, Locale locale,
			TimeZone zone) {
		super(initialDate, dateStyle, locale, zone);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param initialDate
	 * @param dateFormat
	 * @param locale
	 * @param zone
	 */
	public MicrobaDatePicker(Date initialDate, DateFormat dateFormat,
			Locale locale, TimeZone zone) {
		super(initialDate, dateFormat, locale, zone);
		// TODO Auto-generated constructor stub
	}

}
