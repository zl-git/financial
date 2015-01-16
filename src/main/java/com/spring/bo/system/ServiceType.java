package com.spring.bo.system;

import java.util.List;

/**
 * 业务类别
 * 
 * @author TRS
 * 
 */
public class ServiceType {
	private int id;
	private String serviceName;// 业务类别名称
	private List<ServiceType> serviceTypies;
	private ServiceType serviceTypeParent;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public List<ServiceType> getServiceTypies() {
		return serviceTypies;
	}

	public void setServiceTypies(List<ServiceType> serviceTypies) {
		this.serviceTypies = serviceTypies;
	}

	public ServiceType getServiceTypeParent() {
		return serviceTypeParent;
	}

	public void setServiceTypeParent(ServiceType serviceTypeParent) {
		this.serviceTypeParent = serviceTypeParent;
	}
}
