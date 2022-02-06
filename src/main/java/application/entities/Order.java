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
@Table(name = "orders")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Order {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int orderId;
    private Date creationTime;
    private Double orderPrice;
    private String status;
    private Date invoiceDate;


    @OneToMany(mappedBy="order", cascade = CascadeType.ALL)
    @JsonManagedReference(value="orderposition-order")
    List<OrderPosition> orderPositions;

    @ManyToOne
    @JoinColumn(name="client_id")
    @Transient
    @JsonBackReference(value="order-client")
    private Client client;


    @ManyToOne
    @JoinColumn(name="discount_id")
    @Transient
    @JsonBackReference(value="order-discount")
    private Discount discount;


    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="address_id")
    @JsonBackReference(value="order-address")
    private Address address;

}
