package application.controllers;

import application.entities.Client;
import application.repositories.ClientRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class ClientController {

    private final ClientRepository clientRepository;

    public ClientController(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }

    @GetMapping("/clients")
    public List<Client> getClients() {
        return (List<Client>) clientRepository.findAll();
    }

    @PostMapping("/clients")
    void addClient(@RequestBody Client client) {
        clientRepository.save(client);
    }

    @PostMapping("/clients/search")
    public Client searchProductsByParam(@RequestBody String login) {
        return clientRepository.findByLogin(login);
    }
}
