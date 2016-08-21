package com.practo.jedi.wplanner.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.service.UserService;

@RestController
@RequestMapping("/users")
public class UserController {

  @Autowired
  private UserService service;

  @RequestMapping(value = {"/all", ""}, method = RequestMethod.GET)
  public Iterable<User> getall() {
    Iterable<User> dto = service.getall();
    return dto;
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
  public User get(@PathVariable("id") Integer id) {
    User dto = service.get(id);
    return dto;
  }

  @RequestMapping(value = "/{id}/mytrips", method = RequestMethod.GET)
  public Iterable<Trip> getusertrips(@PathVariable("id") Integer id) {
    Iterable<Trip> dto = service.getusertrips(id);
    return dto;
  }

  @RequestMapping(value = "/{id}/ontrips", method = RequestMethod.GET)
  public Iterable<Trip> getuserontrips(@PathVariable("id") Integer id) {
    Iterable<Trip> dto = service.getuserontrips(id);
    return dto;
  }

  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<User> create(@RequestBody User d) {
    User dto = service.create(d);
    ResponseEntity<User> re = new ResponseEntity<User>(dto, HttpStatus.CREATED);
    return re;
  }

  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<User> update(@RequestBody User d) {
    User dto = service.update(d);
    ResponseEntity<User> re = new ResponseEntity<User>(dto, HttpStatus.OK);
    return re;
  }

}


