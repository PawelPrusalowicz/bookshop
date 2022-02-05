package application.repositories;

import application.entities.OrderPosition;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderPositionRepository extends CrudRepository<OrderPosition, Long> {}
