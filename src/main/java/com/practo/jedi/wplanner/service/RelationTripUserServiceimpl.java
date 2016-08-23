package com.practo.jedi.wplanner.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.RelationTripUserDao;
import com.practo.jedi.wplanner.data.dao.TripDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.model.RelationTripUser;

@Service
public class RelationTripUserServiceimpl implements RelationTripUserService {

  @Autowired
  private RelationTripUserDao reltripuserrepository;

  @Autowired
  private UserDao userdao;
  
  @Autowired
  private TripDao tripdao;
  
  @Override
  public RelationTripUser get(Integer id) {
    RelationTripUserentity entity = reltripuserrepository.findOne(id);
    try {
      RelationTripUser dto = getDTOClass().newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      return null;
    }
  }

  @Override
  public RelationTripUser create(Integer id,RelationTripUser d) {
    RelationTripUserentity entity = d.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setTrip(tripdao.findOne(id));
    entity.setUser1(userdao.findOne(d.getModifyById()));
    entity.setUser2(userdao.findOne(d.getUserId()));
    entity = reltripuserrepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public RelationTripUser update(RelationTripUser d) {
    RelationTripUserentity entity = d.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setTrip(tripdao.findOne(d.getTripId()));
    entity.setUser1(userdao.findOne(d.getModifyById()));
    entity.setUser2(userdao.findOne(d.getUserId()));
    entity = reltripuserrepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    RelationTripUserentity entity = reltripuserrepository.findOne(id);
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setDeleteStatus("true");
    entity = reltripuserrepository.save(entity);
  }

  @Override
  public Class<RelationTripUser> getDTOClass() {
    return RelationTripUser.class;
  }

}
