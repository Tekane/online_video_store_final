/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.online_video_store.repository;
import com.online_video_store.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
/**
 *
 * @author tekane
 */
public interface MovieRepository extends JpaRepository<Movie, Integer>{
}
