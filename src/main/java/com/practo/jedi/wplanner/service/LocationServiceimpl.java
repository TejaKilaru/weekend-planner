package com.practo.jedi.wplanner.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.practo.jedi.wplanner.data.dao.LocationDao;
import com.practo.jedi.wplanner.data.entity.Locationentity;
import com.practo.jedi.wplanner.data.entity.Userentity;
import com.practo.jedi.wplanner.model.Location;
import com.practo.jedi.wplanner.model.User;

@Service
public class LocationServiceimpl implements LocationService {

  @Autowired
  private LocationDao locationrepository;
  
  @Override
  public Iterable<Location> getall() {
    Iterable<Locationentity> entity = locationrepository.findAll();
    List<Location> allusers = new ArrayList<Location>();
    for (Locationentity temp : entity) {
      System.out.println(temp);
      try {
        Location dto = Location.class.newInstance();
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
  public Location get(Integer id) {
    Locationentity entity = locationrepository.findOne(id);
    try {
      Location dto = getDTOClass().newInstance();
      dto.entitytomodel(entity);
      return dto;
    } catch (InstantiationException | IllegalAccessException e) {
      // LOG.error("Exception while DAO get for ID :" + id, e);
      return null;
    }
  }

  @Override
  public Location create(Location d) {
    Locationentity entity = d.modeltoentity();
    entity = locationrepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public Location update(Location d) {
    Locationentity entity = d.modeltoentity();
    entity = locationrepository.save(entity);
    d.entitytomodel(entity);
    return d;
  }

  @Override
  public void delete(Integer id) {
    locationrepository.delete(id);
  }

  @Override
  public Class<Location> getDTOClass() {
    return Location.class;
  }

}

