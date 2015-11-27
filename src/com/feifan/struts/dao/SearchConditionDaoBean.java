package com.feifan.struts.dao;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.feifan.struts.bean.EntityForDownList;

public class SearchConditionDaoBean extends SqlMapClientDaoSupport {
	private String ids;
	private List<EntityForDownList> keyStrings;

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public List<EntityForDownList> getKeyStrings() {
		return keyStrings;
	}

	public void setKeyStrings(List<EntityForDownList> keyStrings) {
		this.keyStrings = keyStrings;
	}

}
