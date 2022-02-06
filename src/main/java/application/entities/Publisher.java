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
import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "publishers")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Publisher {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int publisher_id;
    private String name;
    private String shortDescription;
    private String longDescription;
    private Date establishmentDate;

    @OneToMany(mappedBy="product")
    @JsonManagedReference(value="product-publisher")
    private List<OrderPosition> products;

}
