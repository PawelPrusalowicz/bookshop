package application.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

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

}
