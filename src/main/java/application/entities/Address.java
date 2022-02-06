package application.entities;

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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "addresses")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Address {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int address_id;
    private String street;
    private String buildingNo;
    private String apartamentNo;
    private String city;
    private String country;
    private String postCode;

    @OneToMany(mappedBy="address")
    @JsonManagedReference(value="order-address")
    private List<Order> orders;

    @OneToMany(mappedBy="address")
    @JsonManagedReference(value="client-address")
    private List<Client> clients;

}
