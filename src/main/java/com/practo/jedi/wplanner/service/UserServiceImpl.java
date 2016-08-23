package com.practo.jedi.wplanner.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.RelationTripUserDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.data.entity.Userentity;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;


@Service
public class UserServiceimpl implements UserService {

  @Autowired
  private UserDao userrepository;

  @Autowired
  private RelationTripUserDao rtripuser;

  final int ItemsPerPage = 2;

  @Override
  public Iterable<User> getall(Pageable pageable) {
    Iterable<Userentity> entity = userrepository
        .findAll(new PageRequest(pageable.getPageNumber(), this.ItemsPerPage, pageable.getSort()));
    List<User> allusers = new ArrayList<User>();
    for (Userentity temp : entity) {
      System.out.println(temp);
      try {
        User dto = User.class.newInstance();
        dto.entitytomodel(temp);
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
    Userentity entity = userrepository.findOne(id);
    Iterable<Tripentity> tripentity = entity.getTrips();
    List<Trip> usertrips = new ArrayList<Trip>();
    for (Tripentity temp : tripentity) {
      System.out.println(temp);
      try {
        Trip trip = Trip.class.newInstance();
        trip.entitytomodel(temp);
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
        trip.entitytomodel(temp);
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
    Userentity entity = userrepository.findOne(id);
    try {
      User dto = getDTOClass().newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      System.out.printf("Exception while DAO get for ID :" + id, e);
      return null;
    }
  }

  @Override
  public User create(User d) {
    Userentity entity = d.modeltoentity();
    entity = userrepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public User update(User d) {
    Userentity entity = d.modeltoentity();
    entity = userrepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    userrepository.delete(id);
  }

  @Override
  public Class<User> getDTOClass() {
    return User.class;
  }

}
