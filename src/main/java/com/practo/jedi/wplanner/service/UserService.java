package com.practo.jedi.wplanner.service;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;

import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;

public interface UserService {


  User get(Integer id);

  @Transactional
  User create(User d);

  @Transactional
  User update(User d);

  @Transactional
  void delete(Integer id);
  
  Iterable<User> getall(Pageable pageable);
  
  Iterable<Trip> getusertrips(Integer id);
  
  Iterable<Trip> getuserontrips(Integer id);
  
  Class<User> getDTOClass();
  
}
