package com.feifan.struts.dao;

import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.feifan.struts.bean.EntityForDownList;
import com.feifan.struts.bean.EntityForResultList;

public class LogisticsDaoImpl extends SqlMapClientDaoSupport {
	@SuppressWarnings("unchecked")
	public ArrayList<EntityForDownList> querySheng() {
		return (ArrayList<EntityForDownList>) this.getSqlMapClientTemplate().queryForList("shengSelect");
	}

	@SuppressWarnings("unchecked")
	public ArrayList<EntityForDownList> queryShi(String id) {
		return (ArrayList<EntityForDownList>) this.getSqlMapClientTemplate().queryForList("shiSelect", id);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<EntityForDownList> queryXian(String id) {
		return (ArrayList<EntityForDownList>) this.getSqlMapClientTemplate().queryForList("xianSelect", id);
	}

	//设定左上数据，全数据
	@SuppressWarnings("unchecked")
	public ArrayList<EntityForResultList> queryAllResult() {
		return (ArrayList<EntityForResultList>) this.getSqlMapClientTemplate().queryForList("allResultSelect");
	}

	//设定左上数据，选择城市后数据
	@SuppressWarnings("unchecked")
	public ArrayList<EntityForResultList> queryResult(String ids) {
		return (ArrayList<EntityForResultList>) this.getSqlMapClientTemplate().queryForList("resultSelect", ids);
	}

	//设定左下数据，全数据
	@SuppressWarnings("unchecked")
	public ArrayList<EntityForResultList> queryCoditionAllResult(SearchConditionDaoBean searchConditionDaoBean) {
		return (ArrayList<EntityForResultList>) this.getSqlMapClientTemplate().queryForList("conditionAllResultSelect", searchConditionDaoBean);
	}

	//设定左下数据，选择城市后数据
	@SuppressWarnings("unchecked")
	public ArrayList<EntityForResultList> queryCoditionResult(SearchConditionDaoBean searchConditionDaoBean) {
		return (ArrayList<EntityForResultList>) this.getSqlMapClientTemplate().queryForList("conditionResultSelect", searchConditionDaoBean);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<String> queryMarquee() {
		return (ArrayList<String>) this.getSqlMapClientTemplate().queryForList("marqueeSelect");
	}

	public Integer insertUser(UserDaoBean userDaoBean) {
		return (Integer)this.getSqlMapClientTemplate().insert("userInsert", userDaoBean);
	}

	public Long selectUser(String username) {
		return (Long) this.getSqlMapClientTemplate().queryForObject("userSelect", username);
	}

	public String selectParam(String paramkey) {
		return (String) this.getSqlMapClientTemplate().queryForObject("paramSelect", paramkey);
	}

	public void updateParam(String paramkey) {
		this.getSqlMapClientTemplate().update("paramUpdate", paramkey);
	}
}
