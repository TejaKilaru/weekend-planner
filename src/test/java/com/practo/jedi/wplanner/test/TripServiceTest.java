package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.ArrayList;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.TripService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Test1.class)
public class TripServiceTest {

  @Autowired
  private TripService service;

  @Test
  public void test1() throws NullEntityException {
    // Get Trips
    ArrayList<Trip> trips = (ArrayList<Trip>) service.getall(new PageRequest(0, 2));
    assertEquals(trips.size(), 1);
    assertEquals(800, trips.get(0).getAvgCost());

    // Get Trip
    Trip trip = service.get(1);
    assertNotNull(trip);
    assertEquals(1, trip.getLocationId());

  }

  @Test
  public void test2() throws NullEntityException {
    // Create
    Trip trip = new Trip();
    trip.setAvgCost(1000);
    trip.setStartDate(
        new Date(new Date(System.currentTimeMillis()).getTime() + (1000 * 60 * 60 * 48 + 24)));
    trip.setEndDate(
        new Date(new Date(System.currentTimeMillis()).getTime() + (1000 * 60 * 60 * 72 + 24)));
    trip.setBookEndDate(
        new Date(new Date(System.currentTimeMillis()).getTime() + (1000 * 60 * 60 * 24 + 24)));
    trip.setDeleteStatus("false");
    trip.setDescription("Testing...");
    trip.setModifyOn(new Date());
    trip.setTotalPeople(8);
    trip.setVacancy(5);
    trip.setLocationId(2);
    trip.setOrgId(2);
    trip.setTravelBy("Innova");
    trip = service.create(trip);
    trip = service.get(2);
    assertEquals(5, trip.getVacancy());

  }

  @Test
  public void test3() throws NullEntityException {
    // Update
    Trip trip = service.get(1);
    trip.setAvgCost(1200);
    trip = service.update(trip);
    trip = service.get(1);
    assertEquals(1200, trip.getAvgCost());
  }


  @Test
  public void test4() throws NullEntityException {
    // Get Trip Users
    ArrayList<User> users = (ArrayList<User>) service.gettripusers(1);
    assertNotNull(users);
    // assertEquals(2, users.size());
    // assertEquals("Blake", users.get(0).getName());

  }

  @Test
  public void test5() {
    // Filters
    TripFilter obj = new TripFilter();
    obj.setMaxavgcost(1000);
    obj.setLocationid(2);
    obj.setVacancy(2);
    obj.setAfterdate(new Date());
    ArrayList<Trip> trips = (ArrayList<Trip>) service.filter(obj, new PageRequest(0, 2));
    assertNotNull(trips);
    assertEquals(1, trips.size());


    // Filter
    obj.setBeforedate(new Date());
    trips = (ArrayList<Trip>) service.filter(obj, new PageRequest(0, 2));
    assertEquals(0, trips.size());

  }

  @Test
  public void test6() throws NullEntityException {
    // Delete
    service.delete(1);
    ArrayList<Trip> trips = (ArrayList<Trip>) service.getall(new PageRequest(0, 2));
    assertEquals(1, trips.size());
  }

}
