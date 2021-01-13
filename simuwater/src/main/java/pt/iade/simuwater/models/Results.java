package pt.iade.simuwater.models;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="resultados")

public class Results {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY)
    @Column(name="resul_id") private int id;
    @Column(name="resul_consumos") private String consumos ;
    @Column(name="resul_dicas") private String dicas;
    @Column(name="resul_data") private LocalDate data;
    @Column(name="resul_conta") private String conta;
    @Column(name="resul_parametros_onu") private int parametros_onu;

    /*@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "atividades_aid")
    private Activities activities;*/

    @ManyToOne @JoinColumn(name = "residencia_reid")
    private Residence residence;


public Results(){}

public int getId() {
    return id;
}


public String getConsumos() {
    return consumos;
}


public String getDicas() {
    return dicas;
}


public LocalDate getData() {
    return data;
}


public String getConta() {
    return conta;
}


public int getParametros_onu() {
    return parametros_onu;
}


public Residence getResidence() {
    return residence;
}

/*public Activities getActivities() {
    return activities;
}*/









}

