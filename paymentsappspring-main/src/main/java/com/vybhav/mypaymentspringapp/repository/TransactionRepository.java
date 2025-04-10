package com.vybhav.mypaymentspringapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vybhav.mypaymentspringapp.entity.TransactionEntity;

@Repository
public interface TransactionRepository extends JpaRepository <TransactionEntity,Long>{

}
