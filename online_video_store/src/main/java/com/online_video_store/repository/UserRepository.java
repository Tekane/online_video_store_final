package com.online_video_store.repository;

import com.online_video_store.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
/**
 *
 * @author tekane
 */
public interface UserRepository extends JpaRepository<Users, String>{
    
}
