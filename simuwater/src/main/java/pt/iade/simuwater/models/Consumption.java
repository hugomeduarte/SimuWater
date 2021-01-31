package pt.iade.simuwater.models;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity @Table(name="consumos")
public class Consumption {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY) 
    @Column(name="cons_id") private int id;
    @Column(name="cons_tempo") private double time;
    @Column(name="cons_data") private LocalDate date;

    @ManyToOne @JoinColumn(name="atividades_aid")
    @JsonIgnoreProperties("consumptions")
    private Activities activities;

    @ManyToOne @JoinColumn(name="registo_reg_id")
    @JsonIgnoreProperties("consumptions")
    private Registry registries;

    public Consumption(){}

    public int getId() {
        return id;
    }

    public double getTime() {
        return time;
    }

    public LocalDate getDate() {
        return date;
    }

    public Activities getActivities() {
        return activities;
    }

    public Registry getRegistries() {
        return registries;
    }



    
}