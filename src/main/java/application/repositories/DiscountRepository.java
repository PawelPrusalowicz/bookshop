package application.repositories;

import application.entities.Discount;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DiscountRepository extends CrudRepository<Discount, Long> {

    Discount findByDiscountCode(String discountCode);
}

