package com.practo.jedi.wplanner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.TripDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.model.RelationTripUser;

@Service
public class RelationTripUserServiceimpl implements RelationTripUserService {

  @Autowired
  private CrudRepository<RelationTripUserentity, Integer> repository;

  public CrudRepository<RelationTripUserentity, Integer> getRepository() {
    return repository;
  }

  @Autowired
  private UserDao userdao;
  
  @Autowired
  private TripDao tripdao;
  
  @Override
  public RelationTripUser get(Integer id) {
    RelationTripUserentity entity = repository.findOne(id);
    try {
      RelationTripUser dto = getDTOClass().newInstance();
      dto.mergeEntity(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      return null;
    }
  }

  @Override
  public RelationTripUser create(RelationTripUser d) {
    RelationTripUserentity entity = d.qgetEntity();
    entity.setTrip(tripdao.findOne(d.getTripId()));
    entity.setUser1(userdao.findOne(d.getModifyById()));
    entity.setUser2(userdao.findOne(d.getUserId()));
    entity = repository.save(entity);
    d.mergeEntity(entity);
    return d;
  }

  @Override
  public RelationTripUser update(RelationTripUser d) {
    RelationTripUserentity entity = d.qgetEntity();
    entity.setTrip(tripdao.findOne(d.getTripId()));
    entity.setUser1(userdao.findOne(d.getModifyById()));
    entity.setUser2(userdao.findOne(d.getUserId()));
    entity = repository.save(entity);
    d.mergeEntity(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    RelationTripUserentity entity = repository.findOne(id);
    entity.setDeleteStatus("true");
    entity = repository.save(entity);
  }

  @Override
  public Class<RelationTripUser> getDTOClass() {
    return RelationTripUser.class;
  }

}
