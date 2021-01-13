package pt.iade.simuwater.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "atividades")
public class Activities {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY)
    @Column(name="ativ_id") private int id;
    @Column(name="ativ_banho") private double banho;
    @Column(name="ativ_louça") private double louça;
    @Column(name="ativ_roupa") private double roupa;
    @Column(name="ativ_higiene") private double higiene;
    @Column(name="ativ_cozinhados") private double cozinhados;
    
    @OneToMany @JoinColumn(name="atividades_aid")
    @JsonIgnoreProperties("activities")
    private List<Registry> registries;

    /*@OneToOne(mappedBy = "activities", cascade = CascadeType.ALL, orphanRemoval = true)
    private Results results;*/

    public Activities(){}

    public int getId() {
        return id;
    }

    public double getBanho() {
        return banho;
    }

     public double getLouça() {
        return louça;
    }

    public double getRoupa() {
        return roupa;
    }

    public double getHigiene() {
        return higiene;
    }

    public double getCozinhados() {
        return cozinhados;
    }

    
    public List<Registry> getRegistries() {
        return registries;
    }
    

    /*public Results getResults() {
        return results;
    }*/


   
    

}

