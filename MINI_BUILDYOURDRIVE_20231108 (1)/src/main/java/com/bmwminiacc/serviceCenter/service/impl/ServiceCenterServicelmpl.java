package com.bmwminiacc.serviceCenter.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bmwminiacc.cmmn.vo.CmmnObject;
import com.bmwminiacc.serviceCenter.service.ServiceCenterService;
import com.bmwminiacc.serviceCenter.service.ServiceCenterVO;


@Service("serviceCenterService")
public class ServiceCenterServicelmpl extends CmmnObject implements ServiceCenterService{

	
	@Resource(name = "serviceCenterMapper")
	private ServiceCenterMapper serviceCenterMapper;
	

	@Override
	public List<ServiceCenterVO> selectList(ServiceCenterVO searchVO) throws Exception {
		return serviceCenterMapper.selectList(searchVO);
	}

	

}
