package application.repositories;


import application.entities.Stats;
import application.repositories.mapper.StatsMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class StatsRepositoryImpl implements StatsRepository {

    private static final String SQL = "SELECT * from monthly_earnings()";
    JdbcTemplate template;

    StatsRepositoryImpl(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public List<Stats> select() {

        return template.query(SQL, new StatsMapper());
    }

}
