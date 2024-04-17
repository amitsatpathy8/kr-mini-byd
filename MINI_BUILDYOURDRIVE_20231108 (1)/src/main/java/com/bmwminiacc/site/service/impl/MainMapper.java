package com.bmwminiacc.site.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("mainMapper")
public interface MainMapper {
    EgovMap selectMainDetail() throws Exception;
    EgovMap selectMainSkimDetail() throws Exception;
}
