package com.practo.jedi.wplanner.data.dao;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;

@Transactional
@Repository
public interface RelationTripUserDao extends CrudRepository<RelationTripUserentity, Integer> {

  public List<RelationTripUserentity> findByUser2Id(Integer id);
  
}
