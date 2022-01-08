package application;

import application.entities.Product;
import application.repositories.ProductRepository;

import java.util.Date;
import java.util.Random;
import java.util.stream.Stream;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }


    @Bean
    CommandLineRunner init(ProductRepository productRepository) {
        return args -> {
            Random rand = new Random(); //instance of random class
            Stream.of("I nie bylo już nikogo",
                    "Slonie maja dobra pamiec",
                    "Morderstwo w Orient Express",
                    "Dom zbrodni",
                    "Wigilia wszystkich swietych").forEach(title -> {
                Product product = new Product(
                        rand.nextInt(50),
                        title,
                        title + " short_desc",
                        title + " long_desc",
                        20.0,
                        2,
                        new java.sql.Date(new Date().getTime()),
                        "Agatha Christie"
                );
                productRepository.save(product);
            });
            productRepository.findAll().forEach(System.out::println);
        };
    }

}
