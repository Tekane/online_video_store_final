/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.online_video_store.controller;
import com.online_video_store.model.Movie;
import com.online_video_store.repository.MovieRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
/**
 *
 * @author tekane
 */
@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200",allowedHeaders="*")
public class MovieController {
    @Autowired
    private MovieRepository movieRepository;
    
  
    @GetMapping("/movies")
    public List<Movie> getMovies(){
        return movieRepository.findAll();
    }
    @PostMapping("/movies")
    public Movie addMovie(@RequestBody Movie movie){
        return movieRepository.save(movie);
    }
   /* @RequestMapping(value = "movies/{id}",method = RequestMethod.GET)
    public Movie getMovie(@PathVariable int id){
        return movieRepository.getOne(id);
    }*/
    @PutMapping("/movies")
    public Movie updateMovie(@RequestBody Movie movie){
        return movieRepository.save(movie);
    }
}
