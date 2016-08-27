package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.RelationTripUser;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.RelationTripUserService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;



@RunWith(SpringRunner.class)
@SpringBootTest(classes = Test1.class)
public class RelationTripUserServiceTesting {

  @Autowired
  private RelationTripUserService service;

  @Test
  public void test1() {
    // Get One
    RelationTripUser reltripuser = service.get(1);
    assertNotNull(reltripuser);
    assertEquals(1, reltripuser.getModifyById());
  }

  @Test
  public void test2() throws NullEntityException {
    RelationTripUser reltripuser = new RelationTripUser();
    reltripuser.setModifyById(2);
    reltripuser.setUserId(1);
    reltripuser = service.create(1, reltripuser);
    reltripuser = service.get(2);
    assertNotNull(reltripuser);
    assertEquals(1, reltripuser.getUserId());
  }

  @Test
  public void test3() {
    service.delete(1);
    RelationTripUser reltripuser = service.get(1);
    assertEquals("true", reltripuser.getDeleteStatus());
  }
}
