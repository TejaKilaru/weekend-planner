package com.practo.jedi.wplanner.service;

import javax.transaction.Transactional;

import com.practo.jedi.wplanner.model.RelationTripUser;

public interface RelationTripUserService {


  RelationTripUser get(Integer id);

  @Transactional
  RelationTripUser create(Integer id,RelationTripUser d);

  @Transactional
  RelationTripUser update(RelationTripUser d);

  @Transactional
  void delete(Integer id);

  Class<RelationTripUser> getDTOClass();

}
