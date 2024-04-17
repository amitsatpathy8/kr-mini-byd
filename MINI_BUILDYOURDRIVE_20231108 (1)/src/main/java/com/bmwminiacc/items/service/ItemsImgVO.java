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
package com.bmwminiacc.items.service;


/**
 * 제품 이미지 VO
 * @Class Name : ItemsImgVO.java
 * @Description : ItemsImgVO Class
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
public class ItemsImgVO {
	

	/** 일련번호  */
	private Integer idx;
	
	/** 이미지 원본 파일명  */
	private String imgOgNm;
	
	/** 이미지 저장 경로 */
	private String imgPath;
	
	/** 이미지 변경된 파일명 */
	private String imgRealNm;
	
	/** 아이콘 원본 파일명 */
	private String iconOgNm;
	
	/** 아이콘 저장 경로 */
	private String iconPath;
	
	/** 아이콘 변경된 파일명  */
	private String iconRealNm;

	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public String getImgOgNm() {
		return imgOgNm;
	}

	public void setImgOgNm(String imgOgNm) {
		this.imgOgNm = imgOgNm;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getImgRealNm() {
		return imgRealNm;
	}

	public void setImgRealNm(String imgRealNm) {
		this.imgRealNm = imgRealNm;
	}

	public String getIconOgNm() {
		return iconOgNm;
	}

	public void setIconOgNm(String iconOgNm) {
		this.iconOgNm = iconOgNm;
	}

	public String getIconPath() {
		return iconPath;
	}

	public void setIconPath(String iconPath) {
		this.iconPath = iconPath;
	}

	public String getIconRealNm() {
		return iconRealNm;
	}

	public void setIconRealNm(String iconRealNm) {
		this.iconRealNm = iconRealNm;
	}
	
	
	
	

}
