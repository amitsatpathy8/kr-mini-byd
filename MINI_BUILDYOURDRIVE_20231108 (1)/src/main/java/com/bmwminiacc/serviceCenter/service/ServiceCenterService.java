package com.bmwminiacc.serviceCenter.service;

import java.util.List;

public interface ServiceCenterService {

	List<ServiceCenterVO> selectList(ServiceCenterVO searchVO) throws Exception;

	
}
