package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.UserServiceimpl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Test1.class)
public class UserTesting {

  @Autowired
  private UserServiceimpl service;

  @Test
  public void testGetUser() {

    User apiResponse = service.get(1);
    assertNotNull(apiResponse);
    assertEquals("poornateja@practo.com", apiResponse.getEmail());
    assertEquals("Ankit Singh", apiResponse.getName());
    assertEquals("1234567890", apiResponse.getMobile());
  }

}
