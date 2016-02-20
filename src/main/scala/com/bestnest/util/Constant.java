package com.bestnest.util;

import java.util.ArrayList;
import java.util.List;

public class Constant {

	public static final String LACS = "Lacs";
	public static final String CRORE = " Crore";
	public static final String NOIDA = "Noida";
	public static final String DELHI_L_ZONE = "Delhi L Zone";
	public static final String COMMERCIAL = "Commercial";
	public static final String RESIDENTIAL = "Residential";
	public static final String CONTACT_US_EMAIL = "deokishore@yahoo.com";
	public static final String EXCEL_SAVE_PATH = "/home/ozuygqof/tmp_excel_file";
	
	public static final String[] dateArray = { "1", "2", "3",
			"4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15",
			"16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26",
			"27", "28", "29", "30", "31" };

	public static final String[] monthArray = { "Jan", "Feb", "Mar", "Apr",
			"May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

	public static final String[] yearArray = { "2014", "2013" };

	public static List<String> getYearList() {
		List<String> dateList = new ArrayList<String>();
		dateList.add("Year");
		dateList.add("2013");
		dateList.add("2014");
		return dateList;
	}
}
