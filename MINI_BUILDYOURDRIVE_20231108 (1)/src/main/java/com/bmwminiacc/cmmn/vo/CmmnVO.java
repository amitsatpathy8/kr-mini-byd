package com.bmwminiacc.cmmn.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class CmmnVO {

	/**로그인 후 return url*/
	private String returnUrl;
	/** 프로시저 return msg */
	private String procdReturnMsg;
	
	private String sendType;
	private String userSeq;
	private String userId;
	private String smtpHost;
	private String domain;
	private String title;
	private String titleSub;
	private String toName;
	private String toEmail;
	private String fromName;
	private String fromEmail;
	private String contentPage;
	private String couponFlag;
	private String regDate;
	
	private String msgType;
	private String msg;
	private String toPhoneNum;
	private String fromPhoneNum;

	public String getReturnUrl() {
		return returnUrl;
	}
	public void setReturnUrl(String returnUrl) {
		this.returnUrl = returnUrl;
	}

	/*
     * @see java.lang.Object#toString()
     */
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
	public String getProcdReturnMsg() {
		return procdReturnMsg;
	}
	public void setProcdReturnMsg(String procdReturnMsg) {
		this.procdReturnMsg = procdReturnMsg;
	}
	public String getSendType() {
		return sendType;
	}
	public void setSendType(String sendType) {
		this.sendType = sendType;
	}
	public String getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSmtpHost() {
		return smtpHost;
	}
	public void setSmtpHost(String smtpHost) {
		this.smtpHost = smtpHost;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getTitleSub() {
		return titleSub;
	}
	public void setTitleSub(String titleSub) {
		this.titleSub = titleSub;
	}
	public String getToName() {
		return toName;
	}
	public void setToName(String toName) {
		this.toName = toName;
	}
	public String getToEmail() {
		return toEmail;
	}
	public void setToEmail(String toEmail) {
		this.toEmail = toEmail;
	}
	public String getFromName() {
		return fromName;
	}
	public void setFromName(String fromName) {
		this.fromName = fromName;
	}
	public String getFromEmail() {
		return fromEmail;
	}
	public void setFromEmail(String fromEmail) {
		this.fromEmail = fromEmail;
	}
	public String getContentPage() {
		return contentPage;
	}
	public void setContentPage(String contentPage) {
		this.contentPage = contentPage;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getCouponFlag() {
		return couponFlag;
	}
	public void setCouponFlag(String couponFlag) {
		this.couponFlag = couponFlag;
	}
	public String getMsgType() {
		return msgType;
	}
	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getToPhoneNum() {
		return toPhoneNum;
	}
	public void setToPhoneNum(String toPhoneNum) {
		this.toPhoneNum = toPhoneNum;
	}
	public String getFromPhoneNum() {
		return fromPhoneNum;
	}
	public void setFromPhoneNum(String fromPhoneNum) {
		this.fromPhoneNum = fromPhoneNum;
	}

}