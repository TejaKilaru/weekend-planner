package com.practo.jedi.wplanner.data.dao;


import com.practo.jedi.wplanner.data.entity.Locationentity;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class LocationDao {

  @Autowired
  private HibernateTemplate template;

  @Transactional
  public Locationentity findLocation(int id) {
    return template.load(Locationentity.class, id);
  }

  @Transactional
  public Iterable<Locationentity> getAllLocations() {
    return template.loadAll(Locationentity.class);
  }

  @Transactional
  public Locationentity createLocation(Locationentity obj) {
    template.save(obj);
    return obj;
  }

  @Transactional
  public Locationentity updateLocation(Locationentity obj) {
    template.update(obj);
    return obj;
  }

}
