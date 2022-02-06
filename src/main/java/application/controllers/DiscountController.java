package application.controllers;

import application.entities.Discount;
import application.repositories.DiscountRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class DiscountController {

    private final DiscountRepository discountRepository;

    public DiscountController(DiscountRepository discountRepository) {
        this.discountRepository = discountRepository;
    }

    @PostMapping("/discounts")
    public Discount searchProductsByParam(@RequestBody String discountCode) {
        return discountRepository.findByDiscountCode(discountCode);
    }
    
}
