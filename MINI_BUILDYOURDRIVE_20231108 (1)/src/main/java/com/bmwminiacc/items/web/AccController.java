package com.bmwminiacc.items.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bmwminiacc.items.service.ItemsSearchVO;
import com.bmwminiacc.items.service.ItemsService;

/**
 * 카 악세서리 컨트롤러 
 * @Class Name : AccController.java
 * @Description : Acc Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2016.10.17           최초생성
 *
 * @author jjiman
 * @since 2016. 10.17
 * @version 1.0
 */

@Controller
@RequestMapping("/accessories/")
public class AccController {
	private final String NAMESPACE = "accessories/";
	
	@Resource(name = "itemsService")
	private ItemsService itemsService;
	
	/**
	 * 카 악세서리 메인 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "index.do")
	public String main( ModelMap model) throws Exception {	
	    
        ItemsSearchVO searchVO = new ItemsSearchVO();
        searchVO.setWheelTireYn("N");	    
		model.addAttribute("modelList", itemsService.selectModelList(searchVO));
		
		return NAMESPACE + "index";
	}

	/**	
	 * 카 악세서리 데이터
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = {"ajaxData.do"}, method = RequestMethod.POST)
	public String ajaxData( ItemsSearchVO searchVO, ModelMap model) throws Exception {	
		// 모델 상세
		model.addAttribute("modelVO", itemsService.selectModelDetail(searchVO.getSearchModelCd()));
		
	    // 파트 그룹 목록
		model.addAttribute("partGrpList", itemsService.selectPartGrpList(searchVO));
			
		model.addAttribute("searchVO", searchVO);
		
		return NAMESPACE + "ajaxData";
	}
	
	/**	
	 * 카 악세서리 상세
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = {"ajaxDetail.do"}, method = RequestMethod.POST)
	public String ajaxDetail( ItemsSearchVO searchVO, ModelMap model) throws Exception {	
			
		if ( searchVO.getSearchPartCd() == null || searchVO.getSearchPartCd().equals("") ) {
		    searchVO.setWheelTireYn("N");
			searchVO.setSearchPartCd(itemsService.selectTopPartCd(searchVO));
		}
				
        // 파트 그룹 목록
        model.addAttribute("partGrpList", itemsService.selectPartGrpList(searchVO));
		
		
		model.addAttribute("searchVO", searchVO);		
		
		return NAMESPACE + "ajaxDetail";
	}

	/**	
	 * 카 악세서리 목록
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = {"ajaxList.do"}, method = RequestMethod.POST)
	public String ajaxList( ItemsSearchVO searchVO, ModelMap model) throws Exception {
	

		model.addAttribute("itemsList", itemsService.selectItemsList(searchVO));
		
		return NAMESPACE + "ajaxList";
	}
}
