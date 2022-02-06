package application.controllers;

import application.entities.Discount;
import application.entities.Product;
import application.repositories.ProductRepository;
import application.repositories.DiscountRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ProductController {

    private final ProductRepository productRepository;
    private final DiscountRepository discountRepository;

    public ProductController(ProductRepository productRepository, DiscountRepository discountRepository) {

        this.productRepository = productRepository;
        this.discountRepository = discountRepository;
    }

    @GetMapping("/products")
    public List<Product> getProducts() {
        Discount s = discountRepository.findByDiscountCode("ABCDEFXYZ");
        return (List<Product>) productRepository.findAll();
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
