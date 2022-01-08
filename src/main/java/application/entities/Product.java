package application.entities;


import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Product {

    @Id
    private int id;
    private String title;
    private String shortDescription;
    private String longDescription;
    private double price;
    private int availableQuantity;
    private Date establishmentDate;
    private String author;

}
