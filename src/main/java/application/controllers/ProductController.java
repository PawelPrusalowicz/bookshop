package application.controllers;

import application.entities.Product;
import application.repositories.ProductRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ProductController {

    private final ProductRepository productRepository;

    public ProductController(ProductRepository productRepository) {

        this.productRepository = productRepository;
    }

    @GetMapping("/products")
    public List<Product> getProducts() {
        return (List<Product>) productRepository.findAllAvailable();
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
