package com.practo.jedi.wplanner.data.dao;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.practo.jedi.wplanner.data.entity.Userentity;

@Transactional
@Repository
public interface UserDao
    extends PagingAndSortingRepository<Userentity, Integer>, CrudRepository<Userentity, Integer> {

  public Userentity findByName(String name);

}
