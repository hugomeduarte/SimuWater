package pt.iade.simuwater.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;



@Entity
@Table(name = "atividades")
public class Activities {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY)
    @Column(name="ativ_id") private int id;
    @Column(name="ativ_nome") private String name;
    @Column(name="ativ_taxa") private double taxa;

    @OneToMany @JoinColumn(name="atividades_aid")
    @JsonIgnoreProperties("activities")
    private List<Consumption> consumptions;


    public Activities(){}

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getTaxa() {
        return taxa;
    }

  


}

