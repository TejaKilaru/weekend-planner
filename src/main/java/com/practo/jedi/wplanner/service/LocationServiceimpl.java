package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.data.dao.LocationDao;
import com.practo.jedi.wplanner.data.entity.Locationentity;
import com.practo.jedi.wplanner.model.Location;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

@Transactional
@Service
public class LocationServiceimpl implements LocationService {

  @Autowired
  private LocationDao locationrepository;


  @Override
  public Iterable<Location> getall() {
    Iterable<Locationentity> entity = locationrepository.getAllLocations();
    List<Location> allusers = new ArrayList<Location>();
    for (Locationentity temp : entity) {
      System.out.println(temp);
      try {
        Location dto = Location.class.newInstance();
        dto.entitytomodel(temp);
        allusers.add(dto);
      } catch (InstantiationException | IllegalAccessException obj) {
        System.out.printf("Exception while DAO get for ID :" + obj);
        return null;
      }
    }
    return allusers;
  }

  @Override
  public Location get(Integer id) {
    Locationentity entity = locationrepository.findLocation(id);
    try {
      Location dto = getDTOClass().newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException obj) {
      // LOG.error("Exception while DAO get for ID :" + id, e);
      return null;
    }
  }

  @Override
  public Location create(Location obj) {
    Locationentity entity = obj.modeltoentity();
    entity = locationrepository.createLocation(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Override
  public Location update(Location obj) {
    Locationentity entity = obj.modeltoentity();
    entity = locationrepository.updateLocation(entity);
    obj.entitytomodel(entity);
    return obj;
  }

  @Override
  public void delete(Integer id) {
    // locationrepository.delete(id);
  }

  @Override
  public Class<Location> getDTOClass() {
    return Location.class;
  }

}

