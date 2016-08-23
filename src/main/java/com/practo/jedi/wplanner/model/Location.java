package com.practo.jedi.wplanner.model;

import com.practo.jedi.wplanner.data.entity.Locationentity;

import java.io.Serializable;
import javax.persistence.Id;
import javax.transaction.Transactional;



/**
 * The persistent class for the user database table.
 * 
 */
@Transactional
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


  /**
   * Creates entity.
   * 
   * @return (entity)
   */
  public Locationentity modeltoentity() {
    Locationentity et = new Locationentity();
    et.setName(getName());
    et.setType(getType());
    if (new Integer(getId()) != null) {
      et.setId(getId());
    }
    return et;
  }

  /**
   * Populates model Parameters.
   * 
   * @param obj (Locationentity)
   */
  public void entitytomodel(Locationentity obj) {
    if (obj != null) {
      setName(obj.getName());
      setType(obj.getType());
      setId(obj.getId());
    }
  }
}
