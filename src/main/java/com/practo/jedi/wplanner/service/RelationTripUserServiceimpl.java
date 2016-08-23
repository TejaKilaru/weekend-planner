package com.practo.jedi.wplanner.service;


import com.practo.jedi.wplanner.data.dao.RelationTripUserDao;
import com.practo.jedi.wplanner.data.dao.TripDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.model.RelationTripUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

import javax.transaction.Transactional;

@Service
@Transactional
public class RelationTripUserServiceimpl implements RelationTripUserService {

  @Autowired
  private RelationTripUserDao reltripuserrepository;

  @Autowired
  private UserDao userdao;

  @Autowired
  private TripDao tripdao;

  @Override
  public RelationTripUser get(Integer id) {
    RelationTripUserentity entity = reltripuserrepository.findRel(id);
    try {
      RelationTripUser dto = RelationTripUser.class.newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException obj) {
      return null;
    }
  }

  @Override
  public RelationTripUser create(Integer id, RelationTripUser obj) {
    RelationTripUserentity entity = obj.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setTrip(tripdao.findTrip(id));
    entity.setUser1(userdao.findUser(obj.getModifyById()));
    entity.setUser2(userdao.findUser(obj.getUserId()));
    entity = reltripuserrepository.createRel(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Override
  public RelationTripUser update(RelationTripUser obj) {
    RelationTripUserentity entity = obj.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setTrip(tripdao.findTrip(obj.getTripId()));
    entity.setUser1(userdao.findUser(obj.getModifyById()));
    entity.setUser2(userdao.findUser(obj.getUserId()));
    entity = reltripuserrepository.updateRel(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Override
  public void delete(Integer id) {
    RelationTripUserentity entity = reltripuserrepository.findRel(id);
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setDeleteStatus("true");
    entity = reltripuserrepository.updateRel(entity);
  }

}
