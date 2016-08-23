package com.practo.jedi.wplanner.data.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the trips database table.
 * 
 */
@Entity
@Table(name = "trips")
@NamedQuery(name = "Tripentity.findAll", query = "SELECT t FROM Tripentity t")
public class Tripentity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  private int id;

  @Column(name = "avg_cost")
  private int avgCost;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "book_end_date")
  private Date bookEndDate;

  @Column(name = "delete_status")
  private String deleteStatus;

  @Lob
  private String description;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "end_date")
  private Date endDate;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "modify_on")
  private Date modifyOn;

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "start_date")
  private Date startDate;

  @Column(name = "total_people")
  private int totalPeople;

  @Column(name = "travel_by")
  private String travelBy;

  private int vacancy;

  // bi-directional many-to-one association to RelationTripUser
  @OneToMany(mappedBy = "trip")
  private List<RelationTripUserentity> relationTripUsers;

  // bi-directional many-to-one association to Location
  @ManyToOne
  @JoinColumn(name = "location")
  private Locationentity locationBean;

  // bi-directional many-to-one association to User
  @ManyToOne
  @JoinColumn(name = "posted_by")
  private Userentity user;

  public Tripentity() {}

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getAvgCost() {
    return this.avgCost;
  }

  public void setAvgCost(int avgCost) {
    this.avgCost = avgCost;
  }

  public Date getBookEndDate() {
    return this.bookEndDate;
  }

  public void setBookEndDate(Date bookEndDate) {
    this.bookEndDate = bookEndDate;
  }

  public String getDeleteStatus() {
    return this.deleteStatus;
  }

  public void setDeleteStatus(String deleteStatus) {
    this.deleteStatus = deleteStatus;
  }

  public String getDescription() {
    return this.description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Date getEndDate() {
    return this.endDate;
  }

  public void setEndDate(Date endDate) {
    this.endDate = endDate;
  }

  public Date getModifyOn() {
    return this.modifyOn;
  }

  public void setModifyOn(Date modifyOn) {
    this.modifyOn = modifyOn;
  }

  public Date getStartDate() {
    return this.startDate;
  }

  public void setStartDate(Date startDate) {
    this.startDate = startDate;
  }

  public int getTotalPeople() {
    return this.totalPeople;
  }

  public void setTotalPeople(int totalPeople) {
    this.totalPeople = totalPeople;
  }

  public String getTravelBy() {
    return this.travelBy;
  }

  public void setTravelBy(String travelBy) {
    this.travelBy = travelBy;
  }

  public int getVacancy() {
    return this.vacancy;
  }

  public void setVacancy(int vacancy) {
    this.vacancy = vacancy;
  }

  public List<RelationTripUserentity> getRelationTripUsers() {
    return this.relationTripUsers;
  }

  public void setRelationTripUsers(List<RelationTripUserentity> relationTripUsers) {
    this.relationTripUsers = relationTripUsers;
  }

  /**
   * .
   * 
   * @param relationTripUser ()
   * @return ()
   */
  public RelationTripUserentity addRelationTripUser(RelationTripUserentity relationTripUser) {
    getRelationTripUsers().add(relationTripUser);
    relationTripUser.setTrip(this);

    return relationTripUser;
  }

  /**
   * .
   * 
   * @param relationTripUser ()
   * @return ()
   */
  public RelationTripUserentity removeRelationTripUser(RelationTripUserentity relationTripUser) {
    getRelationTripUsers().remove(relationTripUser);
    relationTripUser.setTrip(null);

    return relationTripUser;
  }

  public Locationentity getLocationBean() {
    return this.locationBean;
  }

  public void setLocationBean(Locationentity locationBean) {
    this.locationBean = locationBean;
  }

  public Userentity getUser() {
    return this.user;
  }

  public void setUser(Userentity user) {
    this.user = user;
  }

}
