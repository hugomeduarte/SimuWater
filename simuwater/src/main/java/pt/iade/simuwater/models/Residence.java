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
@Table(name = "residencia")
public class Residence {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY)
    @Column(name="res_id") private int id;
    @Column(name="res_morada") private String adress;
    @Column(name="res_numero") private String number;
    @Column(name="res_tipo") private String residencetype;
    @Column(name="res_escalao") private String escalao;

    @OneToMany @JoinColumn(name="residencia_reid")
    @JsonIgnoreProperties("residences")
    private List<Registry> registries;

    
    public Residence(){}

    public int getId() {
        return id;
    }

    public String getAdress() {
        return adress;
    }

    public String getNumber() {
        return number;
    }

    public String getResidencetype() {
        return residencetype;
    }

    public List<Registry> getRegistries() {
        return registries;
    }





    
 



}