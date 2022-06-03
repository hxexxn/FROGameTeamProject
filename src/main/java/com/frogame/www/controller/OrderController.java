package com.frogame.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.OrderDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;

	@GetMapping("admin_order_list")
	public String orderList(Model model, Criteria cri) {
		List<OrderDTO> orderList = orderService.orderList(); 
		List<OrderDTO> pageList = orderService.pageList(cri); 
		int total = orderService.getTotal(cri);
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		model.addAttribute("orderList", orderList);
		model.addAttribute("pageList", pageList);
		model.addAttribute("pageMaker", pageMake);
		return "admin_include/admin_order_list";
	}

}
