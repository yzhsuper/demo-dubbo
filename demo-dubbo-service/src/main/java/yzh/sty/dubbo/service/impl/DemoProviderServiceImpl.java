package yzh.sty.dubbo.service.impl;

import org.springframework.stereotype.Service;

import yzh.sty.dubbo.service.DemoProviderService;

@Service("demoProviderService")
public class DemoProviderServiceImpl implements DemoProviderService {

	@Override
	public String display(String name) {
		System.out.println("hello " + name);
		return "hello" + name;
	}

}
