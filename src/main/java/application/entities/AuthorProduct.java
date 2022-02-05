package application.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Transient;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "authors_products")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AuthorProduct {

    @ManyToOne
    @JoinColumn(name="product_id")
    @Transient
    @JsonBackReference(value="product-authorproducts")
    private Product product;


    @ManyToOne
    @JoinColumn(name="author_id")
    @Transient
    @JsonBackReference(value="author-authorproducts")
    private Author author;

}
