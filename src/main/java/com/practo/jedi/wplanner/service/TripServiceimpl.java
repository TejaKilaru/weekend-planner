package com.practo.jedi.wplanner.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.LocationDao;
import com.practo.jedi.wplanner.data.dao.TripDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

@Service
public class TripServiceimpl implements TripService {

  // @Autowired
  // private CrudRepository<Tripentity, Integer> repository;
  //
  // public CrudRepository<Tripentity, Integer> getRepository() {
  // return repository;
  // }
  @Autowired
  private TripDao triprepository;

  @Autowired
  private LocationDao locationdao;

  @Autowired
  private UserDao userdao;


  @Override
  public Iterable<Trip> filter(TripFilter d) {
    // BooleanExpression predicate = QTripentity.tripentity.deleteStatus.eq("false");
    // predicate = predicate.and(QTripentity.tripentity.locationBean.eq(locationdao.findOne(id)));
    // predicate = predicate.and(QTripentity.tripentity.avgCost.between(1000, 1500));
    // predicate = predicate.and(QTripentity.tripentity.vacancy.goe(1));
    if (d.getLocationid() != 0) {
      d.setLocation(locationdao.findOne(d.getLocationid()));
    }
    Iterable<Tripentity> trips = triprepository.findAll(d.generatequery());
    List<Trip> filtertrips = new ArrayList<Trip>();
    for (Tripentity temp : trips) {
      try {
        Trip dto = Trip.class.newInstance();
        dto.entitytomodel(temp);
        filtertrips.add(dto);
      } catch (InstantiationException | IllegalAccessException e) {
        System.out.printf("Exception while DAO get for ID :" + e);
        return null;
      }
    }
    return filtertrips;
  }

  @Override
  public Iterable<Trip> getall(Pageable pageable) {
//   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//   Date date = new Date(System.currentTimeMillis());
//   System.out.println(date);
//    System.out.println(System.currentTimeMillis());
//    dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
//    Date temp = dateFormat.format(date);
//    System.out.println("UTC Time: " );
    Iterable<Tripentity> entity = triprepository.findAll(pageable);
    List<Trip> alltrips = new ArrayList<Trip>();
    for (Tripentity temp : entity) {
      System.out.println(temp);
      try {
        Trip dto = Trip.class.newInstance();
        dto.entitytomodel(temp);
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
    Tripentity entity = triprepository.findOne(id);
    Iterable<RelationTripUserentity> relentity = entity.getRelationTripUsers();
    List<User> users = new ArrayList<User>();
    for (RelationTripUserentity temp : relentity) {
      try {
        User dto = User.class.newInstance();
        dto.entitytomodel(temp.getUser2());
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
    Tripentity entity = triprepository.findOne(id);
    try {
      Trip dto = getDTOClass().newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      return null;
    }
  }

  @Override
  public Trip create(Trip d) {
    Tripentity entity = d.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setLocationBean(locationdao.findOne(d.getLocationId()));
    entity.setUser(userdao.findOne(d.getOrgId()));
    entity = triprepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public Trip update(Trip d) {
    Tripentity entity = d.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setLocationBean(locationdao.findOne(d.getLocationId()));
    entity.setUser(userdao.findOne(d.getOrgId()));
    entity = triprepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    Tripentity entity = triprepository.findOne(id);
    entity.setDeleteStatus("true");
    entity = triprepository.save(entity);
  }

  @Override
  public Class<Trip> getDTOClass() {
    return Trip.class;
  }

}
