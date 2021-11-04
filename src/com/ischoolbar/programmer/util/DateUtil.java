package com.ischoolbar.programmer.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * ���ڹ�����
 * @author 13212
 *
 */
public class DateUtil {
	
	/**
	 * ����ת�ַ���
	 * @param date
	 * @param dateFormat
	 * @return
	 * @throws Exception
	 */
	public static String dateToString(Date date,String dateFormat) throws Exception{
		SimpleDateFormat format=new SimpleDateFormat(dateFormat);
		return format.format(date);
	}
	/**
	 * �ַ���ת����
	 * @param str
	 * @param dateFormat
	 * @return
	 * @throws Exception
	 */
	
	public static Date strToDate(String str,String dateFormat) throws Exception{
		SimpleDateFormat format=new SimpleDateFormat(dateFormat);
		return format.parse(str);
	}
}
