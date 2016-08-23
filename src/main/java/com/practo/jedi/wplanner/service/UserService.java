package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

import org.springframework.data.domain.Pageable;

import javax.transaction.Transactional;


public interface UserService {


  User get(Integer id);

  @Transactional
  User create(User obj);

  @Transactional
  User update(User obj);

  @Transactional
  void delete(Integer id);

  Iterable<User> getall(Pageable pageable);

  Iterable<Trip> getusertrips(Integer id);

  Iterable<Trip> getuserontrips(Integer id);

}
