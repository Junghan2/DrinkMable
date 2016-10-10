package net.drink.support;

import javax.servlet.http.HttpServletRequest;

public class Param {
	
	public static String getStringParam( HttpServletRequest request, String paramName ) {
		
		return getStringParam(request, paramName, "");
		
	}
	
	public static String getStringParam( HttpServletRequest request, String paramName, String defaultValue ) {
		
		String value = request.getParameter(paramName);
		
		//paramName이 null 또는 길이가 0 이라면 defaultValue인 ""를 리턴한다.
		if( value == null || value.length() == 0 ) {
			value = defaultValue;
		}
		//paramName의 값이 있다면 그 값을 리턴한다. 
		return value;
				
	}
	
	public static int getIntParam( HttpServletRequest request, String paramName ) {
		//defaultValue에 0을 파라미터로 넣어 리턴한다. 
		return getIntParam(request, paramName, 0);
	}
	
	public static int getIntParam( HttpServletRequest request, String paramName, int defaultValue ) {
		
		String value = getStringParam(request, paramName);
		
		try {
			int intValue = Integer.parseInt(value);
			return intValue;
		} catch (NumberFormatException nfe) {
			return defaultValue;
		}
		
		
	}

}
