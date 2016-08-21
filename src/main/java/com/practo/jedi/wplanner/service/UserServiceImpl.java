package com.practo.jedi.wplanner.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.RelationTripUserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.data.entity.Userentity;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;


@Service
public class UserServiceimpl implements UserService {

  @Autowired
  private CrudRepository<Userentity, Integer> repository;

  @Autowired
  private RelationTripUserDao rtripuser;

  public CrudRepository<Userentity, Integer> getRepository() {
    return repository;
  }

  @Override
  public Iterable<User> getall() {
    Iterable<Userentity> entity = repository.findAll();
    List<User> allusers = new ArrayList<User>();
    for (Userentity temp : entity) {
      System.out.println(temp);
      try {
        User dto = User.class.newInstance();
        dto.mergeEntity(temp);
        allusers.add(dto);
      } catch (InstantiationException | IllegalAccessException e) {
        System.out.printf("Exception while DAO get for ID :" + e);
        return null;
      }
    }
    return allusers;
  }

  @Override
  public Iterable<Trip> getusertrips(Integer id) {
    Userentity entity = repository.findOne(id);
    Iterable<Tripentity> tripentity = entity.getTrips();
    List<Trip> usertrips = new ArrayList<Trip>();
    for (Tripentity temp : tripentity) {
      System.out.println(temp);
      try {
        Trip trip = Trip.class.newInstance();
        trip.mergeEntity(temp);
        usertrips.add(trip);
      } catch (InstantiationException | IllegalAccessException e) {
        System.out.printf("Exception while DAO get for ID :" + e);
        return null;
      }
    }
    return usertrips;
  }

  @Override
  public Iterable<Trip> getuserontrips(Integer id) {
    Iterable<RelationTripUserentity> entity = rtripuser.findByUser2Id(id);
    Iterable<Tripentity> tripentity = new ArrayList<Tripentity>();
    for (RelationTripUserentity temp : entity) {
      ((List<Tripentity>) tripentity).add(temp.getTrip());
    }
    List<Trip> userontrips = new ArrayList<Trip>();
    for (Tripentity temp : tripentity) {
      System.out.println(temp);
      try {
        Trip trip = Trip.class.newInstance();
        trip.mergeEntity(temp);
        userontrips.add(trip);
      } catch (InstantiationException | IllegalAccessException e) {
        System.out.printf("Exception while DAO get for ID :" + e);
        return null;
      }
    }
    return userontrips;
  }

  @Override
  public User get(Integer id) {
    Userentity entity = repository.findOne(id);
    try {
      User dto = getDTOClass().newInstance();
      dto.mergeEntity(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      System.out.printf("Exception while DAO get for ID :" + id, e);
      return null;
    }
  }

  @Override
  public User create(User d) {
    Userentity entity = d.qgetEntity();
    entity = repository.save(entity);
    d.mergeEntity(entity);
    return d;
  }

  @Override
  public User update(User d) {
    Userentity entity = d.qgetEntity();
    entity = repository.save(entity);
    d.mergeEntity(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    repository.delete(id);
  }

  @Override
  public Class<User> getDTOClass() {
    return User.class;
  }

}
