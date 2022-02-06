package application.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Stats {

    private String month;
    private Double sum;
    private int orderNumber;
    private int clientsNumber;
    private int productCount;
}
