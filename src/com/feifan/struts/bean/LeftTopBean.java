package com.feifan.struts.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class LeftTopBean implements Serializable {

	private static final long serialVersionUID = -1176932079791793001L;

	private List<EntityForResultList> result = new ArrayList<EntityForResultList>();

	public List<EntityForResultList> getResult() {
		return result;
	}

	public void setResult(List<EntityForResultList> result) {
		this.result = result;
	}
}
