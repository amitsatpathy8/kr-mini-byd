package com.bmwminiacc.items.service.impl;

import java.util.List;

import com.bmwminiacc.items.service.ItemsSearchVO;
import com.bmwminiacc.items.service.ItemsVO;
import com.bmwminiacc.items.service.ModelVO;
import com.bmwminiacc.items.service.PartVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("itemsMapper")
public interface ItemsMapper {
	ModelVO selectModelDetail(String modelCd) throws Exception;
	
    List<EgovMap> selectModelList(ItemsSearchVO searchVO) throws Exception;
    
    List<EgovMap> selectPartGrpList(ItemsSearchVO searchVO) throws Exception;

	String selectTopPartCd(ItemsSearchVO searchVO) throws Exception;
	
	List<PartVO> selectPartList(ItemsSearchVO searchVO) throws Exception;
	

	List<ItemsVO> selectItemsList(ItemsSearchVO searchVO) throws Exception;
	
	List<ItemsVO> selectItemsImgList(ItemsSearchVO searchVO) throws Exception;
	
	List<ItemsVO> selectItemsOptList(ItemsSearchVO searchVO) throws Exception;
		
}
