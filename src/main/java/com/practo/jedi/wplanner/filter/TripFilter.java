package com.practo.jedi.wplanner.filter;

import com.practo.jedi.wplanner.data.entity.Locationentity;
import com.practo.jedi.wplanner.data.entity.Tripentity;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import java.util.Date;

public class TripFilter {

  private int locationid;

  private Locationentity location;

  private int minavgcost;

  private int maxavgcost;

  private String locationname;

  public String getLocationname() {
    return locationname;
  }


  public void setLocationname(String locationname) {
    this.locationname = locationname;
  }


  private int vacancy;

  private int days;

  private Date afterdate;

  private Date beforedate;

  final int maxLimit = 10000;


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

  /**
   * Generate's the filter query.
   * 
   * @return (DetachedCriteria)
   */
  public DetachedCriteria generatequery() {
    DetachedCriteria criteria = DetachedCriteria.forClass(Tripentity.class);
    // System.out.println(this.getLocation().getName());
    if (this.locationid != 0) {
      criteria = criteria.add(Restrictions.eq("locationBean.id", this.getLocationid()));
    }
    if (this.vacancy != 0) {
      criteria = criteria.add(Restrictions.gt("vacancy", this.getVacancy() - 1));
    } else {
      criteria = criteria.add(Restrictions.gt("vacancy", 0));
    }
    if (this.getMaxavgcost() != 0) {
      if (this.getMinavgcost() <= this.getMaxavgcost()) {
        criteria = criteria
            .add(Restrictions.between("avgCost", this.getMinavgcost(), this.getMaxavgcost()));
      } else {
        criteria = criteria.add(Restrictions.between("avgCost", 0, this.getMaxavgcost()));
      }
    } else {
      criteria = criteria.add(Restrictions.between("avgCost", this.getMinavgcost(), this.maxLimit));
    }
    // if (this.getDays() != 0) {
    // criteria = criteria.add(Restrictions.lt("endDate", "startDate" + this.getDays()));
    // }
    if (this.afterdate != null) {
      criteria = criteria.add(Restrictions.gt("startDate", this.getAfterdate()));
    }
    if (this.beforedate != null) {
      criteria = criteria.add(Restrictions.le("endDate", this.getBeforedate()));
    }
    criteria = criteria.add(Restrictions.eq("deleteStatus", "false"));
    return criteria;
  }


  public Locationentity getLocation() {
    return location;
  }


  public void setLocation(Locationentity location) {
    this.setLocationid(this.location.getId());
    this.location = location;
  }

}
