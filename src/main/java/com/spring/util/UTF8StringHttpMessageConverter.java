/**
 * Title:		TRS SMAS
 * Copyright:	Copyright(c) 2011,TRS. All rights reserved.
 * Company:		北京拓尔思信息技术股份有限公司(www.trs.com.cn)
 */
package com.spring.util;

import java.nio.charset.Charset;

import org.springframework.http.converter.StringHttpMessageConverter;

/**
 * patch for spring mvc<br/>
 * 解决json中文乱码的问题
 * 
 * @author 北京拓尔思信息技术股份有限公司
 * @since huangshengbo @ Jul 2, 2013
 */
public class UTF8StringHttpMessageConverter extends StringHttpMessageConverter {

	public static final Charset DEFAULT_CHARSET = Charset.forName("UTF-8");

	public UTF8StringHttpMessageConverter() {
		super(DEFAULT_CHARSET);
	}

}
