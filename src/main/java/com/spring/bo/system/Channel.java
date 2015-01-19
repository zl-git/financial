package com.spring.bo.system;

import javax.persistence.Id;

public class Channel {
	//private int channelId;
	@Id
	private int id;
	private String channelName;// 渠道名称


	/*public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}*/
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
}
