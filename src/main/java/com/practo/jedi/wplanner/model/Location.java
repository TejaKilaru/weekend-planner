package com.practo.jedi.wplanner.model;


import java.io.Serializable;

import javax.persistence.Id;

import com.practo.jedi.wplanner.data.entity.Locationentity;

/**
 * The persistent class for the user database table.
 * 
 */
public class Location implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  private int id;

  private String name;

  private String type;

  public Location() {}

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getType() {
    return this.type;
  }

  public void setType(String type) {
    this.type = type;
  }

  @Override
  public String toString() {
    return "User [name=" + name + ", name=" + name + ", type=" + type + "]";
  }


  public Locationentity modeltoentity() {
    Locationentity et = new Locationentity();
    et.setName(getName());
    et.setType(getType());
    if (new Integer(getId()) != null) {
      et.setId(getId());
    }
    return et;
  }

  public void entitytomodel(Locationentity e) {
    if (e != null) {
      setName(e.getName());
      setType(e.getType());
      setId(e.getId());
    }
  }
}
