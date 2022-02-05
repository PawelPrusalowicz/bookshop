package application.controllers;

import application.entities.Client;
import application.entities.Product;
import application.repositories.ClientRepository;
import application.repositories.ProductRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ProductController {

    private final ProductRepository productRepository;
    private final ClientRepository clientRepository;

    public ProductController(ProductRepository productRepository, ClientRepository clientRepository) {
        this.productRepository = productRepository;
        this.clientRepository = clientRepository;
    }

    @GetMapping("/products")
    public List<Product> getProducts() {
        List<Client> clients = (List<Client>) clientRepository.findAll();
        return (List<Product>) productRepository.findAll();
    }

    @PostMapping("/products")
    void addProduct(@RequestBody Product product) {
        productRepository.save(product);
    }
}
