package com.practo.jedi.wplanner.service;


import javax.transaction.Transactional;

import com.practo.jedi.wplanner.model.Location;
import com.practo.jedi.wplanner.model.User;

public interface LocationService {


  Location get(Integer id);

  @Transactional
  Location create(Location d);

  @Transactional
  Location update(Location d);

  @Transactional
  void delete(Integer id);
  
  Iterable<Location> getall();

  Class<Location> getDTOClass();

}
