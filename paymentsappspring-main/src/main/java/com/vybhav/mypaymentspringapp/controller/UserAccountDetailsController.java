package com.vybhav.mypaymentspringapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.vybhav.mypaymentspringapp.entity.UserAccountDetailsEntity;
import com.vybhav.mypaymentspringapp.service.BankService;

@Controller
public class UserAccountDetailsController {
	@Autowired
	public BankService bankService;

	
}
