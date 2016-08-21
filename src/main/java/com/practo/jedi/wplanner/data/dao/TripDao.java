package com.practo.jedi.wplanner.data.dao;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.practo.jedi.wplanner.data.entity.Tripentity;

@Transactional
@Repository
public interface TripDao extends CrudRepository<Tripentity, Integer> {


}
