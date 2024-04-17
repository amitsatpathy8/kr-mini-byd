package com.bmwminiacc.cmmn.vo;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Value;

public class CmmnSearchVO implements Serializable {

	/** 메뉴 코드 */
	private String menuCd = "";

	/** 게시판 구분코드 */
	private String brdCd = "";
	
	/** 검색 카테고리 */
	private String searchCateCd = "";
	
	/** 검색 조건 ( 계정 상태  / 진행 상태 ) */
	private String searchStatus = "";

	/** 검색 조건 ( top공지 ) */
	private String searchTopYn = "";
	
	/** 검색 조건 ( 비밀글 ) */
	private String searchSecYn = "";
	
	/** 검색 조건 ( 댓글사용 ) */
	private String searchCommentYn = "";
	
	/** 검색 조건 ( 부서 ) */
	private String searchDepart = "";

	/** 검색 조건 ( 팀 ) */
	private String searchTeam = "";

	/** 검색 조건 ( 페이지  ) */
	private String searchPage = "";

	/** 검색 조건 Sub ( 페이지  ) */
	private String searchPageSub = "";
	
	/** 검색 조건  ( 페이지 n개씩 )*/
	private int sortPage = 10 ;

	/** 검색 조건 Sub  ( 페이지 n개씩 )*/
	private int sortPageSub = 10 ;
	
	/** 검색 조건 ( Type ) */
	private String searchType = "";

	/** 검색 : 처리상태 */
	private String searchStatusCd = "";

	
	
	/** 검색 조건 */
	private String searchCondition = "";

	/** 검색 조건2 */
	private String searchCondition2 = "" ;
	
	
	/** 검색 Keyword */
	private String searchKeyword = "";

	/** 검색 Keyword */
	private String searchKeywordTemp = "";
	
	/** 검색 사용여부 */
	private String searchUseYn = "";
	
	/** 검색 시작일 */
	private String searchStDt = "";
	
	/** 검색 종료일 */
	private String searchEdDt = "";
	
	/** 검색 : 정렬 컬럼 */
	private String sortColumn = "";
	
	/** 검색 : 정렬 차순 */
	private String sortDesc = "";
	
	/** 현재페이지 */
	private int pageIndex = 1;
	
	/** 현재페이지Sub */
	private int pageIndexSub = 1;
	
	/** 페이지갯수 */
	//@Value("#{ siteProperty['pageUnit'] }")
	private int pageUnit = 10;

	/** 페이지갯수 */
	private int pageUnitRecent = 5;
	
	/** 페이지갯수 */
	private int pageUnitPhoto = 6;
	
	/** 페이지사이즈 */
	@Value("#{ siteProperty['pageSize'] }")
	private int pageSize = 10;

	/** firstIndex */
	private int firstIndex = 1;

	/** lastIndex */
	private int lastIndex = 1;

	/** recordCountPerPage */
	private int recordCountPerPage = 10;

	/** seq */

	private Integer eSeq;
	
	private Integer seq;

	private String type = ""; 
	
	private int totalcnt = 0;
	
	private int fileSeq = 0;
	
	private String lang = "kor";

	public String getMenuCd() {
		return menuCd;
	}

	public void setMenuCd(String menuCd) {
		this.menuCd = menuCd;
	}

	public String getBrdCd() {
		return brdCd;
	}

	public void setBrdCd(String brdCd) {
		this.brdCd = brdCd;
	}

	public String getSearchCateCd() {
		return searchCateCd;
	}

	public void setSearchCateCd(String searchCateCd) {
		this.searchCateCd = searchCateCd;
	}

	public String getSearchStatus() {
		return searchStatus;
	}

	public void setSearchStatus(String searchStatus) {
		this.searchStatus = searchStatus;
	}

	public String getSearchTopYn() {
		return searchTopYn;
	}

	public void setSearchTopYn(String searchTopYn) {
		this.searchTopYn = searchTopYn;
	}

	public String getSearchSecYn() {
		return searchSecYn;
	}

	public void setSearchSecYn(String searchSecYn) {
		this.searchSecYn = searchSecYn;
	}

	public String getSearchCommentYn() {
		return searchCommentYn;
	}

	public void setSearchCommentYn(String searchCommentYn) {
		this.searchCommentYn = searchCommentYn;
	}

	public String getSearchDepart() {
		return searchDepart;
	}

	public void setSearchDepart(String searchDepart) {
		this.searchDepart = searchDepart;
	}

	public String getSearchTeam() {
		return searchTeam;
	}

	public void setSearchTeam(String searchTeam) {
		this.searchTeam = searchTeam;
	}

	public String getSearchPage() {
		return searchPage;
	}

	public void setSearchPage(String searchPage) {
		this.searchPage = searchPage;
	}

	public String getSearchPageSub() {
		return searchPageSub;
	}

	public void setSearchPageSub(String searchPageSub) {
		this.searchPageSub = searchPageSub;
	}

	public int getSortPageSub() {
		return sortPageSub;
	}

	public void setSortPageSub(int sortPageSub) {
		this.sortPageSub = sortPageSub;
	}

	public int getSortPage() {
		return sortPage;
	}

	public void setSortPage(int sortPage) {
		this.sortPage = sortPage;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchStatusCd() {
		return searchStatusCd;
	}

	public void setSearchStatusCd(String searchStatusCd) {
		this.searchStatusCd = searchStatusCd;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchCondition2() {
		return searchCondition2;
	}

	public void setSearchCondition2(String searchCondition2) {
		this.searchCondition2 = searchCondition2;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchKeywordTemp() {
		return searchKeywordTemp;
	}

	public void setSearchKeywordTemp(String searchKeywordTemp) {
		this.searchKeywordTemp = searchKeywordTemp;
	}

	public String getSearchUseYn() {
		return searchUseYn;
	}

	public void setSearchUseYn(String searchUseYn) {
		this.searchUseYn = searchUseYn;
	}

	public String getSearchStDt() {
		return searchStDt;
	}

	public void setSearchStDt(String searchStDt) {
		this.searchStDt = searchStDt;
	}

	public String getSearchEdDt() {
		return searchEdDt;
	}

	public void setSearchEdDt(String searchEdDt) {
		this.searchEdDt = searchEdDt;
	}

	public String getSortColumn() {
		return sortColumn;
	}

	public void setSortColumn(String sortColumn) {
		this.sortColumn = sortColumn;
	}

	public String getSortDesc() {
		return sortDesc;
	}

	public void setSortDesc(String sortDesc) {
		this.sortDesc = sortDesc;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageIndexSub() {
		return pageIndexSub;
	}

	public void setPageIndexSub(int pageIndexSub) {
		this.pageIndexSub = pageIndexSub;
	}

	public int getPageUnit() {
		return pageUnit;
	}

	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}

	public int getPageUnitRecent() {
		return pageUnitRecent;
	}

	public void setPageUnitRecent(int pageUnitRecent) {
		this.pageUnitRecent = pageUnitRecent;
	}

	public int getPageUnitPhoto() {
		return pageUnitPhoto;
	}

	public void setPageUnitPhoto(int pageUnitPhoto) {
		this.pageUnitPhoto = pageUnitPhoto;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	public Integer geteSeq() {
		return eSeq;
	}

	public void seteSeq(Integer eSeq) {
		this.eSeq = eSeq;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getTotalcnt() {
		return totalcnt;
	}

	public void setTotalcnt(int totalcnt) {
		this.totalcnt = totalcnt;
	}

	public int getFileSeq() {
		return fileSeq;
	}

	public void setFileSeq(int fileSeq) {
		this.fileSeq = fileSeq;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}
	
	
	
}
