package com.test.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.domain.productVO;

@Controller
public class SampleController3 {
	private static final Logger logger=LoggerFactory.getLogger(SampleController3.class);

	
	@RequestMapping("/doD")
	
	public String doD(Model model){
		productVO product=new productVO("sample", 1000);
		model.addAttribute(product);
		return "productDetail";
	}
}
