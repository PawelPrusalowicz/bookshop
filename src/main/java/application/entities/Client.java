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
@Table(name = "clients")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Client {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int client_id;
    private String firstName;
    private String lastName;
    private String companyName;
    private String nip;
    private String phoneNumber;
    private String email;
    private boolean loyaltyCard;
    private boolean newsletterAgreement;

    @OneToMany(mappedBy="client")
    @JsonManagedReference(value="cart-client")
    private List<Cart> carts;


}


