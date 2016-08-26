package com.practo.jedi.wplanner.test;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.TripServiceimpl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Test1.class)
public class TripTesting {

  @Autowired
  private TripServiceimpl service;

  @Test
  public void testGetTrip() throws NullEntityException {

    Trip response = service.get(1);
    assertNotNull(response);
    assertEquals(900, response.getAvgCost());
    assertEquals(4, response.getVacancy());
    assertEquals(1, response.getLocationId());
  }

  @Test
  public void testGetAllTrips() {
    Iterable<Trip> response = service.getall(new PageRequest(0, 2));
    int count = 0;
    assertNotNull(response);
    for (Trip temp : response) {
      count++;
    }
    assertEquals(2, count);
  }

  @Test
  public void testCreateTrip() throws NullEntityException {
    Trip obj = new Trip();
    obj.setAvgCost(500);
    obj.setBookEndDate(new Date(System.currentTimeMillis() + 1));
    obj.setStartDate(new Date(System.currentTimeMillis() + 2));
    obj.setEndDate(new Date(System.currentTimeMillis() + 4));
    obj.setDeleteStatus("false");
    obj.setDescription("It's Great Trip Guys!!!!");
    obj.setTotalPeople(7);
    obj.setTravelBy("Innova");
    obj.setVacancy(5);
    obj.setLocationId(2);
    obj.setOrgId(9);

    Trip response = service.create(obj);
    assertNotNull(response);

    response = service.get(response.getId());

    assertNotNull(response);


  }

  @Test
  public void testUpdateTrip() throws NullEntityException {
    Trip obj = new Trip();
    obj.setId(7);
    obj.setAvgCost(800);
    obj.setBookEndDate(new Date(System.currentTimeMillis() + 1));
    obj.setStartDate(new Date(System.currentTimeMillis() + 2));
    obj.setEndDate(new Date(System.currentTimeMillis() + 4));
    obj.setDeleteStatus("false");
    obj.setDescription("It's Great Trip Guys!!!!");
    obj.setTotalPeople(7);
    obj.setTravelBy("Innova");
    obj.setVacancy(5);
    obj.setLocationId(2);
    obj.setOrgId(9);
    Trip response = service.update(obj);
    assertNotNull(response);
    response = service.get(7);
    assertEquals(800, response.getAvgCost());
  }

}
