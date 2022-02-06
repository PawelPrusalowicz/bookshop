package application.controllers;

import application.entities.Product;
import application.entities.Stats;
import application.repositories.ProductRepository;
import application.repositories.StatsRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ProductController {

    private final ProductRepository productRepository;
    private final StatsRepository statsRepository;

    public ProductController(ProductRepository productRepository, StatsRepository statsRepository) {

        this.productRepository = productRepository;
        this.statsRepository = statsRepository;
    }

    @GetMapping("/products")
    public List<Product> getProducts() {
        List<Product> p = (List<Product>) productRepository.findProductsBySearchParam("Harry Potter i Kamień Filozoficzny");
        List<Stats> l = statsRepository.select();
        return (List<Product>) productRepository.findAll();
    }


    @GetMapping("/products/{searchParam}")
    public List<Product> searchProducts(@PathVariable String searchParam) {
        List<Stats> l = statsRepository.select();
        return (List<Product>) productRepository.findProductsBySearchParam(searchParam);
    }

    @PostMapping("/products/search")
    public List<Product> searchProductsByParam(@RequestBody String searchParam) {

        return (List<Product>) productRepository.findProductsBySearchParam(searchParam);
    }

    @PostMapping("/products")
    void addProduct(@RequestBody Product product) {
        productRepository.save(product);
    }
}
