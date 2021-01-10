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
@Table(name = "utilizador")
public class User {
    @Id @GeneratedValue (strategy= GenerationType.IDENTITY)
    @Column(name="util_id") private int id;
    @Column(name="util_nome") private String name;
    /*@Column(name="util_pass") private String password;*/
    @OneToMany @JoinColumn(name="utilizador_uid")
    @JsonIgnoreProperties("user")
    private List<Registry> registries;

    public User(){}

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    /*public String getPassword() {
        return password;
    }
    */
    public List<Registry> getRegistries() {
        return registries;
    }









}




