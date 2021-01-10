package pt.iade.simuwater.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity @Table(name="registo")
@IdClass(RegistryId.class)
public class Registry {
    @Column(name="reg_id") private int id;

    @Id @Column(name ="utilizador_uid")
    @JsonIgnore private int userId;
    @ManyToOne @MapsId("userId") @JoinColumn(name="utilizador_uid")
    @JsonIgnoreProperties("registries")
    private User user;
    
    @Id @Column(name ="residencia_reid")
    @JsonIgnore private int residenceId;
    @ManyToOne @MapsId("residenceId") @JoinColumn(name ="residencia_reid")
    @JsonIgnoreProperties("registries")
    private Residence residence;

    public Registry(){}

    public int getId() {
        return id;
    }

    public int getUserId() {
        return userId;
    }

    public User getUser() {
        return user;
    }

    public int getResidenceId() {
        return residenceId;
    }

    public Residence getResidence() {
        return residence;
    }










    
}