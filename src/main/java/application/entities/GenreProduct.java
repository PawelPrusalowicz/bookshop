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
@Table(name = "genres_products")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class GenreProduct {

    @ManyToOne
    @JoinColumn(name="product_id")
    @Transient
    @JsonBackReference(value="product-genreproducts")
    private Product product;


    @ManyToOne
    @JoinColumn(name="genre_id")
    @Transient
    @JsonBackReference(value="genre-genreproducts")
    private Genre genre;

}
