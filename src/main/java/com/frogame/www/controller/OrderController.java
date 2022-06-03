package com.frogame.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.OrderDTO;
import com.frogame.www.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
}