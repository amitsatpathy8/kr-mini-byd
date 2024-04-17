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

import com.bmwminiacc.cmmn.vo.CmmnSearchVO;

/**
 * 제품 검색 VO
 * @Class Name : ItemsSearchVO.java
 * @Description : ItemsSearchVO Class
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
public class ItemsSearchVO extends CmmnSearchVO {
	

	/** 제품 일련번호 */
	private Integer itemsIdx;
	
	/** 모델명 */
	private String modelNm = "";

	/** 구분코드 ( acc 고정 ) */
	private String searchCateFlg = "A";
	
	/** 차량 코드 */
	private String searchModelCd = "M01";
	
	/** 파트 그룹 코드 */
	private String searchPartGrpCd;
	
	/** 파트 그룹 Wheel & Tire 여부 */
	private String wheelTireYn = "N";
			
	/** 파트 코드 */
	private String searchPartCd;



	public Integer getItemsIdx() {
		return itemsIdx;
	}

	public void setItemsIdx(Integer itemsIdx) {
		this.itemsIdx = itemsIdx;
	}

	public String getModelNm() {
		return modelNm;
	}

	public void setModelNm(String modelNm) {
		this.modelNm = modelNm;
	}

	public String getSearchCateFlg() {
		return searchCateFlg;
	}

	public void setSearchCateFlg(String searchCateFlg) {
		this.searchCateFlg = searchCateFlg;
	}

	public String getSearchModelCd() {
		return searchModelCd;
	}

	public void setSearchModelCd(String searchModelCd) {
		this.searchModelCd = searchModelCd;
	}



	public String getSearchPartGrpCd() {
        return searchPartGrpCd;
    }

    public void setSearchPartGrpCd(String searchPartGrpCd) {
        this.searchPartGrpCd = searchPartGrpCd;
    }

    public String getWheelTireYn() {
        return wheelTireYn;
    }

    public void setWheelTireYn(String wheelTireYn) {
        this.wheelTireYn = wheelTireYn;
    }

    public String getSearchPartCd() {
		return searchPartCd;
	}

	public void setSearchPartCd(String searchPartCd) {
		this.searchPartCd = searchPartCd;
	}

	
	

	

}
