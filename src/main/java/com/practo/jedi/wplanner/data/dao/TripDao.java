package com.practo.jedi.wplanner.data.dao;

import com.practo.jedi.wplanner.data.entity.Tripentity;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public class TripDao {

  @Autowired
  private HibernateTemplate template;

  @Transactional
  public Tripentity findTrip(int id) {
    return template.load(Tripentity.class, id);
  }

  @Transactional
  public Iterable<Tripentity> getAllTrips(Pageable pageable) {
    return (Iterable<Tripentity>) template.findByCriteria(
        DetachedCriteria.forClass(Tripentity.class), pageable.getOffset(), pageable.getPageSize());
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
