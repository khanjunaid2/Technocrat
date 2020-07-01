package com.technocrat.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "attribute")
@Getter
@Setter
@ToString
public class Attributes {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "label")
    private String label;

    @Column(name = "type")
    private String type;

    @Column(name = "att_group_id")
//    @NotNull
    private int attrGrpId;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setAttrGrpId(int attrGrpId) {
        this.attrGrpId = attrGrpId;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLabel() {
        return label;
    }

    public String getType() {
        return type;
    }

    public int getAttrGrpId() {
        return attrGrpId;
    }
}
