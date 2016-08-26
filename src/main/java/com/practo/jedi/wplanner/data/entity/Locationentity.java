package com.practo.jedi.wplanner.data.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * The persistent class for the location database table.
 * 
 */
@Entity
@Table(name = "location")
@NamedQuery(name = "Locationentity.findAll", query = "SELECT l FROM Locationentity l")
public class Locationentity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = IDENTITY)
  private int id;

  private String name;

  private String type;

  @Column(name = "image_url")
  private String imageUrl;

  // bi-directional many-to-one association to Trip
  @OneToMany(mappedBy = "locationBean")
  private List<Tripentity> trips;

  public Locationentity() {}

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return this.name;
  }

  public String getImageUrl() {
    return this.imageUrl;
  }

  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
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

  public List<Tripentity> getTrips() {
    return this.trips;
  }

  public void setTrips(List<Tripentity> trips) {
    this.trips = trips;
  }

  /**
   * .
   * 
   * @param trip ()
   * @return ()
   */
  public Tripentity addTrip(Tripentity trip) {
    getTrips().add(trip);
    trip.setLocationBean(this);

    return trip;
  }

  /**
   * .
   * 
   * @param trip ()
   * @return ()
   */
  public Tripentity removeTrip(Tripentity trip) {
    getTrips().remove(trip);
    trip.setLocationBean(null);

    return trip;
  }

}
