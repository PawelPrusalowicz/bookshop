package application.entities;


import lombok.*;


import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "products")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Product {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="product_id")
    private int id;
    private String title;
    private String shortDescription;
    private String longDescription;
    private double price;
    private int availableQuantity;
    private Date establishmentDate;

}
