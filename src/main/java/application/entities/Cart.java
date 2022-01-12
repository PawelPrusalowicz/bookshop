package application.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Transient;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "carts")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Cart {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int cart_id;
    private Date creation_date;

    @OneToMany(mappedBy="cart", cascade = CascadeType.ALL)
    @JsonManagedReference(value="orderposition-cart")
    List<OrderPosition> orderPositions;

    @ManyToOne
    @JoinColumn(name="client_id")
    @Transient
    @JsonBackReference(value="cart-client")
    private Client client;


    @Transient
    public Double getTotalOrderPrice() {
        double sum = 0D;
        for (OrderPosition op : orderPositions) {
            sum += op.getTotalPrice();
        }
        return sum;
    }

    @Transient
    public int getNumberOfProducts() {
        return this.orderPositions.size();
    }
}
