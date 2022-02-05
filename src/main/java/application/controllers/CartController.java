package application.controllers;

import application.entities.Cart;
import application.repositories.CartRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class CartController {

    private final CartRepository cartRepository;

    public CartController(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

    @GetMapping("/carts")
    public List<Cart> getCarts() {
        return (List<Cart>) cartRepository.findAll();
    }

    @PostMapping("/carts")
    void addCart(@RequestBody Cart cart) {
        cartRepository.save(cart);
    }
}
