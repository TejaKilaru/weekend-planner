package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

import org.springframework.data.domain.Pageable;

import javax.transaction.Transactional;

public interface TripService {


  Trip get(Integer id);

  @Transactional
  Trip create(Trip obj);

  @Transactional
  Trip update(Trip obj);

  @Transactional
  void delete(Integer id);

  Iterable<Trip> getall(Pageable pageable);

  Iterable<User> gettripusers(Integer id);

  Iterable<Trip> filter(TripFilter obj, Pageable pageable);

}
