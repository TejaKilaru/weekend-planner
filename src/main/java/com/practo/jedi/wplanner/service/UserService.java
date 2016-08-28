package com.practo.jedi.wplanner.service;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;



public interface UserService {

  @Transactional
  User get(Integer id);

  @Transactional
  User findByEmail(String email);

  @Transactional
  User create(User obj);

  @Transactional
  User update(User obj);

  Iterable<User> getall(Pageable pageable);

  Iterable<Trip> getusertrips(Integer id);

  Iterable<Trip> getuserontrips(Integer id);

}
