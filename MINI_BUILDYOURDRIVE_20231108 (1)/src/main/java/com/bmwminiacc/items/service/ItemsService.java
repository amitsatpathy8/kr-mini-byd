package com.bmwminiacc.items.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ItemsService {
    
	ModelVO selectModelDetail(String modelCd) throws Exception;
	
    List<EgovMap> selectModelList(ItemsSearchVO searchVO) throws Exception;
    
    List<EgovMap> selectPartGrpList(ItemsSearchVO searchVO) throws Exception;

	String selectTopPartCd(ItemsSearchVO searchVO) throws Exception;
	
	List<PartVO> selectPartList(ItemsSearchVO searchVO) throws Exception;
		
	List<ItemsVO> selectItemsList(ItemsSearchVO searchVO) throws Exception;
	
	List<ItemsVO> selectItemsImgList(ItemsSearchVO searchVO) throws Exception;
	
	List<ItemsVO> selectItemsOptList(ItemsSearchVO searchVO) throws Exception;

	
}
