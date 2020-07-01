package com.technocrat.service.impl;

import com.technocrat.model.AttributeGroup;
import com.technocrat.model.Attributes;
import com.technocrat.repository.AttributeGroupRepository;
import com.technocrat.repository.AttributeRepository;
import com.technocrat.service.AttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AttributeServiceImpl implements AttributeService {

    @Autowired
    AttributeGroupRepository attrGrpRepo;
    @Autowired
    AttributeRepository attribute;


    public boolean saveAttrGroup(AttributeGroup model) {
        attrGrpRepo.save(model);
        return true;
    }


    public List<AttributeGroup> getAttrGrp() {
        return attrGrpRepo.findAll();
    }

    public List<Attributes> getAttributes(int attrGrp) {
        return attribute.findAttribute(attrGrp);
    }

    @Override
    public List<Attributes> getAttributes() {
        return attribute.findAll();
    }


    public boolean saveAttr(Attributes model) {
        attribute.save(model);
        return true;
    }

}
