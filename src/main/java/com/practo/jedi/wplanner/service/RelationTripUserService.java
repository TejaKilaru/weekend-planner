package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.model.RelationTripUser;

import javax.transaction.Transactional;


public interface RelationTripUserService {


  RelationTripUser get(Integer id);

  @Transactional
  RelationTripUser create(Integer id, RelationTripUser obj);

  @Transactional
  RelationTripUser update(RelationTripUser obj);

  @Transactional
  void delete(Integer id);

}
