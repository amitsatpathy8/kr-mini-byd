package com.bmwminiacc.items.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmwminiacc.items.service.ItemsSearchVO;
import com.bmwminiacc.items.service.ItemsService;
import com.bmwminiacc.items.service.ItemsVO;
import com.bmwminiacc.items.service.PartVO;

/**
 * 휠 & 타이어 컨트롤러 
 * @Class Name : TireController.java
 * @Description : Tire Controller Class
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
@RequestMapping("/tire/")
public class WheelTireController {
	private final String NAMESPACE = "tire/";
	
	@Resource(name = "itemsService")
	private ItemsService itemsService;
	
	/**
	 * 휠 & 타이어 메인 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "index.do")
	public String main( ModelMap model, HttpSession session, HttpServletRequest request, HttpServletResponse response ) throws Exception {	
        ItemsSearchVO searchVO = new ItemsSearchVO();
        searchVO.setWheelTireYn("Y");		
	    model.addAttribute("modelList", itemsService.selectModelList(searchVO));
	    
		return NAMESPACE + "index";
	}

	/**
	 * 휠 & 타이어 detail 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "ajaxDetail.do")
	public String ajaxData( @ModelAttribute("searchVO") ItemsSearchVO searchVO, ModelMap model) throws Exception {	
		if ( searchVO.getSearchPartCd() == null || searchVO.getSearchPartCd().equals("") ) {
		    searchVO.setWheelTireYn("Y");
			searchVO.setSearchPartCd(itemsService.selectTopPartCd(searchVO));
		}

		searchVO.setSearchPartGrpCd("A03"); //Wheel & Tire
		model.addAttribute("partList", itemsService.selectPartList(searchVO));
		
		model.addAttribute("searchVO", searchVO);		
				
		return NAMESPACE + "ajaxDetail";
	}
	
	/**
	 * 휠 & 타이어 list 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "ajaxList.do")
	public String ajaxList( @ModelAttribute("searchVO") ItemsSearchVO searchVO, ModelMap model) throws Exception {	
			
		model.addAttribute("itemsList", itemsService.selectItemsList(searchVO));
		
		return NAMESPACE + "ajaxList";
	}
}
