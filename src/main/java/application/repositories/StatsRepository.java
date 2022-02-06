package application.repositories;

import application.entities.Stats;
import java.util.List;


public interface StatsRepository {

    List<Stats> select();
}
