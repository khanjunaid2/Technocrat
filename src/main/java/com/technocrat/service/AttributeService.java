package com.technocrat.service;


import com.technocrat.model.AttributeGroup;
import com.technocrat.model.Attributes;

import java.util.List;

public interface AttributeService {
    public boolean saveAttrGroup(AttributeGroup model);
    public List<AttributeGroup> getAttrGrp();
    public List<Attributes> getAttributes(int attrGrp);
    public List<Attributes> getAttributes();
    public boolean saveAttr(Attributes model);
}
