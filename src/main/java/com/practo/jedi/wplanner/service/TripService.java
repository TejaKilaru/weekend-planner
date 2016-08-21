package com.practo.jedi.wplanner.service;

import javax.transaction.Transactional;

import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

public interface TripService {


  Trip get(Integer id);

  @Transactional
  Trip create(Trip d);

  @Transactional
  Trip update(Trip d);

  @Transactional
  void delete(Integer id);
  
  Iterable<Trip> getall();
  
  Iterable<User> gettripusers(Integer id);

  Class<Trip> getDTOClass();

}
