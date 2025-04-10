package com.vybhav.mypaymentspringapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vybhav.mypaymentspringapp.entity.BankAccountsEntity;

@Repository
public interface BankAccountsRepository extends JpaRepository<BankAccountsEntity,Long>{
    
}
