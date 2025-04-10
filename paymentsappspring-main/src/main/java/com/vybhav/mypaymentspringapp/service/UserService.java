package com.vybhav.mypaymentspringapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vybhav.mypaymentspringapp.entity.UserEntity;
import com.vybhav.mypaymentspringapp.model.UserRegistrationModel;
import com.vybhav.mypaymentspringapp.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	public UserRepository userRepo;
	public List<UserEntity> getAllUserDetails(){
		return userRepo.findAll();
	}
	public UserEntity getUserByPhoneNumber(String phoneNumber){
		return userRepo.findByPhoneNumber(phoneNumber);
	}
	public UserEntity saveUser(UserEntity user) {
		return userRepo.save(user);
	}
	public Optional<UserEntity> authenticateUser(String userName,String password) {
		return userRepo.findByUserNameAndPassword(userName, password);
	}
	public Optional<UserEntity> getUserById(Long userId){
		return userRepo.findById(userId);
	}
	public void updateUserProfile(Long userId,UserRegistrationModel userRegModel){
		Optional<UserEntity> user = userRepo.findById(userId);
		if(user.isPresent()) {
			UserEntity existingUser = user.get();
			existingUser.setFirstName(userRegModel.getFirstName());
			existingUser.setLastName(userRegModel.getLastName());
			existingUser.setPhoneNumber(userRegModel.getPhoneNumber());
			existingUser.setEmail(userRegModel.getEmail());
			existingUser.setAddress(userRegModel.getAddress());
			existingUser.setUserName(userRegModel.getUserName());
			existingUser.setPassword(userRegModel.getPassword());
			userRepo.save(existingUser);
		}
	}
}