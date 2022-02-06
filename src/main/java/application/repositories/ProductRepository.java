package application.repositories;

import application.entities.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {


    String SEARCH_BY_PARAM = "select distinct p.* from products p " +
                    "join authors_products ap on p.product_id = ap.product_id " +
                    "join authors a on a.author_id = ap.author_id  " +
                    "where p.title like %:param% " +
                    "or a.last_name like %:param% " +
                    "or a.first_name || ' ' ||a.last_name like %:param% ";


    @Query( value = SEARCH_BY_PARAM, nativeQuery = true)
    Iterable<Product> findProductsBySearchParam(@Param("param") String searchParam);

}
