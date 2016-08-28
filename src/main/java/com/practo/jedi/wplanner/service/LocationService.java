package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.model.Location;

import org.springframework.transaction.annotation.Transactional;



public interface LocationService {


  Location get(Integer id);

  @Transactional
  Location create(Location obj);

  @Transactional
  Location update(Location obj);

  Iterable<Location> getall();


}
