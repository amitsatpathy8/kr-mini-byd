package com.bmwminiacc.cmmn.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bmwminiacc.items.service.ItemsSearchVO;
import com.bmwminiacc.items.service.ItemsService;
import com.bmwminiacc.site.service.MainService;
import com.bmwminiacc.site.service.PlanningService;

/**
 * @Class Name : ContsController.java
 * @Description : Conts Controller Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2016.10.14           최초생성
 *
 * @author jjiman
 * @since 2016. 10.14
 * @version 1.0
 */

@Controller
@RequestMapping("/*")
public class ContsController {
    
    @Resource(name = "mainService")
    private MainService mainService;

    @Resource(name = "planningService")
    private PlanningService planningService;
    
    @Resource(name = "itemsService")
    private ItemsService itemsService;
    
	/**
	 * 메인 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "index.do")
	public String main( ModelMap model) throws Exception {	
	    model.addAttribute("mainVO", mainService.selectMainDetail());
	    model.addAttribute("mainSkimVO", mainService.selectMainSkimDetail());
	    ItemsSearchVO searchVO = new ItemsSearchVO();
	    searchVO.setWheelTireYn("N");
	    model.addAttribute("modelList", itemsService.selectModelList(searchVO));
		return "/index";
	}

	 /**
     * 기획 페이지 
     * @param model
     * @return "/planning/index"
     * @exception Exception
     */
    @RequestMapping(value = "planning/index.do")
    public String planning( ModelMap model) throws Exception {  
        model.addAttribute("planningVO", planningService.selectPlanningDetail());

        return "/planning/index";
    }
    
	/**
	 * mini 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "mini/index.do")
	public String mini( ModelMap model) throws Exception {	

		return "/mini/index";
	}	
    
    /**
     * week 
     * @param model
     * @return "index"
     * @exception Exception
     */
    @RequestMapping(value = "week/index.do")
    public String week( ModelMap model) throws Exception { 

        return "/week/index";
    }   
	
	/**
	 * tipsGuide 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "tipsGuide/index.do")
	public String tipsGuide( ModelMap model) throws Exception {	

		return "/tipsGuide/index";
	}		
	
	/**
	 * suitup 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "suitup/index.do")
	public String suitup( ModelMap model) throws Exception {	
	    
	    return "/suitup/index";
	}		
    
    /**
     * styleup 
     * @param model
     * @return "index"
     * @exception Exception
     */
    @RequestMapping(value = "styleup/index.do")
    public String styleup( HttpServletRequest request, ModelMap model) throws Exception { 

        return "/styleup/index";
    }   
    
    /**
     * happyfirstday 
     * @param model
     * @return "index"
     * @exception Exception
     */
    @RequestMapping(value = "happyfirstday/index.do")
    public String happyfirstday( ModelMap model) throws Exception {    
        
        return "/happyfirstday/index";
    }   

    
    /**
     * 메인 
     * @param model
     * @return "index"
     * @exception Exception 
     */
    @RequestMapping(value = "/gate.do")
    public String gate( ModelMap model, @RequestParam(value = "osType", required = false) String osType) throws Exception {
        
        if( osType.equals("") || osType == null ){
            return "redirect:/";
        }
        model.addAttribute("osType", osType);
        
        return "/gate";
    }

    /**
     * ko/html 
     * @param model
     * @return "index"
     * @exception Exception
     */
    @RequestMapping(value = "/ko/{htmlPath}/index.do")
    public String selectRecruitHtml(@PathVariable("htmlPath") String htmlPath, HttpServletRequest request, ModelMap model) throws Exception {

        return "/ko/"+ htmlPath +"/index";
    }
}
