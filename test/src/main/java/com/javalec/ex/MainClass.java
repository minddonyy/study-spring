package com.javalec.ex;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext ctx=new GenericApplicationContext("classpath:applicationCTX.xml");
		
		Student student=ctx.getBean("student",Student.class);
		student.getStudentInfo();

	}

}
