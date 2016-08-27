package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.model.Location;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.LocationService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = Test1.class)
public class LocationServiceTest {

  @Autowired
  private LocationService service;

  @Test
  public void test1() {
    // Get All
    ArrayList<Location> locations = (ArrayList<Location>) service.getall();
    assertEquals(locations.size(), 2);
    assertEquals("Nandi Hills", locations.get(1).getName());

    // Get One
    Location location = service.get(1);
    assertNotNull(location);
    assertEquals("Wonderla", location.getName());
  }


  @Test
  public void testCreate() {
    Location location = new Location();
    location.setName("Testing");
    location.setType("Test");
    location.setImageUrl("URl");
    location = service.create(location);
    location = service.get(3);
    assertEquals("Test", location.getType());
  }

  @Test
  public void testUpdate() {
    Location location = service.get(2);
    location.setName("Testing2");
    location = service.update(location);
    location = service.get(2);
    assertEquals("Testing2", location.getName());

  }


}
