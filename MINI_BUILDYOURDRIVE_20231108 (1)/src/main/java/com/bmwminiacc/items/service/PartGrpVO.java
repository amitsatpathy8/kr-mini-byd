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
public class PartGrpVO {
	
    /** 모델 코드 */
    private String modelCd;
    
	/** 파트 그룹 코드 */
	private String partGrpCd;
	
	/** 파트 그룹명 */
	private String partGrpNm;
	

	/** 파트 목록 */
	private List<PartVO> partList;


	
    public String getModelCd() {
        return modelCd;
    }


    public void setModelCd(String modelCd) {
        this.modelCd = modelCd;
    }


    public String getPartGrpCd() {
        return partGrpCd;
    }


    public void setPartGrpCd(String partGrpCd) {
        this.partGrpCd = partGrpCd;
    }


    public String getPartGrpNm() {
        return partGrpNm;
    }


    public void setPartGrpNm(String partGrpNm) {
        this.partGrpNm = partGrpNm;
    }


    public List<PartVO> getPartList() {
        return partList;
    }


    public void setPartList(List<PartVO> partList) {
        this.partList = partList;
    }
	
	
	
	
	
	
	

}
