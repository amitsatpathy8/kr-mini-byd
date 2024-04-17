package com.bmwminiacc.site.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("planningMapper")
public interface PlanningMapper {
    EgovMap selectPlanningDetail() throws Exception;
}
