package com.feifan.struts.dao;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public class UserDaoBean extends SqlMapClientDaoSupport {
	private Integer id;
	private String companyname;
	private String username;
	private String password;
	private String realname;
	private String shenfenid;
	private String shi_id;
	private String mobile;
	private String telephone;
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getShenfenid() {
		return shenfenid;
	}

	public void setShenfenid(String shenfenid) {
		this.shenfenid = shenfenid;
	}

	public String getShi_id() {
		return shi_id;
	}

	public void setShi_id(String shi_id) {
		this.shi_id = shi_id;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
