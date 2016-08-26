package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.RelationTripUser;

import javax.transaction.Transactional;


public interface RelationTripUserService {


  RelationTripUser get(Integer id);

  @Transactional
  RelationTripUser create(Integer id, RelationTripUser obj) throws NullEntityException;

  @Transactional
  RelationTripUser update(RelationTripUser obj) throws NullEntityException;

  @Transactional
  void delete(Integer id);

}
