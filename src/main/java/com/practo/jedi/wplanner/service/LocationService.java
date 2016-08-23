package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.model.Location;

import javax.transaction.Transactional;



public interface LocationService {


  Location get(Integer id);

  @Transactional
  Location create(Location obj);

  @Transactional
  Location update(Location obj);

  @Transactional
  void delete(Integer id);

  Iterable<Location> getall();

  Class<Location> getDTOClass();

}
