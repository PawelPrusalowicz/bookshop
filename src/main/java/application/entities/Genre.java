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

}
