package com.feifan.struts.bean;

import java.io.Serializable;
import java.util.ArrayList;

public class TopBean implements Serializable {

	private static final long serialVersionUID = -196004924730236574L;

	private ArrayList<String> infoList = new ArrayList<String>();

	public ArrayList<String> getInfoList() {
		return infoList;
	}

	public void setInfoList(ArrayList<String> infoList) {
		this.infoList = infoList;
	}

}
