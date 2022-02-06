package application.repositories.mapper;

import application.entities.Stats;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class StatsMapper implements RowMapper<Stats> {
    @Override
    public Stats mapRow(ResultSet rs, int rowNum) throws SQLException {

        Stats stats = new Stats();
        stats.setMonth(rs.getString("month"));
        stats.setSum(rs.getDouble("sum"));
        stats.setOrderNumber(rs.getInt("order_number"));
        stats.setClientsNumber(rs.getInt("clients_number"));
        stats.setProductCount(rs.getInt("product_count"));

        return stats;
    }
}
