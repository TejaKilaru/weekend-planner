package com.practo.jedi.wplanner.controllers;


import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.service.TripService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/trips")
public class TripController {

  @Autowired
  private TripService service;

  @RequestMapping(value = {"/search"}, method = RequestMethod.GET)
  public Iterable<Trip> search(TripFilter obj, Pageable pageable) {
    Iterable<Trip> dto = service.filter(obj, pageable);
    return dto;
  }

  @RequestMapping(value = {"", "/all"}, method = RequestMethod.GET)
  public Iterable<Trip> getall(Pageable pageable) {
    Iterable<Trip> dto = service.getall(pageable);
    return dto;
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
  public Trip get(@PathVariable("id") Integer id) throws NullEntityException {
    Trip dto = service.get(id);
    return dto;
  }

  @RequestMapping(value = "/{id}/users", method = RequestMethod.GET)
  public Iterable<User> gettripusers(@PathVariable("id") Integer id) throws NullEntityException {
    Iterable<User> dto = service.gettripusers(id);
    return dto;
  }

  /**
   * Create.
   * 
   * @param obj (Trip Class)
   * @return (Trip Class)
   */
  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Trip> create(@RequestBody Trip obj) {
    Trip dto = service.create(obj);
    ResponseEntity<Trip> re = new ResponseEntity<Trip>(dto, HttpStatus.CREATED);
    return re;
  }

  /**
   * Update.
   * 
   * @param obj (Trip class)
   * @return (Trip class)
   */
  @RequestMapping(method = RequestMethod.PUT)
  public ResponseEntity<Trip> update(@RequestBody Trip obj) {
    Trip dto = service.update(obj);
    ResponseEntity<Trip> re = new ResponseEntity<Trip>(dto, HttpStatus.OK);
    return re;
  }

  /**
   * Delete.
   * 
   * @param id (Trip id)
   * @param response ()
   * @return ()
   */
  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<Boolean> delete(@PathVariable("id") Integer id,
      HttpServletResponse response) throws NullEntityException {
    service.delete(id);
    ResponseEntity<Boolean> re = new ResponseEntity<Boolean>(true, HttpStatus.NO_CONTENT);
    return re;
  }
}
