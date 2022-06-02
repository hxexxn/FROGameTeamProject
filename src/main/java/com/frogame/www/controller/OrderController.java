package com.frogame.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.frogame.www.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	
}
