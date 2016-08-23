package com.practo.jedi.wplanner.filter;

import java.util.Date;

import com.practo.jedi.wplanner.data.entity.Locationentity;
import com.practo.jedi.wplanner.data.entity.QTripentity;
import com.querydsl.core.types.Predicate;
import com.querydsl.core.types.dsl.BooleanExpression;

public class TripFilter {

  private int locationid;

  private Locationentity location;

  private int minavgcost;

  private int maxavgcost;

  private int vacancy;

  private int days;

  private Date afterdate;

  private Date beforedate;


  public TripFilter() {
    // TODO Auto-generated constructor stub
  }


  public int getLocationid() {
    return this.locationid;
  }


  public void setLocationid(int locationid) {
    this.locationid = locationid;
  }


  public int getMinavgcost() {
    return this.minavgcost;
  }


  public void setMinavgcost(int minavgcost) {
    this.minavgcost = minavgcost;
  }


  public int getMaxavgcost() {
    return this.maxavgcost;
  }


  public void setMaxavgcost(int maxavgcost) {
    this.maxavgcost = maxavgcost;
  }


  public int getVacancy() {
    return this.vacancy;
  }


  public void setVacancy(int vacancy) {
    this.vacancy = vacancy;
  }


  public int getDays() {
    return this.days;
  }


  public void setDays(int days) {
    this.days = days;
  }


  public Date getAfterdate() {
    return this.afterdate;
  }


  public void setAfterdate(Date afterdate) {
    this.afterdate = afterdate;
  }


  public Date getBeforedate() {
    return this.beforedate;
  }


  public void setBeforedate(Date beforedate) {
    this.beforedate = beforedate;
  }

  public Predicate generatequery() {
    BooleanExpression predicate = QTripentity.tripentity.deleteStatus.eq("false");
    System.out.println(getLocationid());
    if (this.locationid != 0) {
      predicate = predicate.and(QTripentity.tripentity.locationBean.eq(this.location));
    }
    System.out.println(getVacancy());
    if (this.vacancy != 0) {
      predicate = predicate.and(QTripentity.tripentity.vacancy.goe(getVacancy()));
    } else {
      predicate = predicate.and(QTripentity.tripentity.vacancy.goe(1));
    }
    if (this.maxavgcost != 0) {
      if (this.minavgcost <= this.maxavgcost) {
        predicate =
            predicate.and(QTripentity.tripentity.avgCost.between(getMinavgcost(), getMaxavgcost()));
      } else {
        predicate = predicate.and(QTripentity.tripentity.avgCost.between(0, getMaxavgcost()));
      }
    } else {
      predicate = predicate.and(QTripentity.tripentity.avgCost.between(getMinavgcost(), 10000));
    }

    return predicate;
  }


  public Locationentity getLocation() {
    return location;
  }


  public void setLocation(Locationentity location) {
    this.location = location;
  }

}
