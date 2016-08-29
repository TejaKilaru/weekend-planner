package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.data.dao.RelationTripUserDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.data.entity.Userentity;
import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;



@Service
public class UserServiceimpl implements UserService {

  @Autowired
  private UserDao userrepository;

  @Autowired
  private RelationTripUserDao rtripuser;

  final int itemsPerPage = 5;

  @Transactional
  @Override
  public Iterable<User> getall(Pageable pageable) {
    Iterable<Userentity> entity = userrepository
        .getAllUsers(new PageRequest(pageable.getPageNumber(), itemsPerPage, pageable.getSort()));
    List<User> allusers = new ArrayList<User>();
    for (Userentity temp : entity) {
      try {
        User dto = User.class.newInstance();
        dto.entitytomodel(temp);
        allusers.add(dto);
      } catch (InstantiationException | IllegalAccessException err) {
        System.out.printf("Exception while DAO get for ID :" + err);
        return null;
      }
    }
    return allusers;
  }

  @Transactional
  @Override
  public Iterable<Trip> getusertrips(Integer id) {
    Userentity entity = userrepository.findUser(id);
    Iterable<Tripentity> tripentity = entity.getTrips();
    List<Trip> usertrips = new ArrayList<Trip>();
    for (Tripentity temp : tripentity) {
      System.out.println(temp);
      try {
        Trip trip = Trip.class.newInstance();
        trip.entitytomodel(temp);
        usertrips.add(trip);
      } catch (InstantiationException | IllegalAccessException err) {
        System.out.printf("Exception while DAO get for ID :" + err);
        return null;
      }
    }
    return usertrips;
  }

  @Transactional
  @Override
  public Iterable<Trip> getuserontrips(Integer id) {
    Iterable<RelationTripUserentity> entity = rtripuser.findByUser2Id(id);
    Iterable<Tripentity> tripentity = new ArrayList<Tripentity>();
    for (RelationTripUserentity temp : entity) {
      ((List<Tripentity>) tripentity).add(temp.getTrip());
    }
    List<Trip> userontrips = new ArrayList<Trip>();
    for (Tripentity temp : tripentity) {
      try {
        Trip trip = Trip.class.newInstance();
        trip.entitytomodel(temp);
        userontrips.add(trip);
      } catch (InstantiationException | IllegalAccessException err) {
        System.out.printf("Exception while DAO get for ID :" + err);
        return null;
      }
    }
    return userontrips;
  }

  @Transactional
  @Override
  public User get(Integer id) {
    Userentity entity = userrepository.findUser(id);
    User dto = new User();
    dto.entitytomodel(entity);
    return dto;
  }

  @Transactional
  @Override
  public User findByEmail(String key) {
    Userentity entity = userrepository.findByEmail(key);
    User dto = new User();
    dto.entitytomodel(entity);
    return dto;
  }

  @Transactional
  @Override
  public User create(User obj) {
    Userentity entity = obj.modeltoentity();
    entity = userrepository.createUser(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Transactional
  @Override
  public User update(User obj) {
    Userentity entity = obj.modeltoentity();
    entity = userrepository.updateUser(entity);
    obj.entitytomodel(entity);
    return obj;
  }

}
