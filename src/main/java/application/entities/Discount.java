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
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "discounts")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Discount {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int discountId;
    private String discountCode;
    private Date startDate;
    private Date endDate;
    private int percentage;

    @OneToMany(mappedBy="discount")
    @JsonManagedReference(value="order-discount")
    private List<Order> orders;
}
