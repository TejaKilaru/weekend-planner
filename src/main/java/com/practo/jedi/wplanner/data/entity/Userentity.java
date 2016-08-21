package com.practo.jedi.wplanner.data.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@Table(name = "user")
@NamedQuery(name = "Userentity.findAll", query = "SELECT u FROM Userentity u")
public class Userentity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  private int id;

  private String email;

  private String mobile;

  private String name;

  // bi-directional many-to-one association to RelationTripUser
  @OneToMany(mappedBy = "user1")
  private List<RelationTripUserentity> relationTripUsers1;

  // bi-directional many-to-one association to RelationTripUser
  @OneToMany(mappedBy = "user2")
  private List<RelationTripUserentity> relationTripUsers2;

  // bi-directional many-to-one association to Trip
  @OneToMany(mappedBy = "user")
  private List<Tripentity> trips;

  public Userentity() {}

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

  public List<RelationTripUserentity> getRelationTripUsers1() {
    return this.relationTripUsers1;
  }

  public void setRelationTripUsers1(List<RelationTripUserentity> relationTripUsers1) {
    this.relationTripUsers1 = relationTripUsers1;
  }

  public RelationTripUserentity addRelationTripUsers1(RelationTripUserentity relationTripUsers1) {
    getRelationTripUsers1().add(relationTripUsers1);
    relationTripUsers1.setUser1(this);

    return relationTripUsers1;
  }

  public RelationTripUserentity removeRelationTripUsers1(RelationTripUserentity relationTripUsers1) {
    getRelationTripUsers1().remove(relationTripUsers1);
    relationTripUsers1.setUser1(null);

    return relationTripUsers1;
  }

  public List<RelationTripUserentity> getRelationTripUsers2() {
    return this.relationTripUsers2;
  }

  public void setRelationTripUsers2(List<RelationTripUserentity> relationTripUsers2) {
    this.relationTripUsers2 = relationTripUsers2;
  }

  public RelationTripUserentity addRelationTripUsers2(RelationTripUserentity relationTripUsers2) {
    getRelationTripUsers2().add(relationTripUsers2);
    relationTripUsers2.setUser2(this);

    return relationTripUsers2;
  }

  public RelationTripUserentity removeRelationTripUsers2(RelationTripUserentity relationTripUsers2) {
    getRelationTripUsers2().remove(relationTripUsers2);
    relationTripUsers2.setUser2(null);

    return relationTripUsers2;
  }

  public List<Tripentity> getTrips() {
    return this.trips;
  }

  public void setTrips(List<Tripentity> trips) {
    this.trips = trips;
  }

  public Tripentity addTrip(Tripentity trip) {
    getTrips().add(trip);
    trip.setUser(this);

    return trip;
  }

  public Tripentity removeTrip(Tripentity trip) {
    getTrips().remove(trip);
    trip.setUser(null);

    return trip;
  }

}
