package com.jukebox.domain.model;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calendar calendar = Calendar.getInstance();

		System.out.println(calendar.get(Calendar.YEAR));
		System.out.println(calendar.get(Calendar.MONTH)+1);
		System.out.println(calendar.get(Calendar.DAY_OF_MONTH));
	
	
		calendar.add(Calendar.DAY_OF_MONTH,10);
		
		Date date =  (Date) calendar.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss a");
		
		System.out.println(date);
		//내년 내 생일
		calendar.set(2023,11,19);//12월 19일
		 System.out.println(calendar.get(Calendar.DAY_OF_WEEK));
	
	}

}
