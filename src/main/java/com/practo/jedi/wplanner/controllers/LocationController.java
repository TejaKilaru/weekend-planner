package com.practo.jedi.wplanner.controllers;

import com.practo.jedi.wplanner.model.Location;
import com.practo.jedi.wplanner.service.LocationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/locations")
public class LocationController {

  @Autowired
  private LocationService service;

  @RequestMapping(value = "/all", method = RequestMethod.GET)
  public Iterable<Location> getall() {
    Iterable<Location> dto = service.getall();
    return dto;
  }

  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
  public Location get(@PathVariable("id") Integer id) {
    Location dto = service.get(id);
    return dto;
  }

  /**
   * Create.
   * 
   * @param obj (Location class)
   * @return (Response)
   */
  @RequestMapping(method = RequestMethod.POST)
  public ResponseEntity<Location> create(@RequestBody Location obj) {
    Location dto = service.create(obj);
    ResponseEntity<Location> re = new ResponseEntity<Location>(dto, HttpStatus.CREATED);
    return re;
  }

}


