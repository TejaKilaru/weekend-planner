package com.practo.jedi.wplanner.data.dao;

import com.practo.jedi.wplanner.data.entity.RelationTripUserentity;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public class RelationTripUserDao {

  @Autowired
  private HibernateTemplate template;

  @Transactional
  public RelationTripUserentity findRel(int id) {
    return template.load(RelationTripUserentity.class, id);
  }

  @Transactional
  public Iterable<RelationTripUserentity> getAllRel() {
    return template.loadAll(RelationTripUserentity.class);
  }

  @Transactional
  public RelationTripUserentity createRel(RelationTripUserentity obj) {
    template.save(obj);
    return obj;
  }

  @Transactional
  public RelationTripUserentity updateRel(RelationTripUserentity obj) {
    template.update(obj);
    return obj;
  }

  @Transactional
  public Iterable<RelationTripUserentity> findByUser2Id(Integer id) {
    return (Iterable<RelationTripUserentity>) template.findByCriteria(DetachedCriteria
        .forClass(RelationTripUserentity.class).add(Restrictions.eq("user2.id", id)));
  }

}
