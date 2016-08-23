package com.practo.jedi.wplanner.data.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the relation_trip_user database table.
 * 
 */
@Entity
@Table(name = "relation_trip_user")
@NamedQuery(name = "RelationTripUserentity.findAll",
    query = "SELECT r FROM RelationTripUserentity r")
public class RelationTripUserentity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  private int id;

  @Column(name = "delete_status")
  private String deleteStatus;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "modify_on")
  private Date modifyOn;

  // bi-directional many-to-one association to User
  @ManyToOne
  @JoinColumn(name = "modify_by")
  private Userentity user1;

  // bi-directional many-to-one association to Trip
  @ManyToOne
  private Tripentity trip;

  // bi-directional many-to-one association to User
  @ManyToOne
  @JoinColumn(name = "user_id")
  private Userentity user2;

  public RelationTripUserentity() {}

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

  public Userentity getUser1() {
    return this.user1;
  }

  public void setUser1(Userentity user1) {
    this.user1 = user1;
  }

  public Tripentity getTrip() {
    return this.trip;
  }

  public void setTrip(Tripentity trip) {
    this.trip = trip;
  }

  public Userentity getUser2() {
    return this.user2;
  }

  public void setUser2(Userentity user2) {
    this.user2 = user2;
  }

}
