package com.practo.jedi.wplanner.data.dao;

import com.practo.jedi.wplanner.data.entity.Userentity;
import com.practo.jedi.wplanner.exceptions.NullEntityException;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;



@Repository
public class UserDao {

  @Autowired
  private HibernateTemplate template;

  @Transactional
  public Userentity findUser(int id) {
    return template.load(Userentity.class, id);
  }

  /**
   * Fetch the user based on email.
   * 
   * @param email (user email)
   * @return user entity
   */
  @Transactional
  public Userentity findByEmail(String email) {
    Iterable<Userentity> temp = (Iterable<Userentity>) template.findByCriteria(
        DetachedCriteria.forClass(Userentity.class).add(Restrictions.eq("email", email)));
    if (temp != null) {
      for (Userentity user : temp) {
        return user;
      }
    }
    return null;
  }

  @Transactional
  public Iterable<Userentity> getAllUsers(Pageable pageable) {
    return (Iterable<Userentity>) template.findByCriteria(
        DetachedCriteria.forClass(Userentity.class), pageable.getOffset(), pageable.getPageSize());
  }

  @Transactional
  public Userentity createUser(Userentity obj) {
    template.save(obj);
    return obj;
  }

  @Transactional
  public Userentity updateUser(Userentity obj) {
    template.update(obj);
    return obj;
  }

}
