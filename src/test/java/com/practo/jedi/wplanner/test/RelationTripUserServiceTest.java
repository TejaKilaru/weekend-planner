package com.practo.jedi.wplanner.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.model.RelationTripUser;
import com.practo.jedi.wplanner.run.ApplicationRun;
import com.practo.jedi.wplanner.service.RelationTripUserService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;



@RunWith(SpringRunner.class)
@SpringBootTest(classes = ApplicationRun.class)
public class RelationTripUserServiceTest {

  @Autowired
  private RelationTripUserService service;

  @Test
  public void test1() {
    // Get One
    RelationTripUser reltripuser = service.get(2);
    assertNotNull(reltripuser);
    assertEquals(4, reltripuser.getModifyById());
  }

  @Test
  public void test2() throws NullEntityException {
    // Create
    RelationTripUser reltripuser = new RelationTripUser();
    reltripuser.setModifyById(2);
    reltripuser.setUserId(3);
    reltripuser = service.create(2, reltripuser);
    reltripuser = service.get(3);
    assertNotNull(reltripuser);
    assertEquals(3, reltripuser.getUserId());
  }

  @Test
  public void test3() throws NullEntityException {
    // Create
    RelationTripUser reltripuser = service.get(2);
    reltripuser.setModifyById(3);
    reltripuser = service.update(reltripuser);
    reltripuser = service.get(2);
    assertNotNull(reltripuser);
    assertEquals(3, reltripuser.getModifyById());
  }

  @Test
  public void test4() throws NullEntityException {
    service.delete(2);
    RelationTripUser reltripuser = service.get(2);
    assertEquals("true", reltripuser.getDeleteStatus());
  }
}
