package com.vybhav.mypaymentspringapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vybhav.mypaymentspringapp.entity.TransactionEntity;
import com.vybhav.mypaymentspringapp.repository.TransactionRepository;

@Service
public class TransactionService {
	@Autowired
	public TransactionRepository transactionRepo;
	public List<TransactionEntity> getAllTransactions(){
		return transactionRepo.findAll();
	}
}
