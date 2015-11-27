package com.feifan.struts.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class LeftBottomBean implements Serializable {

	private static final long serialVersionUID = -8755054336912760990L;

	private String sheng;

	private List<EntityForDownList> shengList = new ArrayList<EntityForDownList>();

	private String shi;

	private List<EntityForDownList> shiList = new ArrayList<EntityForDownList>();

	private String xian;

	private List<EntityForDownList> xianList = new ArrayList<EntityForDownList>();

	private String keyString;

	private List<EntityForDownList> keyStringList = new ArrayList<EntityForDownList>();

	private String searchString;

	private List<EntityForResultList> result = new ArrayList<EntityForResultList>();

	private String refreshSeconds;

	private String keyListEmptyFlag;

	public String getSheng() {
		return sheng;
	}

	public void setSheng(String sheng) {
		this.sheng = sheng;
	}

	public List<EntityForDownList> getShengList() {
		return shengList;
	}

	public void setShengList(List<EntityForDownList> shengList) {
		this.shengList = shengList;
	}

	public String getShi() {
		return shi;
	}

	public void setShi(String shi) {
		this.shi = shi;
	}

	public List<EntityForDownList> getShiList() {
		return shiList;
	}

	public void setShiList(List<EntityForDownList> shiList) {
		this.shiList = shiList;
	}

	public String getXian() {
		return xian;
	}

	public void setXian(String xian) {
		this.xian = xian;
	}

	public List<EntityForDownList> getXianList() {
		return xianList;
	}

	public void setXianList(List<EntityForDownList> xianList) {
		this.xianList = xianList;
	}

	public String getKeyString() {
		return keyString;
	}

	public void setKeyString(String keyString) {
		this.keyString = keyString;
	}

	public List<EntityForDownList> getKeyStringList() {
		return keyStringList;
	}

	public void setKeyStringList(List<EntityForDownList> keyStringList) {
		this.keyStringList = keyStringList;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public List<EntityForResultList> getResult() {
		return result;
	}

	public void setResult(List<EntityForResultList> result) {
		this.result = result;
	}

	public String getRefreshSeconds() {
		return refreshSeconds;
	}

	public void setRefreshSeconds(String refreshSeconds) {
		this.refreshSeconds = refreshSeconds;
	}

	public String getKeyListEmptyFlag() {
		return keyListEmptyFlag;
	}

	public void setKeyListEmptyFlag(String keyListEmptyFlag) {
		this.keyListEmptyFlag = keyListEmptyFlag;
	}

}
