package com.practo.jedi.wplanner.controllers;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.service.TripService;

@RestController
@RequestMapping("/trips")
public class TripController {

  @Autowired
  private TripService service;

  @RequestMapping(value = {"/search"}, method = RequestMethod.GET)
  public Iterable<Trip> search(TripFilter d) {
    Iterable<Trip> dto = service.filter(d);
    return dto;
  }

  @RequestMapping(value = {"", "/all"}, method = RequestMethod.GET)
  public Iterable<Trip> getall(Pageable pageable) {
    Iterable<Trip> dto = service.getall(pageable);
    return dto;
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
  public Trip get(@PathVariable("id") Integer id) {
    Trip dto = service.get(id);
    return dto;
  }

  @RequestMapping(value = "/{id}/users", method = RequestMethod.GET)
  public Iterable<User> gettripusers(@PathVariable("id") Integer id) {
    Iterable<User> dto = service.gettripusers(id);
    return dto;
  }

  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Trip> create(@RequestBody Trip d) {
    Trip dto = service.create(d);
    ResponseEntity<Trip> re = new ResponseEntity<Trip>(dto, HttpStatus.CREATED);
    return re;
  }

  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<Trip> update(@RequestBody Trip d) {
    Trip dto = service.update(d);
    ResponseEntity<Trip> re = new ResponseEntity<Trip>(dto, HttpStatus.OK);
    return re;
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<Boolean> delete(@PathVariable("id") Integer id,
      HttpServletResponse response) {
    service.delete(id);
    ResponseEntity<Boolean> re = new ResponseEntity<Boolean>(true, HttpStatus.NO_CONTENT);
    return re;
  }
}
