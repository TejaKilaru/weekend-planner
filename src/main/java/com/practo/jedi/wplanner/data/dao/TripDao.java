package com.practo.jedi.wplanner.data.dao;

import com.practo.jedi.wplanner.data.entity.Tripentity;
import com.practo.jedi.wplanner.exceptions.NullEntityException;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;

import javax.transaction.Transactional;

@Repository
public class TripDao {

  @Autowired
  private HibernateTemplate template;

  /**
   * Fetch Trip by id.
   * 
   * @param id (Trip id)
   * @return (Trip)
   */
  @Transactional
  public Tripentity findTrip(int id) throws NullEntityException {
    DetachedCriteria criteria = DetachedCriteria.forClass(Tripentity.class);
    criteria = criteria.add(Restrictions.eq("deleteStatus", "false"));
    criteria = criteria.add(Restrictions.eq("id", id));
    criteria = criteria.add(Restrictions.gt("bookEndDate", new Date(System.currentTimeMillis())));
    Iterable<Tripentity> temp = (Iterable<Tripentity>) template.findByCriteria(criteria);
    int count = 0;
    for (Tripentity trp : temp) {
      count++;
    }
    if (count != 0) {
      return temp.iterator().next();
    } else {
      throw new NullEntityException("Trip is Deleted or Signup Time Ended");
    }
  }

  /**
   * fetches all active Trips.
   * 
   * @param pageable (pagination object)
   * @return (all active trips)
   */
  @Transactional
  public Iterable<Tripentity> getAllTrips(Pageable pageable) {
    DetachedCriteria criteria = DetachedCriteria.forClass(Tripentity.class);
    criteria = criteria.add(Restrictions.eq("deleteStatus", "false"));
    criteria = criteria.add(Restrictions.gt("bookEndDate", new Date(System.currentTimeMillis())));
    return (Iterable<Tripentity>) template.findByCriteria(criteria, pageable.getOffset(),
        pageable.getPageSize());
  }

  @Transactional
  public Tripentity createTrip(Tripentity obj) {
    template.save(obj);
    return obj;
  }

  @Transactional
  public Tripentity updateTrip(Tripentity obj) {
    template.update(obj);
    return obj;
  }

  @Transactional
  public Iterable<Tripentity> filter(DetachedCriteria criteria, Pageable pageable) {
    return (Iterable<Tripentity>) template.findByCriteria(criteria, pageable.getOffset(),
        pageable.getPageSize());
  }

}
