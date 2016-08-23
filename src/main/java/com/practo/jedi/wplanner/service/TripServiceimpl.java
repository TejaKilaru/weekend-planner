package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.data.dao.LocationDao;
import com.practo.jedi.wplanner.data.dao.TripDao;
import com.practo.jedi.wplanner.data.dao.UserDao;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;


@Service
@Transactional
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

  final int itemsPerPage = 2;


  @Override
  public Iterable<Trip> filter(TripFilter obj, Pageable pageable) {
    // BooleanExpression predicate = QTripentity.tripentity.deleteStatus.eq("false");
    // predicate = predicate.and(QTripentity.tripentity.locationBean.eq(locationdao.findOne(id)));
    // predicate = predicate.and(QTripentity.tripentity.avgCost.between(1000, 1500));
    // predicate = predicate.and(QTripentity.tripentity.vacancy.goe(1));
    if (obj.getLocationid() != 0) {
      obj.setLocation(locationdao.findLocation(obj.getLocationid()));
    }
    Iterable<Tripentity> trips = triprepository.filter(obj.generatequery(),
        new PageRequest(pageable.getPageNumber(), itemsPerPage, pageable.getSort()));
    List<Trip> filtertrips = new ArrayList<Trip>();
    for (Tripentity temp : trips) {
      try {
        Trip dto = Trip.class.newInstance();
        dto.entitytomodel(temp);
        filtertrips.add(dto);
      } catch (InstantiationException | IllegalAccessException err) {
        System.out.printf("Exception while DAO get for ID :" + err);
        return null;
      }
    }
    return filtertrips;
  }

  @Override
  public Iterable<Trip> getall(Pageable pageable) {
    // DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    // Date date = new Date(System.currentTimeMillis());
    // System.out.println(date);
    // System.out.println(System.currentTimeMillis());
    // dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    // Date temp = dateFormat.format(date);
    // System.out.println("UTC Time: " );
    Iterable<Tripentity> entity = triprepository
        .getAllTrips(new PageRequest(pageable.getPageNumber(), itemsPerPage, pageable.getSort()));
    List<Trip> alltrips = new ArrayList<Trip>();
    for (Tripentity temp : entity) {
      System.out.println(temp);
      try {
        Trip dto = Trip.class.newInstance();
        dto.entitytomodel(temp);
        alltrips.add(dto);
      } catch (InstantiationException | IllegalAccessException err) {
        System.out.printf("Exception while DAO get for ID :" + err);
        return null;
      }
    }
    return alltrips;
  }

  @Override
  public Iterable<User> gettripusers(Integer id) {
    Tripentity entity = triprepository.findTrip(id);
    Iterable<RelationTripUserentity> relentity = entity.getRelationTripUsers();
    List<User> users = new ArrayList<User>();
    for (RelationTripUserentity temp : relentity) {
      try {
        User dto = User.class.newInstance();
        dto.entitytomodel(temp.getUser2());
        users.add(dto);
      } catch (InstantiationException | IllegalAccessException err) {
        System.out.printf("Exception while DAO get for ID :" + err);
        return null;
      }
    }
    return users;
  }

  @Override
  public Trip get(Integer id) {
    Tripentity entity = triprepository.findTrip(id);
    try {
      Trip dto = Trip.class.newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException err) {
      return null;
    }
  }

  @Override
  public Trip create(Trip obj) {
    Tripentity entity = obj.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setLocationBean(locationdao.findLocation(obj.getLocationId()));
    entity.setUser(userdao.findUser(obj.getOrgId()));
    entity = triprepository.createTrip(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Override
  public Trip update(Trip obj) {
    Tripentity entity = obj.modeltoentity();
    entity.setModifyOn(new Date(System.currentTimeMillis()));
    entity.setLocationBean(locationdao.findLocation(obj.getLocationId()));
    entity.setUser(userdao.findUser(obj.getOrgId()));
    entity = triprepository.updateTrip(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Override
  public void delete(Integer id) {
    Tripentity entity = triprepository.findTrip(id);
    entity.setDeleteStatus("true");
    entity = triprepository.updateTrip(entity);
  }

}
