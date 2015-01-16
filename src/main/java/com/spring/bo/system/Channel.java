package com.spring.bo.system;

import javax.persistence.Entity;
import javax.persistence.Table;



@Entity
@Table()
public class Channel {
	private int channelId;
	private String channelName;// 渠道名称


	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}

	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
}
