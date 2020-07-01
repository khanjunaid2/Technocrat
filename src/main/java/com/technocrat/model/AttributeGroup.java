package com.technocrat.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "attribute_group")
@Getter
@Setter
@ToString
public class AttributeGroup {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryGrpId;

    @Column(name = "group_name")
//    @NotNull
    private String groupName;

    public int getCategoryGrpId() {
        return categoryGrpId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setCategoryGrpId(int categoryGrpId) {
        this.categoryGrpId = categoryGrpId;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
}
