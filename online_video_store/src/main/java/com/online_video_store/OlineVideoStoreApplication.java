package com.online_video_store;

import com.online_video_store.model.Movie;
import com.online_video_store.model.Users;
import com.online_video_store.repository.MovieRepository;
import com.online_video_store.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages={"com.online_video_store.controller"})
public class OlineVideoStoreApplication  implements CommandLineRunner{
    @Autowired
    private UserRepository userRepository;
    @Autowired 
    private MovieRepository movieRepository;
	public static void main(String[] args) {
		SpringApplication.run(OlineVideoStoreApplication.class, args);
	}

    @Override
    public void run(String... args) throws Exception {
//         userRepository.save(new Users("phasha1@gmail.com", "19920602"));
//         userRepository.save(new Users("Tekane15@gmail.com", "123456"));
//         movieRepository.save(new Movie("Lookdown", "26/05/2018", "Horror"));
//         movieRepository.save(new Movie("Tekane the champ", "26/05/2020", "Comedy"));
           //movieRepository.save(new Movie("tks the champ", "26/05/2020", "Comedy",4545));
           //movieRepository.save(new Movie("Rambo", "02/06/1992", "Action", 20.00));
           //movieRepository.save(new Movie("Daddy the dog", "08/09/1992", "Action", 20.00));
    }
        
}
