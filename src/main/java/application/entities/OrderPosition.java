package application.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Transient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "order_positions")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderPosition {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int order_position_id;
    private int quantity;

    @ManyToOne
    @JoinColumn(name="product_id")
    @JsonBackReference(value="orderposition-product")
//    @JsonManagedReference(value="orderposition-product")
    private Product product;

    @ManyToOne
    @JoinColumn(name="order_id")
    @JsonBackReference(value="orderposition-order")
    @Transient
    private Order order;

    @ManyToOne
    @JoinColumn(name="cart_id")
    @JsonBackReference(value="orderposition-cart")
    @Transient
    private Cart cart;

    public String getProductTitle() {
        return product.getTitle();
    }

}
