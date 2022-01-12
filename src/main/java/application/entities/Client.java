package application.entities;


import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "clients")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Client {

    @Id
    private int id;
    private String firstName;
    private String lastName;
    private String companyName;
    private String nip;
    private String phoneNumber;
    private String email;
    private boolean loyaltyCard;
    private boolean newsletterAgreement;

}


