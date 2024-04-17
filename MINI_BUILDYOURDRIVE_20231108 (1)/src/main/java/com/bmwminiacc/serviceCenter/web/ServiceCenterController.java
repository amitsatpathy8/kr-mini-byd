package com.bmwminiacc.serviceCenter.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmwminiacc.serviceCenter.service.ServiceCenterService;
import com.bmwminiacc.serviceCenter.service.ServiceCenterVO;

/**
 * 서비스 센터 컨트롤러 
 * @Class Name : ServiceCenterController.java
 * @Description : ServiceCenter Controller Class
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
@RequestMapping("/serviceCenter/")
public class ServiceCenterController {
	private final String NAMESPACE = "serviceCenter/";
	
	@Resource(name = "serviceCenterService")
	private ServiceCenterService serviceCenterService;
	
	/**
	 * 서비스 센터 메인 
	 * @param model
	 * @return "index"
	 * @exception Exception
	 */
	@RequestMapping(value = "index.do")
	public String main( @ModelAttribute("searchVO") ServiceCenterVO searchVO, ModelMap model) throws Exception {	
		
		model.addAttribute("resultList", serviceCenterService.selectList(searchVO));
		
		return NAMESPACE + "index";
	}

	
}
