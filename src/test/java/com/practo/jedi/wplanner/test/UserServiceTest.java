package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.run.ApplicationRun;
import com.practo.jedi.wplanner.service.UserService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = ApplicationRun.class)
public class UserServiceTest {

  @Autowired
  private UserService service;

  @Test
  public void test1() throws NullEntityException {
    // Get All
    ArrayList<User> users = (ArrayList<User>) service.getall(new PageRequest(0, 2));
    assertEquals(users.size(), 4);
    assertEquals("Blake", users.get(0).getName());

    // Get One
    User user = service.get(2);
    assertNotNull(user);
    assertEquals("Cam", user.getName());
    assertEquals("cam@practo.com", user.getEmail());
    assertEquals("9988776644", user.getMobile());

  }

  @Test
  public void test2() {
    // Get by email
    User user = service.findByEmail("cam@practo.com");
    assertNotNull(user);
    assertEquals("9988776644", user.getMobile());
  }

  @Test
  public void test3() {
    // Create
    User user = new User();
    user.setEmail("hunter@gmail.com");
    user.setName("Hunter");
    user.setMobile("9988776633");
    user = service.create(user);
    assertEquals(user.getId(), 5);
  }

  @Test
  public void test4() {
    // Update
    User user = service.get(2);
    user.setName("CamChanged");
    user = service.update(user);
    user = service.get(2);
    assertEquals(user.getName(), "CamChanged");

  }

  @Test
  public void test5() {
    // Get User Trips
    ArrayList<Trip> trips = (ArrayList<Trip>) service.getusertrips(2);
    assertNotNull(trips);
    // assertEquals(2, trips.size());
  }

  @Test
  public void test6() {
    // Get User Signed up Trips
    ArrayList<Trip> trips = (ArrayList<Trip>) service.getuserontrips(4);
    assertNotNull(trips);
    // assertEquals(2, trips.size());
  }

}
