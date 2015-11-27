package com.feifan.struts.bean;

public class EntityForDownList {

	private static final long serialVersionUID = 1L;

	public EntityForDownList() {
	}

	public EntityForDownList(String id, String name) {
		this.id = id;
		this.name = name;
	}

	private String id;
	private String name;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
