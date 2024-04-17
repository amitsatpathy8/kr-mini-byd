/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.bmwminiacc.serviceCenter.service;

import java.util.Date;

/**
 * @Class Name : ServiceCenterVO.java
 * @Description : ServiceCenterVO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2016.10.17           최초생성
 *
 * @author jjiman
 * @since 2016. 10.17
 * @version 1.0
 * @see 
 */
public class ServiceCenterVO {
	

	/** 일련번호 */
	private Integer idx;

	/** 센터명 */
	private String ascNm;

	/** 센터 주소 */
	private String ascAddr;

	/** 센터 전화번호1 */
	private String ascPhn1;

	/** 센터 전화번호2 */
	private String ascPhn2;
	
	/** 센터 전화번호3 */
	private String ascPhn3;
	
	/** 센터 전화번호 */
	private String ascPhn;
	
	/** 센터 평일 영업시간 */
	private String ascWekdTmz;
	
	/** 센터 주말 영업시간 */
	private String ascWekeTmz;
	
	/** 센터 휴무일 */
	private String ascMkhd;	
	
	/** 센터 약도 링크 */
	private String ascMapLink;
	
	/** 센터 약도 이미지 원본 파일명 */
	private String ascMapImgOgNm;
	
	/** 센터 약도 이미지 저장 경로 */
	private String ascMapImgPath;
	
	/** 센터  약도 이미지 변경된 파일명 */
	private String ascMapImgRealNm;
	
	/** 정렬 순서 */
	private Integer ascSort;
	
	/** 등록자 */
	private String regId;
	
	/** 등록일 */
	private Date regDt;
	
	/** 사용 여부 */
	private String useFlg;
	
	/** 삭제 여부 */
	private String delFlg;

	/** 삭제 아이디  */
	private String delId;
	
	/** 삭제일 */
	private Date delDt;

	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public String getAscNm() {
		return ascNm;
	}

	public void setAscNm(String ascNm) {
		this.ascNm = ascNm;
	}

	public String getAscAddr() {
		return ascAddr;
	}

	public void setAscAddr(String ascAddr) {
		this.ascAddr = ascAddr;
	}

	public String getAscPhn1() {
		return ascPhn1;
	}

	public void setAscPhn1(String ascPhn1) {
		this.ascPhn1 = ascPhn1;
	}

	public String getAscPhn2() {
		return ascPhn2;
	}

	public void setAscPhn2(String ascPhn2) {
		this.ascPhn2 = ascPhn2;
	}

	public String getAscPhn3() {
		return ascPhn3;
	}

	public void setAscPhn3(String ascPhn3) {
		this.ascPhn3 = ascPhn3;
	}	

	public String getAscPhn() {
		return ascPhn;
	}

	public void setAscPhn(String ascPhn) {
		this.ascPhn = ascPhn;
	}

	public String getAscWekdTmz() {
		return ascWekdTmz;
	}

	public void setAscWekdTmz(String ascWekdTmz) {
		this.ascWekdTmz = ascWekdTmz;
	}

	public String getAscWekeTmz() {
		return ascWekeTmz;
	}

	public void setAscWekeTmz(String ascWekeTmz) {
		this.ascWekeTmz = ascWekeTmz;
	}

	public String getAscMkhd() {
		return ascMkhd;
	}

	public void setAscMkhd(String ascMkhd) {
		this.ascMkhd = ascMkhd;
	}

	public String getAscMapLink() {
		return ascMapLink;
	}

	public void setAscMapLink(String ascMapLink) {
		this.ascMapLink = ascMapLink;
	}

	public String getAscMapImgOgNm() {
		return ascMapImgOgNm;
	}

	public void setAscMapImgOgNm(String ascMapImgOgNm) {
		this.ascMapImgOgNm = ascMapImgOgNm;
	}

	public String getAscMapImgPath() {
		return ascMapImgPath;
	}

	public void setAscMapImgPath(String ascMapImgPath) {
		this.ascMapImgPath = ascMapImgPath;
	}

	public String getAscMapImgRealNm() {
		return ascMapImgRealNm;
	}

	public void setAscMapImgRealNm(String ascMapImgRealNm) {
		this.ascMapImgRealNm = ascMapImgRealNm;
	}

	
	public Integer getAscSort() {
		return ascSort;
	}

	public void setAscSort(Integer ascSort) {
		this.ascSort = ascSort;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public String getUseFlg() {
		return useFlg;
	}

	public void setUseFlg(String useFlg) {
		this.useFlg = useFlg;
	}

	public String getDelFlg() {
		return delFlg;
	}

	public void setDelFlg(String delFlg) {
		this.delFlg = delFlg;
	}

	public String getDelId() {
		return delId;
	}

	public void setDelId(String delId) {
		this.delId = delId;
	}

	public Date getDelDt() {
		return delDt;
	}

	public void setDelDt(Date delDt) {
		this.delDt = delDt;
	}
	
	

}
