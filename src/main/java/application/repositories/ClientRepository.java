package application.repositories;

import application.entities.Client;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ClientRepository extends CrudRepository<Client, Long> {

    String SEARCH_BY_LOGIN = "select distinct c.* from clients c " +
            "join users u on u.client_id = c.client_id ";

    @Query( value = SEARCH_BY_LOGIN, nativeQuery = true)
    Client findByLogin(String login);

}

