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
 * 제품 옵션 VO
 * @Class Name : ItemsOptVO.java
 * @Description : ItemsOptVO Class
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
public class ItemsOptVO {
	

	/** 일련번호  */
	private Integer idx;
	
	/** 아이템 일련번호 */
	private Integer itemsIdx;
	
	/** 파트넘버 */
	private String partNum;
	
	/** 옵션명  */
	private String optNm;
	
	/** 옵션 가격 */
	private int optPrice = 0;
	
	/** 옵션 세일 가격 */
	private int optSalePrice = 0;
	
	/** 옵션 세일 가격 사용 여부 */
	private String optSaleFlg = "Y";

	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public Integer getItemsIdx() {
		return itemsIdx;
	}

	public void setItemsIdx(Integer itemsIdx) {
		this.itemsIdx = itemsIdx;
	}

	public String getPartNum() {
		return partNum;
	}

	public void setPartNum(String partNum) {
		this.partNum = partNum;
	}

	public String getOptNm() {
		return optNm;
	}

	public void setOptNm(String optNm) {
		this.optNm = optNm;
	}

	public int getOptPrice() {
		return optPrice;
	}

	public void setOptPrice(int optPrice) {
		this.optPrice = optPrice;
	}

	public int getOptSalePrice() {
		return optSalePrice;
	}

	public void setOptSalePrice(int optSalePrice) {
		this.optSalePrice = optSalePrice;
	}

	public String getOptSaleFlg() {
		return optSaleFlg;
	}

	public void setOptSaleFlg(String optSaleFlg) {
		this.optSaleFlg = optSaleFlg;
	}
	
	
	

}
