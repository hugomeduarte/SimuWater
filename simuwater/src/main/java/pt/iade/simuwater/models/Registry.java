package pt.iade.simuwater.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity @Table(name="registo")
public class Registry {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY) 
    @Column(name="reg_id") private int id;

    @ManyToOne @MapsId("userId") @JoinColumn(name="utilizador_uid")
    @JsonIgnoreProperties("registries")
    private User user;
    
    @ManyToOne @MapsId("residenceId") @JoinColumn(name ="residencia_reid")
    @JsonIgnoreProperties("registries")
    private Residence residence;

    @OneToMany @JoinColumn(name="registo_reg_id")
    @JsonIgnoreProperties("registries")
    private List<Consumption> consumptions;

    public Registry(){}

    public int getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public Residence getResidence() {
        return residence;
    }

    public List<Consumption> getConsumptions() {
        return consumptions;
    }



    










    
}