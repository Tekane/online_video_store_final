/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.online_video_store.controller;
import com.online_video_store.model.Users;
import com.online_video_store.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
/**
 *
 * @author tekane
 */
@RestController
@RequestMapping("/")
public class UserController {
    @Autowired
    private UserRepository userRepository;
    
    public Users saveUser(Users user){
      return userRepository.save(user);
    }
}
