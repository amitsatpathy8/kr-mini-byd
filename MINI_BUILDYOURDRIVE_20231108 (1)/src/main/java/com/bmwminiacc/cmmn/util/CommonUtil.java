package com.bmwminiacc.cmmn.util;

import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.StringCharacterIterator;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap; 
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * <pre>
 * Statements
 * 
 * <pre>
 * 
 * @ClassName   : commonUtil.java
 * @Description : 클래스 설명을 기술합니다.
 * @author Min KH
 * @since 2015. 5. 30.
 * @version 1.0
 * @see
 * @Modification Information
 * 
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2015. 5. 30.    Min KH     최초 생성
 * </pre>
 */

public class CommonUtil {

	public CommonUtil() {
	}

	public static boolean checkId(String str, int min, int max){
		boolean result = true;
		String special = "^[a-zA-Z0-9]*$";	
		Pattern specialPattern = Pattern.compile(special);
		
		Matcher matcher = specialPattern.matcher(str);
		if( !matcher.find() ){
//			System.out.println(str + " : matcher.find()");
			result = false;
		}
		if( str.length() > max || str.length() < min ){
//			System.out.println(str + " : str.length()");
			result = false;
		}
		return result;
	}
	
	/**
	 * null 이면 "", 아니면 입력값 리턴
	 * 
	 * @param str
	 * @return
	 */
	public static String nvl(Object str) {
		return nvl((String) str);
	}

	public static String nvl(String str) {
		CommonUtil.htmlToText(str);

		if ((str == null) || (str == "") || (str.equals("null"))
				|| (str.length() == 0)) {
			return "";
		} else {
			return new String(str);
		}
	}

	/**
	 * null 이면 returnValue, 아니면 입력값 리턴
	 * 
	 * @param str
	 * @param returnValue
	 * @return
	 */
	public static String nvl(Object str, String returnValue) {
		return nvl((String) str, returnValue);
	}

	public static String nvl(String str, String returnValue) {
		if ((str == null) || (str == "") || (str.equals("null"))
				|| (str.length() == 0)) {
			return returnValue.trim();
		} else {
			return new String(str.trim());
		}
	}

	/**
	 * null 이면 returnValue, 아니면 원래 String을 int로 return
	 * 
	 * @param str
	 * @param returnValue
	 * @return
	 */
	public static int nvl(Object str, int returnValue) {
		return nvl((String) str, returnValue);
	}

	public static int nvl(String str, int returnValue) {
		if ((str == null) || (str == "") || (str.equals("null"))
				|| (str.length() == 0)) {
			return returnValue;
		} else {
			return Integer.parseInt(str);
		}
	}

	/**
	 * HTML 태그를 특수문자로 변환
	 * 
	 * @param pStr
	 * @return
	 */
	public static String htmlToText(String pStr) {
		if (pStr == null) {
			pStr = "";
		} else {
			pStr = pStr.trim();
			pStr = pStr.replaceAll("&", "&amp;");
			pStr = pStr.replaceAll("<", "&lt;");
			pStr = pStr.replaceAll(">", "&gt;");
			pStr = pStr.replaceAll("\"", "&quot;");
			pStr = pStr.replaceAll("/", "&frasl;");
			pStr = pStr.replaceAll("'", "&#39;");
			pStr = pStr.replaceAll("\"", "&#34;");
			pStr = pStr.replaceAll(" ", "&nbsp;");
		}

		return pStr;
	}

	/**
	 * 변수에 값이 없는지 체크
	 * 
	 * @param str
	 * @return
	 */
	public static boolean empty(String str) {
		if (str != null && str.trim().length() > 0)
			return false;
		else
			return true;
	}

	/**
	 * 변수에 값이 있는지 체크
	 * 
	 * @param str
	 * @return
	 */
	public static boolean emptyNot(String str) {
		if (str != null && str.trim().length() > 0)
			return true;
		else
			return false;
	}

	/**
	 * 글자 앞에 지정한 글자로 자리수 맞추기 (왼쪽에 붙이기)
	 * 
	 * @param src
	 * @param cnt
	 * @param pad
	 * @return
	 */
	public String str_pad_left(String src, int cnt, String pad) {
		if (src.length() < cnt) {
			int c2 = cnt - src.length();
			String src2 = "";
			for (int i = 0; i < c2; i++) {
				src2 = src2 + pad;
			}
			return src2 + src;
		} else {
			return src;
		}
	}

	/**
	 * commas와 함께 반환
	 * 
	 * @param num
	 * @return
	 */
	public static String getStrWithCommas(int num) {
		DecimalFormat df = new DecimalFormat("#,##0");

		return df.format(num);
	}

	/**
	 * 현재 HttpServletRequest 반환
	 * 
	 * @return
	 */
	public static HttpServletRequest getRequest() {
		ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder
				.currentRequestAttributes();

		HttpServletRequest hsr = sra.getRequest();
		return hsr;
	}

	/**
	 * charSet 확인
	 * 
	 * @param str_kr
	 * @throws UnsupportedEncodingException
	 */
	public static void charSet(String str_kr)
			throws UnsupportedEncodingException {
		String charset[] = { "euc-kr", "ksc5601", "iso-8859-1", "8859_1",
				"ascii", "UTF-8" };

		for (int i = 0; i < charset.length; i++) {
			for (int j = 0; j < charset.length; j++) {
				if (i == j)
					continue;

				System.out.println(charset[i] + " : " + charset[j] + " :"
						+ new String(str_kr.getBytes(charset[i]), charset[j]));
			}
		}
	}

	/**
	 * 인코딩 변경 : 8859_1 to UTF-8
	 * 
	 * @param str
	 * @return
	 */
	public static String toHan(String str) {
		try {
			if (str == null) {
				return null;
			}
			return new String(str.getBytes("8859_1"), "UTF-8");
		} catch (UnsupportedEncodingException ex) {
			ex.printStackTrace();
			return "";
		}
	}

	/**
	 * 인코딩 변경 : 8859_1 to EUC-KR
	 * 
	 * @param str
	 * @return
	 */
	public static String toHanEuckr(String str) {
		try {
			if (str == null) {
				return null;
			}
			return new String(str.getBytes("8859_1"), "euc-kr");
		} catch (UnsupportedEncodingException ex) {
			ex.printStackTrace();
			return "";
		}
	}
	
	/**
	 * KSC5601 인코딩된 문자열을 입력받아 KSC5601 타입으로 인코딩을 변환한다.
	 * @param value KSC5601로 로 인코딩된 문자열
	 * @return String ISO_8859_1로 인코딩된 문자열 
	 */
	public static String encodeUS7ASCII(String value) {
	    if(value == null) {
	        return "";
	    }
	    String str = "";
	    try {
	        str = new String(value.getBytes("KSC5601") ,"8859_1");
	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    } 
	    return str;
	}
	 
	/**
	 * ISO_8859_1로 인코딩된 문자열을 입력받아 KSC5601 타입으로 인코딩을 변환한다.
	 * @param value ISO_8859_1 로 인코딩된 문자열
	 * @return String KSC5601로 인코딩된 문자열 
	 */
	public static String decodeUS7ASCII(String value) {
	    if(value== null) {
	        return "";
	    }
	    String str = "";
	    try {
	        str = new String(value.getBytes("8859_1"), "KSC5601");
	    } catch (UnsupportedEncodingException e) {
	    // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return str;
	}	
	
	
	/**
	 * textarea의 내용 출력시 엔터를 <br/>
	 * 로 변경
	 * 
	 * @param str
	 * @return
	 */
	public static String nl2br(String str) {
		if (str == null) {
			return new String("");
		}
		StringBuffer buff = new StringBuffer(1024);
		for (int k = 0; k < str.length(); k++) {
			char one = str.charAt(k);
			if ('\n' == one) {
				buff.append("<br/>");
			} else if (' ' == one) {
				buff.append("&nbsp;");
			} else {
				buff.append(one);
			}
		}
		return buff.toString();
	}

   public static String fnBr(String str) {
        if (str == null) {
            return new String("");
        }
        StringBuffer buff = new StringBuffer(1024);
        for (int k = 0; k < str.length(); k++) {
            char one = str.charAt(k);
            if ('\n' == one) {
                buff.append("<br/>");
            } else {
                buff.append(one);
            }
        }
        return buff.toString();
    }
	/**
	 * @param str
	 *            입력값
	 * @param num
	 *            뒤 몇자리 * 표시
	 * @return
	 */
	public static String setStar(String str, int num) {
		if (str == null) {
			return new String("");
		}

		StringBuffer buf = new StringBuffer(1024);
		for (int i = 0; i < str.length(); i++) {
			char ch = str.charAt(i);
			if (str.length() - i <= num) {
				buf.append("*");
			} else {
				buf.append(ch);
			}
		}

		return buf.toString();
	}

	/**
	 * @param str
	 *            입력값
	 * @param num
	 *            뒤 몇자리 * 표시
	 * @return
	 */
	public static String setEmailStar(String str, int num) {
		if (str == null) {
			return new String("");
		}

		String[] result = str.split("@");
		StringBuffer buf = new StringBuffer(1024);
		for (int i = 0; i < result[0].length(); i++) {
			char ch = result[0].charAt(i);
			if (result[0].length() - i <= num) {
				buf.append("*");
			} else {
				buf.append(ch);
			}
		}

		return buf.toString() + "@" + result[1];
	}

	/**
	 * 파일 확장자구하기
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getExt(String fileName) {
		String ext = "";
		try {
			int dot = fileName.lastIndexOf(".");
			ext = fileName.substring(dot + 1);
		} catch (Exception e) {
		}
		return ext;
	}

	/**
	 * 파일 사이즈구하기
	 * 
	 * @param fileName
	 *            - full directory name
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static long getFileSize(String dir, String fileName,
			HttpServletRequest request) {
		File realDir = new File(request.getSession().getServletContext()
				.getRealPath(dir));

		// System.out.println("realDir : " + realDir);

		// System.out.println("fileName : " + fileName);

		File f = new File(realDir, fileName);
		long size = 0;
		try {
			size = f.length();
		} catch (Exception e) {
			System.out.println(e);
		}

		return size;
	}

	/**
	 * 날짜가져오기
	 * 
	 * @param inptFormat
	 *            yyyy-MM-dd HH:mm:ss:SS
	 * @return
	 */
	public static String getDate(String inptFormat) {
		String returnDate = "";
		try {
			long time = System.currentTimeMillis();
			java.util.Date today = new java.util.Date(time);
			if (inptFormat == null)
				inptFormat = "yyyy-MM-dd HH:mm:ss:SS";
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
					inptFormat);

			String newDay = formatter.format(today);

			returnDate = newDay;

		} catch (Exception e) {
		}

		return returnDate;
	}

	/**
	 * 두 날짜 사이의 개월수 반환
	 * 
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	public static int getMonthDiff(String startDate, String endDate) {
		int startYear = Integer.parseInt(startDate.replaceAll("-", "")
				.substring(0, 4));
		int startMonth = Integer.parseInt(startDate.replaceAll("-", "")
				.substring(4, 6));

		int endYear = Integer.parseInt(endDate.replaceAll("-", "").substring(0,
				4));
		int endMonth = Integer.parseInt(endDate.replaceAll("-", "").substring(
				4, 6));

		return (endYear - startYear) * 12 + (endMonth - startMonth);
	}

	/**
	 * yyyy-MM 형태의 두 날짜 사이의 모든 월 List 반환
	 * 
	 * @param startYearMonth
	 * @param endYearMonth
	 * @return
	 */
	public static List getYearMonthList(String startYearMonth,
			String endYearMonth) {
		int monthDiff = getMonthDiff(startYearMonth, endYearMonth);

		List<Map<String, String>> yearMonthList = new ArrayList<Map<String, String>>();

		for (int i = Integer.parseInt(startYearMonth.replaceAll("-", "")
				.substring(4, 6)); i <= Integer.parseInt(startYearMonth
				.replaceAll("-", "").substring(4, 6)) + monthDiff; i++) {
			Map<String, String> data = new HashMap<String, String>();

			int month = i;

			int year = Integer.parseInt(startYearMonth.substring(0, 4))
					+ ((int) ((month - 1) / 12));

			if (i > 12) {
				month = i - (12 * (int) ((month - 1) / 12));
			}

			data.put("year", Integer.toString(year));
			data.put("month", CommonUtil.getStrRight("0" + month, 2));
			data.put("yearMonth",
					year + "-" + CommonUtil.getStrRight("0" + month, 2));

			yearMonthList.add(data);
		}

		return yearMonthList;
	}

	/**
	 * yyyy-MM 형태의 달에 해당하는 모든 날짜 List 반환.
	 * 
	 * @param startDate
	 * @param endDate
	 * @param yearMonth
	 * @return
	 */
	public static List getDateList(int startDate, int endDate, String yearMonth) {
		int year = Integer.parseInt(yearMonth.replaceAll("-", "").substring(0,
				4));
		int month = Integer.parseInt(yearMonth.replaceAll("-", "").substring(4,
				6));

		List<Map<String, String>> dateList = new ArrayList<Map<String, String>>();

		GregorianCalendar cal = new GregorianCalendar(year, month - 1, 1);

		if (Integer.parseInt(yearMonth.replaceAll("-", "")) < Integer
				.parseInt(getDate("yyyyMM"))) {
			endDate = cal.getActualMaximum(cal.DATE);
		}

		for (int i = startDate; i <= endDate; i++) {
			Map<String, String> data = new HashMap<String, String>();
			data.put("date", year + "-" + getStrRight(("0" + month), 2) + "-"
					+ getStrRight(("0" + i), 2));

			dateList.add(data);
		}

		return dateList;
	}

	public static float getGraph(int grd, int point) {

		float ProT = 0F;

		if (grd == 1) {
			ProT = (float) point;
		} else if (grd == 2) {
			ProT = ((float) (point - 100) / 400) * 100;
		} else if (grd == 3) {
			ProT = 100;
		}

		return ProT;
	}

	/**
	 * 파일명변경
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getNewFileName(String fileName) {

		String newName = "";
		try {
			String body = null;
			String ext = null;

			int dot = fileName.lastIndexOf(".");
			if (dot != -1) {
				body = fileName.substring(0, dot);
				ext = fileName.substring(dot); // includes "."
			} else {
				body = fileName;
				ext = "";
			}

			/*
			 * long time = System.currentTimeMillis(); java.util.Date today =
			 * new java.util.Date(time); java.text.SimpleDateFormat formatter =
			 * new java.text.SimpleDateFormat("yyyyMMddHHmmssSS"); newName =
			 * formatter.format(today);
			 */

			newName = System.currentTimeMillis() + Math.random() + ext;

		} catch (Exception e) {
		}

		return newName;

	}

	/**
	 * 검색 결과 return
	 * 
	 * @param search
	 * @return
	 */
	public static String getSearchString(Map search) {
		String strSearch = "";
		Iterator entrys = search.entrySet().iterator();
		while (entrys.hasNext()) {
			Map.Entry mEntry = (Map.Entry) entrys.next();
			strSearch += "&" + mEntry.getKey() + "=" + mEntry.getValue();
		}

		return strSearch;

	}

	/**
	 * 문자열 자르기
	 * 
	 * @param param
	 * @param len
	 * @param tail
	 * @return
	 */
	public static String getCutString(String param, int len, String tail) {
		if (param.length() <= len) {
			return param;
		}
		StringCharacterIterator sci = new StringCharacterIterator(param);
		StringBuffer buffer = new StringBuffer();

		buffer.append(sci.first());
		for (int i = 1; i < len; i++) {
			if (i < len - 1) {
				buffer.append(sci.next());
			} else {
				char c = sci.next();
				if (c != 32) {
					buffer.append(c);
				}
			}
		}
		buffer.append(tail);
		return buffer.toString();
	}

	/**
	 * String을 지정된 길이만큼만 출력할 수 있도록 하며, 만약 일부분만이 출력되는 경우에는 지정된 postfix 문자열을 끝에
	 * 추가한다.
	 * 
	 * cutByte값은 문자열의 byte 길이를 의미한다. 한글과 같이 2byte character는 2로 계산하며, 영문 및 반각
	 * 기호는 1로 계산한다.
	 * 
	 * @param strSource
	 *            변환하고자 하는 원본 문자열. null인 경우 공백문자열이 반환된다.
	 * @param cutByte
	 *            변환후 총 길이(postfix 문자열의 길이 포함). 반드시 strPostfix문자열의 byte크기 이상의
	 *            숫자를 입력해야 한다. 그렇지 않은 경우 원본 문자열을 그대로 반환한다.
	 * @param bTrim
	 *            원본 문자열의 앞뒤에 공백문자가 있을경우 trim을 수행할지를 결정한다.
	 * @param strPostfix
	 *            문자열이 잘릴경우 이를 표현하기 위한 문자열. null인 경우 "..."이 추가된다.
	 * @return 변환된 결과 문자열을 return 한다. 단, strSource가 null인 경우 공백문자열이 반환되며
	 *         cutByte가 strPostfix문자열의 byte크기 미만의 숫자가 오는 경우 원본 문자열을 그대로 반환한다.
	 */
	public static String cutBytes(String strSource, int cutByte, boolean bTrim,
			String strPostfix) {

		if (strSource == null)
			return "";

		strPostfix = (strPostfix == null) ? "..." : strPostfix;
		int postfixSize = 0;
		for (int i = 0; i < strPostfix.length(); i++) {
			if (strPostfix.charAt(i) < 256)
				postfixSize += 1;
			else
				postfixSize += 2;
		}

		if (postfixSize > cutByte)
			return strSource;

		if (bTrim)
			strSource = strSource.trim();
		char[] charArray = strSource.toCharArray();

		int strIndex = 0;
		int byteLength = 0;
		for (; strIndex < strSource.length(); strIndex++) {

			int byteSize = 0;
			if (charArray[strIndex] < 256) {
				// 1byte character 이면
				byteSize = 1;
			} else {
				// 2byte character 이면
				byteSize = 2;
			}

			if ((byteLength + byteSize) > cutByte - postfixSize) {
				break;
			}

			byteLength = byteLength += byteSize;
		}

		if (strIndex == strSource.length())
			strPostfix = "";
		else {
			if ((byteLength + postfixSize) < cutByte)
				strPostfix = " " + strPostfix;
		}

		return strSource.substring(0, strIndex) + strPostfix;
	}

	/**
	 * 태그 제거
	 * 
	 * @param s
	 * @return
	 */
	public static String removeTag(String s) {
		final int NORMAL_STATE = 0;
		final int TAG_STATE = 1;
		final int START_TAG_STATE = 2;
		final int END_TAG_STATE = 3;
		final int SINGLE_QUOT_STATE = 4;
		final int DOUBLE_QUOT_STATE = 5;
		int state = NORMAL_STATE;
		int oldState = NORMAL_STATE;
		char[] chars = s.toCharArray();
		StringBuffer sb = new StringBuffer();
		char a;
		try {

			for (int i = 0; i < chars.length; i++) {
				a = chars[i];
				switch (state) {
				case NORMAL_STATE:
					if (a == '<')
						state = TAG_STATE;
					else
						sb.append(a);
					break;
				case TAG_STATE:
					if (a == '>')
						state = NORMAL_STATE;
					else if (a == '\"') {
						oldState = state;
						state = DOUBLE_QUOT_STATE;
					} else if (a == '\'') {
						oldState = state;
						state = SINGLE_QUOT_STATE;
					} else if (a == '/')
						state = END_TAG_STATE;
					else if (a != ' ' && a != '\t' && a != '\n' && a != '\r'
							&& a != '\f')
						state = START_TAG_STATE;
					break;
				case START_TAG_STATE:
				case END_TAG_STATE:
					if (a == '>')
						state = NORMAL_STATE;
					else if (a == '\"') {
						oldState = state;
						state = DOUBLE_QUOT_STATE;
					} else if (a == '\'') {
						oldState = state;
						state = SINGLE_QUOT_STATE;
					} else if (a == '\"')
						state = DOUBLE_QUOT_STATE;
					else if (a == '\'')
						state = SINGLE_QUOT_STATE;
					break;
				case DOUBLE_QUOT_STATE:
					if (a == '\"')
						state = oldState;
					break;
				case SINGLE_QUOT_STATE:
					if (a == '\'')
						state = oldState;
					break;
				}
			}
		} catch (Exception e) {

		}
		return sb.toString();
	}

	/**
	 * HTML 태그를 특수문자로 변환
	 * 
	 * @param pStr
	 * @return
	 */
	public static String htmlToText2(String pStr) {
		if (pStr == null) {
			pStr = "";
		} else {
			pStr = pStr.trim();

			pStr = pStr.replaceAll(
					"onload=\"javascript:resizeImgEditor(this, 500, 500);\"",
					"#resizeImgEditor#");

			pStr = CommonUtil.Replace2(pStr);
			pStr = CommonUtil.Replace3(pStr);

			pStr = CommonUtil.Replace(pStr, "target=_self", "target=_blank");
			pStr = CommonUtil.Replace(pStr, "<a href", "<a target=_blank href");
			pStr = CommonUtil.Replace(pStr, "<scri", "&lt;scri");
			pStr = CommonUtil.Replace(pStr, "<iframe", "&lt;iframe");
			pStr = pStr.replaceAll("#resizeImgEditor#",
					"onload=\"javascript:resizeImgEditor(this, 500, 500);\"");

		}

		return pStr;
	}

	public static String Replace(String src, String oldStr, String newStr) {
		if (src == null || oldStr == null)
			return (src);
		if (newStr == null)
			newStr = "";
		if (src.equals("") || oldStr.equals(""))
			return (src);
		int s = 0;
		int e = 0;
		StringBuffer result = new StringBuffer();
		while ((e = src.toLowerCase().indexOf(oldStr, s)) >= 0) {
			result.append(src.substring(s, e));
			result.append(newStr);
			s = e + oldStr.length();
		}
		result.append(src.substring(s));
		return result.toString();
	}

	public static String Replace2(String src) {
		if (src == null)
			return (src);
		if (src.equals(""))
			return (src);
		int s = 0;
		int e = 0;

		StringBuffer result = new StringBuffer();

		while ((e = src.toLowerCase().indexOf("<", s)) >= 0) {
			result.append(src.substring(s, e));

			int e2 = src.indexOf(">", e);

			if (e2 < 0) {
				e2 = src.length();
			}

			String temp_pStr = src.substring(e, e2);

			temp_pStr = CommonUtil.Replace(temp_pStr, "/*", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "*/", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\\", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\'+\'", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "+", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "alert", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "write", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "document", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "cookie", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "expressi", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "prompt", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "<script", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "javascript", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmouseover", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmousewheel", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onload", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#40", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#0040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#00040", "");

			result.append(temp_pStr);

			s = e2;
		}

		result.append(src.substring(s));

		return result.toString();
	}

	public static String Replace3(String src) {
		if (src == null)
			return (src);
		if (src.equals(""))
			return (src);
		int s = 0;
		int e = 0;

		StringBuffer result = new StringBuffer();

		while ((e = src.toLowerCase().indexOf("{", s)) >= 0) {
			result.append(src.substring(s, e));

			int e2 = src.indexOf("}", e);
			if (e2 < 0) {
				e2 = src.length();
			}

			String temp_pStr = src.substring(e, e2);

			temp_pStr = CommonUtil.Replace(temp_pStr, "/*", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "*/", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\\", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "\'+\'", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "+", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "alert", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "write", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "document", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "cookie", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "expressi", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "prompt", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "<script", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "javascript", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmouseover", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onmousewheel", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onerror", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "onload", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#40", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#0040", "");
			temp_pStr = CommonUtil.Replace(temp_pStr, "&#00040", "");

			result.append(temp_pStr);

			s = e2;
		}

		result.append(src.substring(s));

		return result.toString();
	}

	public void getParameterNames(HttpServletRequest request) {
		Enumeration param = request.getParameterNames();
		while (param.hasMoreElements()) {
			String pname = (String) param.nextElement();
			System.out.println(pname + ": " + request.getParameter(pname)
					+ "<br>");
		}
	}

	/**
	 * 파일 용량 display 2009. 5. 27.
	 * 
	 * @param size
	 * @param type
	 *            GB, MB, KB
	 * @return
	 */
	public static String getByteCountToDisplaySize(long size, String type) {
		String displaySize;

		// if (size / 1073741824L > 0L)
		if ("GB".equals(type))
			displaySize = String.valueOf(size / 1073741824L) + " GB";

		// else if (size / 1048576L > 0L)
		else if ("MB".equals(type))
			displaySize = String.valueOf(size / 1048576L) + " MB";

		// else if (size / 1024L > 0L)
		else if ("KB".equals(type))
			displaySize = String.valueOf(size / 1024L) + " KB";
		else
			displaySize = String.valueOf(size) + " bytes";

		return displaySize;

	}

	/**
	 * size 만큼 오른쪽에서 str을 잘라내어 리턴
	 * 
	 * @param str
	 * @param size
	 * @return
	 */
	public static String getStrRight(String str, int size) {
		if (str == null || str.trim().length() == 0
				|| str.trim().length() < size) {
			return str;
		}

		int len = str.length();
		return str.substring(len - size, len);
	}

	/**
	 * cookieName에 해당하는 쿠키의 Value 값 리턴.
	 * 
	 * @param cookies
	 * @param cookieName
	 * @param defaultValue
	 * @return
	 */
	public static String getCookieValue(Cookie[] cookies, String cookieName,
			String defaultValue) {
		if ( cookies != null ) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];

				if (cookieName.equals(cookie.getName())) {
					return (cookie.getValue());
				}
			}			
		}


		return (defaultValue);
	}

	/**
	 * 천단위 소수점 찍기
	 * 
	 * @param number
	 * @return
	 */
	public static String getThousandsSeparators(int number) {
		DecimalFormat df = new DecimalFormat("#,##0");

		return df.format(number);
	}

	/**
	 * 천단위 소수점 찍기(double)
	 * 
	 * @param number
	 * @return
	 */
	public static String getThousandsSeparatorsDouble(double number) {
		DecimalFormat df = new DecimalFormat("#,##0");

		return df.format(number);
	}

	/**
	 * 소수점 둘째자리까지 표현
	 * 
	 * @param number
	 * @return
	 */
	public static String getDecimalFormat(double number) {
		DecimalFormat df = new DecimalFormat("0.00");
		return df.format(number);
	}

	/**
	 * 10진수까지 표현
	 * 
	 * @param number
	 * @return
	 */
	public static String getDecimalInteger(double number) {
		DecimalFormat df = new DecimalFormat("#");
		return df.format(number);
	}

	/**
	 * 세션 아이디 반환
	 * 
	 * @param request
	 * @return
	 */
	public static String getSessionId(HttpServletRequest request) {
		return request.getSession().getId();
	}

	/**
	 * 인증번호 랜덤 숫자 8자리
	 * 
	 * @return
	 */
	public static String randomNum() {
		return randomNum(8);
	}

	/**
	 * count 길이의 랜덤 숫자 반환
	 * 
	 * @param count
	 * @return
	 */
	public static String randomNum(int count) {
		Random r = new Random();
		String sum = "";
		for (int i = 0; i < count; i++) {
			int num = r.nextInt(10);
			sum += String.valueOf(num);
		}
		return sum;
	}

	/**
	 * count 패스워드 단방향 암호화 SHA-512
	 * 
	 * @param pw
	 * @return
	 */
	public static String encrypt(String pw) throws NoSuchAlgorithmException {
		String output = "";

		StringBuffer sb = new StringBuffer();
		MessageDigest md = MessageDigest.getInstance("SHA-512");

		md.update(pw.getBytes());
		byte[] msgb = md.digest();

		for (int i = 0; i < msgb.length; i++) {
			byte temp = msgb[i];
			String str = Integer.toHexString(temp & 0xFF);
			while (str.length() < 2) {
				str = "0" + str;
			}
			str = str.substring(str.length() - 2);
			sb.append(str);
		}

		output = sb.toString();
		return output;
	}

	public static String[] splitText(String input, String flag)
			throws Exception {
		String[] result = null;

		try {
			result = input.split(flag);
		} catch (Exception e) {
		}
		return result;

	}

	/**
	 * 임시비밀번호(8자 :대문자, 소문자, 숫자 조합 )
	 * 
	 * @return
	 */
	public static String randomCharNum() {
		Random r1 = new Random();
		Random r2 = new Random();

		String pw = "LQ";
		int cnt = 0;

		while (cnt < 8) // 랜덤하게 발생시킨 문자열의 길이만큼 값이 들어올때까지 실행
		{
			int num1 = (int) 48 + (int) (r2.nextDouble() * 74); // 알파벳 소문자,
																// 특수문자, 숫자범위의
																// 아스키값발생

			if ((num1 >= 48 && num1 <= 57) || (num1 >= 65 && num1 <= 90)) {
				pw = pw + (char) num1; // 아스키코드값을 char로 형변환 후 저장
				cnt++;
			}
		}
		return pw;
	}

	/**
	 * 임시비밀번호(8자 :대문자, 소문자, 숫자 조합, 특수문자 )
	 * 
	 * @return
	 */
	public static String randomCharNumSpecial() {

		String pswd = "LQ";

		StringBuffer sb = new StringBuffer();
		StringBuffer sc = new StringBuffer("!@#$%^&*"); // 특수문자 모음, {}[] 같은 비호감문자는 뺌

		// 대문자 4개를 임의 발생
		sb.append((char) ((Math.random() * 26) + 65)); // 첫글자는 대문자, 첫글자부터 특수문자 나오면 안 이쁨
		for (int i = 0; i < 3; i++) {
			sb.append((char) ((Math.random() * 26) + 65)); // 아스키번호 65(A) 부터 26글자 중에서 택일
		}
		// 소문자 4개를 임의발생
		for (int i = 0; i < 4; i++) {
			sb.append((char) ((Math.random() * 26) + 97)); // 아스키번호 97(a) 부터 26글자 중에서 택일
		}
		// 숫자 2개를 임의 발생
		for (int i = 0; i < 2; i++) {
			sb.append((char) ((Math.random() * 10) + 48)); // 아스키번호 48(1) 부터 10글자 중에서 택일
		}

		// 특수문자를 두개 발생시켜 랜덤하게 중간에 끼워 넣는다
		sb.setCharAt(((int) (Math.random() * 3) + 1), sc.charAt((int) (Math.random() * sc.length() - 1))); // 대문자 3개 중 하나
		sb.setCharAt(((int) (Math.random() * 4) + 4), sc.charAt((int) (Math.random() * sc.length() - 1))); // 소문자 4개 중 하나
		
		pswd = sb.toString();
		
		return pswd;
	}
	/*
	 * prifix 선택
	 */
	public static String prifix(HttpServletRequest request) {
		String prifix = "";
		String domain = "";

		String url = request.getRequestURL().toString();
		// 임시 구현.. 정확한 구현은 도메인연결후 체크
		String[] array = url.split("/");
		if (array[0].equals("maiim")) {
			domain = "/maiim";
		} else {
			domain = "/";
		}
		String lang = "/" + array[4].toLowerCase();
		return domain + lang;
	}

	static public int getByteLength(String str) {
		byte btString[] = str.getBytes();
		// for(int i=0;i<btString.length;i++){
		// }
		return btString.length;
	}

	static public int getByteLength(char chr) {
		String srTemp = new String(chr + "");
		byte bt[] = srTemp.getBytes();
		return bt.length;
	}

	/**
	 * insert '...' after cut the string by byte
	 * 
	 * @return if str is null return "";
	 */
	static public String cutByteString(String str, int maxlength, String ppp) {
		if (str == null)
			return "";

		char caTemp[] = str.toCharArray();
		StringBuffer bsString = new StringBuffer();

		int total_len = getByteLength(str);
		int ppp_len;

		if (ppp == null) {
			ppp_len = 0;
		} else {
			ppp_len = getByteLength(ppp);
		}

		if (total_len <= maxlength) { // less than maxlength
			return str;
		}

		int cut_len = maxlength - ppp_len;

		int len = 0;
		int tmpLen = 0;

		for (int i = 0; i < caTemp.length; i++) {
			tmpLen = getByteLength(caTemp[i]);
			len += tmpLen;
			if (cut_len >= len) {
				bsString.append(caTemp[i]);
			}
		}

		if (ppp != null) {
			bsString.append(ppp);
		}

		return bsString.toString();
	}

	static public String cutByteString(String str, int maxlength) {
		return cutByteString(str, maxlength, null);
	}

	/**
	 * Html tag 삭제
	 * 
	 * @return
	 */
	public static String removeHTML(String htmlString) {
		if (htmlString != null && !htmlString.equals("")) {
			htmlString = htmlString.replaceAll(
					"<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
		} else {
			htmlString = "";
		}
		return htmlString;
	}

	public static String getClientIP(HttpServletRequest request) {
		String ip = request.getHeader("X-FORWARDED-FOR");
		if (ip == null || ip.length() == 0) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0) {
			ip = request.getHeader("WL-Proxy-Client-IP"); // 웹로직
		}
		if (ip == null || ip.length() == 0) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}



	/**
	 * 단방향 암호화
	 * 
	 * @return String
	 */
	public static String encryptSHA256(String str) {
		String sha = "";
		String salt = "jebipassword";

		str = str + salt;

		try {

			MessageDigest sh = MessageDigest.getInstance("SHA-256");
			sh.update(str.getBytes());
			byte byteData[] = sh.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
						.substring(1));
			}

			sha = sb.toString();
		} catch (Exception e) {
			System.out.println("Encript Error:" + str);
		}

		return sha;

	}

	public static String naverclient(String access_key) {
		HttpClient client1 = new HttpClient();
		PostMethod method = new PostMethod(
				"https://apis.naver.com/nidlogin/nid/getUserProfile.xml");
		// method.setParameter(parameterName, parameterValue)
		method.addRequestHeader("Authorization", "Bearer " + access_key);

		client1.setTimeout(10000);
		int returnCode;
		String result = "";
		try {
			returnCode = client1.executeMethod(method);
			if (returnCode == HttpStatus.SC_NOT_IMPLEMENTED) {

			} else if (returnCode == HttpStatus.SC_OK) {
				result = method.getResponseBodyAsString();
			}

		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return result;

	}

	public static String getRandomString(int length) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();

		String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"
				.split(",");

		for (int i = 0; i < length; i++) {
			buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
	}

	public static String getRandomPw(int length) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();

		String chars[] = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,1,2,3,4,5,6,7,8,9,0,!,@,$,%,^"
				.split(",");

		for (int i = 0; i < length; i++) {
			buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
	}

	/*
	 * public static MemberVO getLoginMber(HttpSession session) { MemberVO mv =
	 * new MemberVO(); mv = (MemberVO) session.getAttribute("mLoginVO"); return
	 * mv; }
	 * 
	 * public static boolean booleanLogin(HttpSession session) { MemberVO mv =
	 * new MemberVO(); mv = (MemberVO) session.getAttribute("mLoginVO"); try {
	 * if(!mv.getMberId().equals("")){ return false; }else{ return true; } }
	 * catch (Exception e) { return true; } }
	 */
	
	
	/**
	 * RGB - HEX
	 */
	public static String getHexCode(String red, String green, String blue){
		
		int r= Integer.parseInt(red);
		int g= Integer.parseInt(green);
		int b= Integer.parseInt(blue);
		Color color = new Color(r,g,b);
		String hex = Integer.toHexString(color.getRGB() & 0xffffff);
		if (hex.length() < 6) {
		    hex = "0" + hex;
		}
		hex = "#" + hex;
		
		return hex.toString();
	}
	
	
	public static String decompose(String s) {
	    return java.text.Normalizer.normalize(s, java.text.Normalizer.Form.NFD).replaceAll("\\p{InCombiningDiacriticalMarks}+","");
		/*
		final String INPUT_ENC = "UTF-8";
	    final String OUTPUT_ENC = "UTF-8";
	    try {
	      BufferedReader r = new BufferedReader(
	          new InputStreamReader(System.in, INPUT_ENC));
	      PrintWriter w = new PrintWriter(
	          new OutputStreamWriter(System.out, OUTPUT_ENC), true);
	      while ((s = r.readLine()) != null) {
	        w.println(Normalizer.normalize(s, Form.NFC));
	      }
	    } 
	    catch (Exception ex) {
	      ex.printStackTrace();
	    }
		return OUTPUT_ENC;
		*/
	}
	
	public static String encodeUnicode(String str) {
		String resultStr = "";
		
        for(int i=0;i<str.length();i++){
            //System.out.println("jjiman ======================= : ["+str.charAt(i)+"]의 10진수 값 : "+str.codePointAt(i));
            //System.out.println("jjiman ========================:  - 16진수 값 : "+Integer.toHexString(str.codePointAt(i)));
        	
        	if ( Integer.toHexString(str.codePointAt(i)).toUpperCase().length() == 4 ) {
        		resultStr += '\\' + Integer.toHexString(str.codePointAt(i)).toUpperCase();
        	}else{
        		resultStr += str.charAt(i);
        	}
        }        
        
		return resultStr;
	}
	
	public static String loginAfterGotoUrl(String str){
		String returnUrl = nvl( str.replace("&amp;", "&") , "/" );
		
		if( returnUrl.indexOf("member") > -1 || returnUrl.indexOf("console") > -1 ){
			returnUrl = "/";
		}
		
		return returnUrl;
	}


	/**
	 * 단방향 암호화(kisa)
	 * 
	 * @return
	 */
    public static String shaEncdoing( String strPwd, HttpServletRequest request ) throws Exception {
    	boolean passYn = true;
    	String result = "";
    	KISA_SHA256 cncPass = new KISA_SHA256();    	
    	String userAgent = request.getHeader("User-Agent").toUpperCase();
    	
		String strPwdDecoded = B64.decodeToString(strPwd);
		
		if (passYn == false) {
			result = "100";
		} else {
			result = cncPass.getEncCode(strPwdDecoded);
		}
//		if (userAgent.indexOf("7.0") != -1 || userAgent.indexOf("8.0") != -1
//				|| userAgent.indexOf("9.0") != -1
//				|| userAgent.indexOf("5.0") != -1) {
//			
//		}
		return result;
    }

}
