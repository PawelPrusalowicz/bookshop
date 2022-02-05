package application.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "genres")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Genre {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int genre_id;
    private String name;
    private String description;

    @OneToMany(mappedBy="genre")
    @JsonManagedReference(value="genre-genreproducts")
    private List<GenreProduct> genresProducts;

}
