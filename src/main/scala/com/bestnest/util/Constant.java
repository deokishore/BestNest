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



	public static final String CITY_NOIDA_ID = "NOD";
	public static final String CITY_NOIDA_NAME = "Noida";

	public static final String CITY_GREATER_NOIDA_ID = "GNOD";
	public static final String CITY_GREATER_NOIDA_NAME = "Greater Noida";

	public static final String CITY_NOIDA_EXT_ID = "NODE";
	public static final String CITY_NOIDA_EXT_NAME = "Noida Extension ";

	public static final String CITY_YAMUNA_EXPRESSWAY_ID = "EX-WAY";
	public static final String CITY_YAMUNA_EXPRESSWAY_NAME = "Yamuna Expressway";

	public static final String CITY_NH24_GHAZIABAD_ID = "GZB";
	public static final String CITY_NH24_GHAZIABAD_NAME = "NH-24/Ghaziabad";

	public static final String CITY_DELHI_L_ZONE_ID = "LZONE";
	public static final String CITY_DELHI_L_ZONE_NAME = "Delhi L Zone";

	public static List<String> getYearList() {
		List<String> dateList = new ArrayList<String>();
		dateList.add("Year");
		dateList.add("2013");
		dateList.add("2014");
		return dateList;
	}
}
