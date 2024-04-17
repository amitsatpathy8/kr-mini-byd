package com.bmwminiacc.site.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bmwminiacc.cmmn.vo.CmmnObject;
import com.bmwminiacc.site.service.MainService;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("mainService")
public class MainServicelmpl extends CmmnObject implements MainService{

	
	@Resource(name = "mainMapper")
	private MainMapper mainMapper;
	
	
    @Override
    public EgovMap selectMainDetail() throws Exception {
        return mainMapper.selectMainDetail();
    }	
    @Override
    public EgovMap selectMainSkimDetail() throws Exception {
        return mainMapper.selectMainSkimDetail();
    }   

}
