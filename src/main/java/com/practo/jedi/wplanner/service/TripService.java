package com.practo.jedi.wplanner.service;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;

import com.practo.jedi.wplanner.filter.TripFilter;
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

  Iterable<Trip> getall(Pageable pageable);

  Iterable<User> gettripusers(Integer id);

  Iterable<Trip> filter(TripFilter id);

  Class<Trip> getDTOClass();

}
