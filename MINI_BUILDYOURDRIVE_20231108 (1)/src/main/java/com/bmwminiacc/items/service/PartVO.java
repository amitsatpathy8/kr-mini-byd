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
 * 제품 파트 VO
 * @Class Name : PartVO.java
 * @Description : PartVO Class
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
public class PartVO {
	

	/** 차종코드  */
	private String modelCd;
	
	/** 파트구분 */
	private String partFlg;
	
	/** 파트코드 */
	private String partCd;
	
	/** 파트명 */
	private String partNm;
	
	/** 정렬 순서 */
	private int partSort;
	
	/** 사용 여부 */
	private String useFlg;
	
	/** 등록자 */
	private String regId;
	
	/** 등록일 */
	private Date regDt;
	
	/** 삭제 여부 */
	private String delFlg;

	/** 삭제 아이디  */
	private String delId;
	
	/** 삭제일 */
	private Date delDt;
	
	/** 연결된 제품 갯수 */
	private int itemsCnt = 0;

	/** 제품 목록 */
	private List<ItemsVO> itemsList;
	
	public String getModelCd() {
		return modelCd;
	}

	public void setModelCd(String modelCd) {
		this.modelCd = modelCd;
	}

	public String getPartFlg() {
		return partFlg;
	}

	public void setPartFlg(String partFlg) {
		this.partFlg = partFlg;
	}

	public String getPartCd() {
		return partCd;
	}

	public void setPartCd(String partCd) {
		this.partCd = partCd;
	}

	public String getPartNm() {
		return partNm;
	}

	public void setPartNm(String partNm) {
		this.partNm = partNm;
	}

	public int getPartSort() {
		return partSort;
	}

	public void setPartSort(int partSort) {
		this.partSort = partSort;
	}

	public String getUseFlg() {
		return useFlg;
	}

	public void setUseFlg(String useFlg) {
		this.useFlg = useFlg;
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

	public int getItemsCnt() {
		return itemsCnt;
	}

	public void setItemsCnt(int itemsCnt) {
		this.itemsCnt = itemsCnt;
	}

	public List<ItemsVO> getItemsList() {
		return itemsList;
	}

	public void setItemsList(List<ItemsVO> itemsList) {
		this.itemsList = itemsList;
	}

	
	
	

}
