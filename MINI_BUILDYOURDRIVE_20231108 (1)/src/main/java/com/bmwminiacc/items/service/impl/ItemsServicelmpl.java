package com.bmwminiacc.items.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bmwminiacc.items.service.ItemsSearchVO;
import com.bmwminiacc.items.service.ItemsService;
import com.bmwminiacc.items.service.ItemsVO;
import com.bmwminiacc.items.service.ModelVO;
import com.bmwminiacc.items.service.PartVO;
import com.bmwminiacc.cmmn.vo.CmmnObject;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("itemsService")
public class ItemsServicelmpl extends CmmnObject implements ItemsService{

	
	@Resource(name = "itemsMapper")
	private ItemsMapper itemsMapper;
	
    @Override
    public ModelVO selectModelDetail(String modelCd) throws Exception {
        return itemsMapper.selectModelDetail(modelCd);
    }		
    @Override
    public List<EgovMap> selectModelList(ItemsSearchVO searchVO) throws Exception {
        return itemsMapper.selectModelList(searchVO);
    }	
    @Override
    public List<EgovMap> selectPartGrpList(ItemsSearchVO searchVO) throws Exception {
        return itemsMapper.selectPartGrpList(searchVO);
    }
	
	@Override
	public String selectTopPartCd(ItemsSearchVO searchVO) throws Exception {
		return itemsMapper.selectTopPartCd(searchVO);
	}
	
	@Override
	public List<PartVO> selectPartList(ItemsSearchVO searchVO) throws Exception {
		return itemsMapper.selectPartList(searchVO);
	}
	
	@Override
	public List<ItemsVO> selectItemsList(ItemsSearchVO searchVO) throws Exception {
		return itemsMapper.selectItemsList(searchVO);
	}

	@Override
	public List<ItemsVO> selectItemsImgList(ItemsSearchVO searchVO) throws Exception {
		return itemsMapper.selectItemsImgList(searchVO);
	}
	
	@Override
	public List<ItemsVO> selectItemsOptList(ItemsSearchVO searchVO) throws Exception {
		return itemsMapper.selectItemsOptList(searchVO);
	}
	

}
