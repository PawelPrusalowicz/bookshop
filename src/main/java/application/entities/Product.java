package application.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.sql.Date;
import java.util.List;

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
    private int product_id;
    private String title;
    private String shortDescription;
    private String longDescription;
    private double price;
    private int availableQuantity;
    private Date establishmentDate;

    @OneToMany(mappedBy="product")
//    @JsonBackReference(value="orderposition-product")
    @JsonManagedReference(value="orderposition-product")
    private List<OrderPosition> orderPositions;


    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "authors_products",
            joinColumns = { @JoinColumn(name = "product_id") },
            inverseJoinColumns = { @JoinColumn(name = "author_id") }
    )
    private List<Author> authors;

    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "genres_products",
            joinColumns = { @JoinColumn(name = "product_id") },
            inverseJoinColumns = { @JoinColumn(name = "genre_id") }
    )
    private List<Genre> genres;

}
