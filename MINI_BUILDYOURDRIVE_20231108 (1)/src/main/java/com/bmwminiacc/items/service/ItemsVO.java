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

import java.util.Date;
import java.util.List;

/**
 * 제품 VO
 * @Class Name : ItemsVO.java
 * @Description : ItemsVO Class
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
public class ItemsVO {
	

	/** 일련번호 */
	private Integer idx;

	/** 구분코드 */
	private String cateFlg;
	
	/** 파트코드 */
	private String partCd;
	
	/** 파트넘버 */
	private String partNum;
	
	/** 상품명 */
	private String itemsNm;
	
	/** 상품설명 */
	private String itemsConts;	
	
	/** 해당 차종 */
    private String modelTxt;
    
    /** 추가사항 1 */
    private String etc1;
    
    /** 추가사항 2 */
    private String etc2;
    
    /** 추가사항 3 */
    private String etc3;
	
	/** 옵션여부 */
	private String optFlg;
	
	/** 대표 정상가 */
	private int price = 0;
	
	/** 대표 할인가 */
	private int salePrice = 0;
	
	/** 대표 할인가 사용 여부 */
	private String saleFlg;
	
	/** 정렬순서 */
	private int itemsSort;
	
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
	
	/** 첨부 이미지 목록 */
	private List<ItemsImgVO> itemsImgList;
	
	/** 옵션 목록 */
	private List<ItemsOptVO> itemsOptList;

	public Integer getIdx() {
		return idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	public String getCateFlg() {
		return cateFlg;
	}

	public void setCateFlg(String cateFlg) {
		this.cateFlg = cateFlg;
	}

	public String getPartCd() {
		return partCd;
	}

	public void setPartCd(String partCd) {
		this.partCd = partCd;
	}

	public String getPartNum() {
		return partNum;
	}

	public void setPartNum(String partNum) {
		this.partNum = partNum;
	}

	public String getItemsNm() {
		return itemsNm;
	}

	public void setItemsNm(String itemsNm) {
		this.itemsNm = itemsNm;
	}

	public String getItemsConts() {
		return itemsConts;
	}

	public void setItemsConts(String itemsConts) {
		this.itemsConts = itemsConts;
	}

	public String getModelTxt() {
        return modelTxt;
    }

    public void setModelTxt(String modelTxt) {
        this.modelTxt = modelTxt;
    }

    public String getEtc1() {
        return etc1;
    }

    public void setEtc1(String etc1) {
        this.etc1 = etc1;
    }

    public String getEtc2() {
        return etc2;
    }

    public void setEtc2(String etc2) {
        this.etc2 = etc2;
    }

    public String getEtc3() {
        return etc3;
    }

    public void setEtc3(String etc3) {
        this.etc3 = etc3;
    }

    public String getOptFlg() {
		return optFlg;
	}

	public void setOptFlg(String optFlg) {
		this.optFlg = optFlg;
	}

	public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public String getSaleFlg() {
        return saleFlg;
    }

    public void setSaleFlg(String saleFlg) {
        this.saleFlg = saleFlg;
    }

    public int getItemsSort() {
		return itemsSort;
	}

	public void setItemsSort(int itemsSort) {
		this.itemsSort = itemsSort;
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

	public List<ItemsImgVO> getItemsImgList() {
		return itemsImgList;
	}

	public void setItemsImgList(List<ItemsImgVO> itemsImgList) {
		this.itemsImgList = itemsImgList;
	}

	public List<ItemsOptVO> getItemsOptList() {
		return itemsOptList;
	}

	public void setItemsOptList(List<ItemsOptVO> itemsOptList) {
		this.itemsOptList = itemsOptList;
	}

	
	
	

}
