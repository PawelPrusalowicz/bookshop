package application.controllers;

import application.entities.Stats;
import application.repositories.StatsRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class SalesStatsController {

    private final StatsRepository statsRepository;

    public SalesStatsController(StatsRepository statsRepository) {
        this.statsRepository = statsRepository;
    }

    @GetMapping("/stats")
    public List<Stats> getStats() {
        return (List<Stats>) statsRepository.select();
    }

}
