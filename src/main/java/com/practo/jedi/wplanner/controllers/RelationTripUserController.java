package com.practo.jedi.wplanner.controllers;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.practo.jedi.wplanner.model.RelationTripUser;
import com.practo.jedi.wplanner.service.RelationTripUserService;

@RestController
@RequestMapping("/reltripuser")
public class RelationTripUserController {

  @Autowired
  private RelationTripUserService service;

  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
  public RelationTripUser get(@PathVariable("id") Integer id) {
    RelationTripUser dto = service.get(id);
    return dto;
  }
  
  @RequestMapping(value = "/jointrip", method = RequestMethod.POST)
  public RelationTripUser create(@RequestBody RelationTripUser d) {
    RelationTripUser dto = service.create(d);
    return dto;
  }
  
  @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
  public ResponseEntity<Boolean> delete(@PathVariable("id") Integer id,
      HttpServletResponse response) {
    service.delete(id);
    ResponseEntity<Boolean> re = new ResponseEntity<Boolean>(true, HttpStatus.NO_CONTENT);
    return re;
  }
  
}
