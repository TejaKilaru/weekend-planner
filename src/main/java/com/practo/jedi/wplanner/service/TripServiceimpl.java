package com.practo.jedi.wplanner.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.LocationDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

@Service
public class TripServiceimpl implements TripService {

  @Autowired
  private CrudRepository<Tripentity, Integer> repository;

  public CrudRepository<Tripentity, Integer> getRepository() {
    return repository;
  }

  @Autowired
  private LocationDao locationdao;

  @Autowired
  private UserDao userdao;

  @Override
  public Iterable<Trip> getall() {
    Iterable<Tripentity> entity = repository.findAll();
    List<Trip> alltrips = new ArrayList<Trip>();
    for (Tripentity temp : entity) {
      System.out.println(temp);
      try {
        Trip dto = Trip.class.newInstance();
        dto.mergeEntity(temp);
        alltrips.add(dto);
      } catch (InstantiationException | IllegalAccessException e) {
        System.out.printf("Exception while DAO get for ID :" + e);
        return null;
      }
    }
    return alltrips;
  }

  @Override
  public Iterable<User> gettripusers(Integer id) {
    Tripentity entity = repository.findOne(id);
    Iterable<RelationTripUserentity> relentity = entity.getRelationTripUsers();
    List<User> users = new ArrayList<User>();
    for (RelationTripUserentity temp : relentity) {
      try {
        User dto = User.class.newInstance();
        dto.mergeEntity(temp.getUser2());
        users.add(dto);
      } catch (InstantiationException | IllegalAccessException e) {
        System.out.printf("Exception while DAO get for ID :" + e);
        return null;
      }
    }
    return users;
  }

  @Override
  public Trip get(Integer id) {
    Tripentity entity = repository.findOne(id);
    try {
      Trip dto = getDTOClass().newInstance();
      dto.mergeEntity(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      return null;
    }
  }

  @Override
  public Trip create(Trip d) {
    Tripentity entity = d.qgetEntity();
    entity.setLocationBean(locationdao.findOne(d.getLocationId()));
    entity.setUser(userdao.findOne(d.getOrgId()));
    entity = repository.save(entity);
    d.mergeEntity(entity);
    return d;
  }

  @Override
  public Trip update(Trip d) {
    Tripentity entity = d.qgetEntity();
    entity.setLocationBean(locationdao.findOne(d.getLocationId()));
    entity.setUser(userdao.findOne(d.getOrgId()));
    entity = repository.save(entity);
    d.mergeEntity(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    Tripentity entity = repository.findOne(id);
    entity.setDeleteStatus("true");
    entity = repository.save(entity);
  }

  @Override
  public Class<Trip> getDTOClass() {
    return Trip.class;
  }

}
