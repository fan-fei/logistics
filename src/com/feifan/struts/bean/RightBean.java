package com.feifan.struts.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class RightBean implements Serializable {
	
	private static final long serialVersionUID = -4266639741870126063L;

	private String sheng1;

	private String shi1;

	private List<EntityForDownList> shengList1 = new ArrayList<EntityForDownList>();

	private List<EntityForDownList> shiList1 = new ArrayList<EntityForDownList>();

	private String sheng2;

	private String shi2;

	private List<EntityForDownList> shengList2 = new ArrayList<EntityForDownList>();

	private List<EntityForDownList> shiList2 = new ArrayList<EntityForDownList>();

	private String sheng3;

	private String shi3;

	private List<EntityForDownList> shengList3 = new ArrayList<EntityForDownList>();

	private List<EntityForDownList> shiList3 = new ArrayList<EntityForDownList>();

	public String getSheng1() {
		return sheng1;
	}

	public void setSheng1(String sheng1) {
		this.sheng1 = sheng1;
	}

	public String getShi1() {
		return shi1;
	}

	public void setShi1(String shi1) {
		this.shi1 = shi1;
	}

	public List<EntityForDownList> getShengList1() {
		return shengList1;
	}

	public void setShengList1(List<EntityForDownList> shengList1) {
		this.shengList1 = shengList1;
	}

	public List<EntityForDownList> getShiList1() {
		return shiList1;
	}

	public void setShiList1(List<EntityForDownList> shiList1) {
		this.shiList1 = shiList1;
	}

	public String getSheng2() {
		return sheng2;
	}

	public void setSheng2(String sheng2) {
		this.sheng2 = sheng2;
	}

	public String getShi2() {
		return shi2;
	}

	public void setShi2(String shi2) {
		this.shi2 = shi2;
	}

	public List<EntityForDownList> getShengList2() {
		return shengList2;
	}

	public void setShengList2(List<EntityForDownList> shengList2) {
		this.shengList2 = shengList2;
	}

	public List<EntityForDownList> getShiList2() {
		return shiList2;
	}

	public void setShiList2(List<EntityForDownList> shiList2) {
		this.shiList2 = shiList2;
	}

	public String getSheng3() {
		return sheng3;
	}

	public void setSheng3(String sheng3) {
		this.sheng3 = sheng3;
	}

	public String getShi3() {
		return shi3;
	}

	public void setShi3(String shi3) {
		this.shi3 = shi3;
	}

	public List<EntityForDownList> getShengList3() {
		return shengList3;
	}

	public void setShengList3(List<EntityForDownList> shengList3) {
		this.shengList3 = shengList3;
	}

	public List<EntityForDownList> getShiList3() {
		return shiList3;
	}

	public void setShiList3(List<EntityForDownList> shiList3) {
		this.shiList3 = shiList3;
	}

}
