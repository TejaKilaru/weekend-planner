package com.practo.jedi.wplanner.model;

import com.practo.jedi.wplanner.data.entity.Locationentity;
import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.data.entity.Userentity;

import java.beans.Transient;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.transaction.Transactional;



/**
 * The persistent class for the trips database table.
 * 
 */
@Transactional
public class Trip implements Serializable {
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

  private int orgid;

  private int locationid;

  private Userentity user;

  private Locationentity location;

  private List<RelationTripUserentity> relationtripusers;

  public Trip() {}

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

  /**
   * .
   * 
   * @return ()
   */
  public int getOrgId() {
    if (this.user != null) {
      return this.user.getId();
    }
    return this.orgid;
  }

  public void setOrgId(Integer id) {
    this.orgid = id;
  }

  public Userentity userentityGet() {
    return this.user;
  }

  public void setUserentity(Userentity obj) {
    this.user = obj;
    setOrgId(this.user.getId());
  }

  public void setLocationId(Integer locationid) {
    this.locationid = locationid;
  }

  /**
   * .
   * 
   * @return ()
   */
  public int getLocationId() {
    if (this.location != null) {
      return this.location.getId();
    }
    return this.locationid;
  }

  public Locationentity locationentityGet() {
    return this.location;
  }

  public void setLocationentity(Locationentity obj) {
    this.location = obj;
    setLocationId(this.location.getId());
  }

  /**
   * Trip Members.
   * 
   * @return (List of Members ids)
   */
  @Transient
  public Iterable<Integer> getTripUserIds() {
    List<Integer> trip = new ArrayList<Integer>();
    if (this.relationtripusers == null) {
      return null;
    }
    for (RelationTripUserentity temp : this.relationtripusers) {
      trip.add(temp.getUser2().getId());
    }
    return trip;
  }

  public void setRelationTripUsers(List<RelationTripUserentity> obj) {
    this.relationtripusers = obj;
  }

  @Transient
  public Iterable<RelationTripUserentity> getRelationTripUsers() {
    return this.relationtripusers;
  }


  @Override
  public String toString() {
    return "User [average cost=" + avgCost + "]";
  }


  /**
   * Create entity.
   * 
   * @return (entity)
   */
  public Tripentity modeltoentity() {
    Tripentity et = new Tripentity();
    et.setModifyOn(getModifyOn());
    et.setStartDate(getStartDate());
    et.setEndDate(getEndDate());
    et.setBookEndDate(getBookEndDate());
    et.setAvgCost(getAvgCost());
    et.setDescription(getDescription());
    et.setVacancy(getVacancy());
    et.setTotalPeople(getTotalPeople());
    et.setTravelBy(getTravelBy());
    et.setDeleteStatus(getDeleteStatus());
    et.setLocationBean(locationentityGet());
    et.setUser(userentityGet());
    if (new Integer(getId()) != null) {
      et.setId(getId());
    }
    return et;
  }

  /**
   * Populating Model.
   * 
   * @param obj (entity)
   */
  public void entitytomodel(Tripentity obj) {
    if (obj != null) {
      setModifyOn(obj.getModifyOn());
      setStartDate(obj.getStartDate());
      setEndDate(obj.getEndDate());
      setBookEndDate(obj.getBookEndDate());
      setAvgCost(obj.getAvgCost());
      setDescription(obj.getDescription());
      setVacancy(obj.getVacancy());
      setTotalPeople(obj.getTotalPeople());
      setTravelBy(obj.getTravelBy());
      setDeleteStatus(obj.getDeleteStatus());
      setId(obj.getId());
      setUserentity(obj.getUser());
      setLocationentity(obj.getLocationBean());
      setRelationTripUsers(obj.getRelationTripUsers());
    }
  }
}
