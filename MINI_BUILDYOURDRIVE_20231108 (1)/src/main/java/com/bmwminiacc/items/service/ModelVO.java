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

import org.springframework.web.multipart.MultipartFile;

/**
 * 모델 관리 VO
 * @Class Name : ModelVO.java
 * @Description : ModelVO Class
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
public class ModelVO {
	
    private String modelCd; /** 모델 코드(PK) */
    private String modelNm; /** 모델명 */
    private String modelCds; /** 정렬 순서 변경을 위함 모델 코드s */
    private int modelSort; /** 정렬순서 */
    
    private MultipartFile atUploadFile1;
    private String mainImgOgNm;
    private String mainImgPath;
    private String mainImgRealNm;
    private MultipartFile atUploadFile2;
    private String topOffImgOgNm;
    private String topOffImgPath;
    private String topOffImgRealNm;
    private MultipartFile atUploadFile3;
    private String topOnImgOgNm;
    private String topOnImgPath;
    private String topOnImgRealNm;
    private MultipartFile atUploadFile4;
    private String pcVisualImgOgNm;
    private String pcVisualImgPath;
    private String pcVisualImgRealNm;
    private MultipartFile atUploadFile5;
    private String mobileVisualImgOgNm;
    private String mobileVisualImgPath;
    private String mobileVisualImgRealNm;
    
    private String useFlg; /** 사용 여부 */
    private String regId; /** 등록 아이디 */
    private Date regDt; /** 등록 일자 */
    private String modId; /** 수정 아이디 */
    private Date modDt; /** 수정 일자 */
	public String getModelCd() {
		return modelCd;
	}
	public void setModelCd(String modelCd) {
		this.modelCd = modelCd;
	}
	public String getModelNm() {
		return modelNm;
	}
	public void setModelNm(String modelNm) {
		this.modelNm = modelNm;
	}
	public String getModelCds() {
		return modelCds;
	}
	public void setModelCds(String modelCds) {
		this.modelCds = modelCds;
	}
	public int getModelSort() {
		return modelSort;
	}
	public void setModelSort(int modelSort) {
		this.modelSort = modelSort;
	}
	public MultipartFile getAtUploadFile1() {
		return atUploadFile1;
	}
	public void setAtUploadFile1(MultipartFile atUploadFile1) {
		this.atUploadFile1 = atUploadFile1;
	}
	public String getMainImgOgNm() {
		return mainImgOgNm;
	}
	public void setMainImgOgNm(String mainImgOgNm) {
		this.mainImgOgNm = mainImgOgNm;
	}
	public String getMainImgPath() {
		return mainImgPath;
	}
	public void setMainImgPath(String mainImgPath) {
		this.mainImgPath = mainImgPath;
	}
	public String getMainImgRealNm() {
		return mainImgRealNm;
	}
	public void setMainImgRealNm(String mainImgRealNm) {
		this.mainImgRealNm = mainImgRealNm;
	}
	public MultipartFile getAtUploadFile2() {
		return atUploadFile2;
	}
	public void setAtUploadFile2(MultipartFile atUploadFile2) {
		this.atUploadFile2 = atUploadFile2;
	}
	public String getTopOffImgOgNm() {
		return topOffImgOgNm;
	}
	public void setTopOffImgOgNm(String topOffImgOgNm) {
		this.topOffImgOgNm = topOffImgOgNm;
	}
	public String getTopOffImgPath() {
		return topOffImgPath;
	}
	public void setTopOffImgPath(String topOffImgPath) {
		this.topOffImgPath = topOffImgPath;
	}
	public String getTopOffImgRealNm() {
		return topOffImgRealNm;
	}
	public void setTopOffImgRealNm(String topOffImgRealNm) {
		this.topOffImgRealNm = topOffImgRealNm;
	}
	public MultipartFile getAtUploadFile3() {
		return atUploadFile3;
	}
	public void setAtUploadFile3(MultipartFile atUploadFile3) {
		this.atUploadFile3 = atUploadFile3;
	}
	public String getTopOnImgOgNm() {
		return topOnImgOgNm;
	}
	public void setTopOnImgOgNm(String topOnImgOgNm) {
		this.topOnImgOgNm = topOnImgOgNm;
	}
	public String getTopOnImgPath() {
		return topOnImgPath;
	}
	public void setTopOnImgPath(String topOnImgPath) {
		this.topOnImgPath = topOnImgPath;
	}
	public String getTopOnImgRealNm() {
		return topOnImgRealNm;
	}
	public void setTopOnImgRealNm(String topOnImgRealNm) {
		this.topOnImgRealNm = topOnImgRealNm;
	}
	public MultipartFile getAtUploadFile4() {
		return atUploadFile4;
	}
	public void setAtUploadFile4(MultipartFile atUploadFile4) {
		this.atUploadFile4 = atUploadFile4;
	}
	public String getPcVisualImgOgNm() {
		return pcVisualImgOgNm;
	}
	public void setPcVisualImgOgNm(String pcVisualImgOgNm) {
		this.pcVisualImgOgNm = pcVisualImgOgNm;
	}
	public String getPcVisualImgPath() {
		return pcVisualImgPath;
	}
	public void setPcVisualImgPath(String pcVisualImgPath) {
		this.pcVisualImgPath = pcVisualImgPath;
	}
	public String getPcVisualImgRealNm() {
		return pcVisualImgRealNm;
	}
	public void setPcVisualImgRealNm(String pcVisualImgRealNm) {
		this.pcVisualImgRealNm = pcVisualImgRealNm;
	}
	public MultipartFile getAtUploadFile5() {
		return atUploadFile5;
	}
	public void setAtUploadFile5(MultipartFile atUploadFile5) {
		this.atUploadFile5 = atUploadFile5;
	}
	public String getMobileVisualImgOgNm() {
		return mobileVisualImgOgNm;
	}
	public void setMobileVisualImgOgNm(String mobileVisualImgOgNm) {
		this.mobileVisualImgOgNm = mobileVisualImgOgNm;
	}
	public String getMobileVisualImgPath() {
		return mobileVisualImgPath;
	}
	public void setMobileVisualImgPath(String mobileVisualImgPath) {
		this.mobileVisualImgPath = mobileVisualImgPath;
	}
	public String getMobileVisualImgRealNm() {
		return mobileVisualImgRealNm;
	}
	public void setMobileVisualImgRealNm(String mobileVisualImgRealNm) {
		this.mobileVisualImgRealNm = mobileVisualImgRealNm;
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
	public String getModId() {
		return modId;
	}
	public void setModId(String modId) {
		this.modId = modId;
	}
	public Date getModDt() {
		return modDt;
	}
	public void setModDt(Date modDt) {
		this.modDt = modDt;
	}
	
    
	
	

}
