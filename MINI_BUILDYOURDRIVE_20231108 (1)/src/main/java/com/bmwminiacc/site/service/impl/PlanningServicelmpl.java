package com.bmwminiacc.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bmwminiacc.cmmn.vo.CmmnObject;
import com.bmwminiacc.site.service.PlanningService;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("planningService")
public class PlanningServicelmpl extends CmmnObject implements PlanningService{

	
	@Resource(name = "planningMapper")
	private PlanningMapper planningMapper;
	
	
    @Override
    public EgovMap selectPlanningDetail() throws Exception {
        return planningMapper.selectPlanningDetail();
    }	

	

}
