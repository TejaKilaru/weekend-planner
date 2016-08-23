package com.practo.jedi.wplanner.model;


import java.io.Serializable;

import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Component;

import com.practo.jedi.wplanner.data.entity.Userentity;

/**
 * The persistent class for the user database table.
 * 
 */
@Component
public class User implements Serializable {

  /**
   * 
   */
  private static final long serialVersionUID = 1L;

  @Id
  private int id;

  private String email;

  private String mobile;

  private String name;

  public User() {}

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getEmail() {
    return this.email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getMobile() {
    return this.mobile;
  }

  public void setMobile(String mobile) {
    this.mobile = mobile;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Override
  public String toString() {
    return "User [name=" + name + ", email=" + email + ", mobile=" + mobile + "]";
  }


  public Userentity modeltoentity() {
    Userentity et = new Userentity();
    et.setEmail(getEmail());
    et.setName(getName());
    et.setMobile(getMobile());
    if (new Integer(getId()) != null)
      et.setId(getId());
    return et;
  }

  public void entitytomodel(Userentity e) {
    if (e != null) {
      setName(e.getName());
      setEmail(e.getEmail());
      setMobile(e.getMobile());
      setId(e.getId());
    }
  }
}
