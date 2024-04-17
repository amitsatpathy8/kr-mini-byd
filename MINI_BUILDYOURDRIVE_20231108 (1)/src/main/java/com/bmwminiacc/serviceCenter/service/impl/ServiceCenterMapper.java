package com.bmwminiacc.serviceCenter.service.impl;

import java.util.List;

import com.bmwminiacc.serviceCenter.service.ServiceCenterVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("serviceCenterMapper")
public interface ServiceCenterMapper {

	List<ServiceCenterVO> selectList(ServiceCenterVO searchVO) throws Exception;
		
}
