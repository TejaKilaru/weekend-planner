package com.practo.jedi.wplanner.model;


import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.data.entity.Userentity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.transaction.Transactional;



/**
 * The persistent class for the relation_trip_user database table.
 * 
 */
@Transactional
public class RelationTripUser implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  private int id;

  @Column(name = "delete_status")
  private String deleteStatus;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "modify_on")
  private Date modifyOn;

  private int modifybyid;

  private int tripid;

  private int userid;

  private Userentity modifyby;

  private Tripentity trip;

  private Userentity user;

  public RelationTripUser() {}

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getDeleteStatus() {
    return this.deleteStatus;
  }

  public void setDeleteStatus(String deleteStatus) {
    this.deleteStatus = deleteStatus;
  }

  public Date getModifyOn() {
    return this.modifyOn;
  }

  public void setModifyOn(Date modifyOn) {
    this.modifyOn = modifyOn;
  }

  public void setModifyByUserentity(Userentity userentity2) {
    this.modifyby = userentity2;
    setModifyById(this.modifyby.getId());
  }

  public Userentity modifybyentityGet() {
    return this.modifyby;
  }

  public void setModifyById(Integer modifybyid) {
    this.modifybyid = modifybyid;
  }

  public int getModifyById() {
    return this.modifybyid;
  }

  public void setUserentity(Userentity userentity1) {
    this.user = userentity1;
    setUserId(this.user.getId());
  }

  public Userentity userentityGet() {
    return this.user;
  }

  public void setUserId(Integer userid) {
    this.userid = userid;
  }

  public int getUserId() {
    return this.userid;
  }

  public void setTripentity(Tripentity tripentity) {
    this.trip = tripentity;
    setTripId(this.trip.getId());
  }

  public Tripentity tripentityGet() {
    return this.trip;
  }

  public void setTripId(Integer tripid) {
    this.tripid = tripid;
  }

  public int getTripId() {
    return this.tripid;
  }


  @Override
  public String toString() {
    return "User [Modified_on =" + modifyOn + "]";
  }

  /**
   * Create Entity.
   * 
   * @return (entity)
   */
  public RelationTripUserentity modeltoentity() {
    RelationTripUserentity et = new RelationTripUserentity();
    et.setDeleteStatus(getDeleteStatus());
    et.setModifyOn(getModifyOn());
    et.setUser1(modifybyentityGet());
    et.setTrip(tripentityGet());
    et.setUser2(userentityGet());
    if (new Integer(getId()) != null) {
      et.setId(getId());
    }
    return et;
  }

  /**
   * Populate Model.
   * 
   * @param obj (entity)
   */
  public void entitytomodel(RelationTripUserentity obj) {
    if (obj != null) {
      setDeleteStatus(obj.getDeleteStatus());
      setModifyOn(obj.getModifyOn());
      setModifyByUserentity(obj.getUser1());
      setTripentity(obj.getTrip());
      setUserentity(obj.getUser2());
      setId(obj.getId());
    }
  }
}
