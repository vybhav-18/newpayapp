package com.vybhav.mypaymentspringapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vybhav.mypaymentspringapp.entity.UserAccountDetailsEntity;

@Repository
public interface UserAccountDetailsRepository extends JpaRepository <UserAccountDetailsEntity,Long>{
	
}
