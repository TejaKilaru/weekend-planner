package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.model.Location;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.LocationServiceimpl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Test1.class)
public class LocationTesting {

  @Autowired
  private LocationServiceimpl service;

  @Test
  public void testGetLocation() {

    Location apiResponse = service.get(2);
    assertNotNull(apiResponse);
    assertEquals("Kooorg", apiResponse.getName());
    assertEquals("Seneric Place", apiResponse.getType());
  }

}
