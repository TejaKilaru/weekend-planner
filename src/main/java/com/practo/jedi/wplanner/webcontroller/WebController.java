package com.practo.jedi.wplanner.webcontroller;

import com.practo.jedi.wplanner.exceptions.NullEntityException;
import com.practo.jedi.wplanner.filter.TripFilter;
import com.practo.jedi.wplanner.model.Location;
import com.practo.jedi.wplanner.model.RelationTripUser;
import com.practo.jedi.wplanner.model.Trip;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.service.LocationService;
import com.practo.jedi.wplanner.service.RelationTripUserService;
import com.practo.jedi.wplanner.service.TripService;
import com.practo.jedi.wplanner.service.UserService;
import com.practo.jedi.wplanner.utility.MailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.http.HttpSession;


@Controller
public class WebController {

  @Autowired
  private MailService mail;

  final int itemsPerPage = 5;

  public WebController() {
    // TODO Auto-generated constructor stub
  }

  @Autowired
  private UserService uservice;

  @Autowired
  private TripService service;

  @Autowired
  private LocationService lservice;

  @Autowired
  private RelationTripUserService relservice;


  @RequestMapping("/login")
  String login(Model model, String name, String email, String token, String url,
      HttpSession session) {
    session.setAttribute("username", name);
    session.setAttribute("email", email);
    session.setAttribute("key", token);
    User user = uservice.findByEmail(email);
    System.out.println(user);
    if (user.getId() == 0) {
      System.out.println("came");
      user.setEmail(email);
      user.setName(name);
      user = uservice.create(user);
    }

    return "index";
  }

  @RequestMapping("/logout")
  String logout(Model model, HttpSession session) {
    System.out.println("Logged out");
    session.invalidate();
    return "redirect:" + "index";
  }

  @RequestMapping(value = {"/index", "/"})
  String index(Model model, HttpSession session) {
    Iterable<Location> locations = lservice.getall();
    if (session.getAttribute("email") != null) {
      model.addAttribute("user", session.getAttribute("username"));
    } else {
      model.addAttribute("user", "");
    }
    model.addAttribute("locations", locations);
    return "index";
  }

  /**
   * Fetch The Trips Results based on filters.
   * 
   * @param model ()
   * @param obj (Filters Object)
   * @param pageable (Pageable Object)
   * @param afterdate1 ()
   * @param enddate1 ()
   * @param locationid ()
   * @param session (contains user details)
   * @return (trips.jsp)
   */
  @RequestMapping(value = {"search"}, method = RequestMethod.GET)
  public String search(Model model, TripFilter obj, Pageable pageable, String afterdate1,
      String enddate1, String locationid, HttpSession session) {
    if (session.getAttribute("email") != null) {
      model.addAttribute("user", session.getAttribute("username"));
    } else {
      model.addAttribute("user", "");
    }
    if (locationid != null) {
      if (Integer.parseInt(locationid) > 0) {
        obj.setLocationid(Integer.parseInt(locationid));
      }
    }
    Iterable<Location> locations = lservice.getall();
    model.addAttribute("locations", locations);
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
    if (afterdate1 != null) {
      try {
        Date date = simpleDateFormat.parse(afterdate1);
        obj.setAfterdate(date);
      } catch (ParseException ex) {
        System.out.println("Exception " + ex);
      }
    }
    if (enddate1 != null) {
      try {
        Date date = simpleDateFormat.parse(enddate1);
        obj.setBeforedate(date);
      } catch (ParseException ex) {
        System.out.println("Exception " + ex);
      }
    }
    Iterable<Trip> dto = service.filter(obj, pageable);
    int count = 0;
    for (Trip item : dto) {
      count++;
    }
    if (count != 5) {
      count = 0;
    }
    model.addAttribute("next", count);
    model.addAttribute("prev", pageable.getPageNumber() - 1);
    model.addAttribute("name", dto);
    model.addAttribute("obj", obj);
    model.addAttribute("afterdate1", afterdate1);
    model.addAttribute("enddate1", enddate1);
    model.addAttribute("locationid", locationid);
    model.addAttribute("pageable", pageable);
    return "trips";
  }

  /**
   * Sets The Locations in Create form.
   * 
   * @param model (jsp attribute)
   * @param session (contains the user details)
   * @return (renders The template createtrip)
   */
  @RequestMapping(value = {"createform"}, method = RequestMethod.GET)
  public String createform(Model model, HttpSession session) {
    if (session.getAttribute("email") != null) {
      model.addAttribute("user", session.getAttribute("username"));
    } else {
      model.addAttribute("user", "");
    }
    if (session.getAttribute("email") == null) {
      return "redirect:" + "index";
    }
    Iterable<Location> locations = lservice.getall();
    model.addAttribute("locations", locations);
    return "createtrip";
  }

  /**
   * Signs up User for trip.
   * 
   * @param tripid (trip id)
   * @param obj (details of user)
   * @param session (contains user details)
   * @return redirects to trips
   * @throws NullEntityException ()
   * @throws MessagingException (When Message fails)
   */
  @RequestMapping(value = {"join"}, method = RequestMethod.POST)
  public String join(Model model, Integer tripid, RelationTripUser obj, HttpSession session)
      throws NullEntityException, MessagingException {
    if (session.getAttribute("email") == null) {
      return "redirect:" + "index";
    }
    model.addAttribute("user", session.getAttribute("username"));
    Trip trip = service.get(tripid);
    User organiser = uservice.get(trip.getOrgId());
    User user = uservice.findByEmail(session.getAttribute("email").toString());
    obj.setUserId(user.getId());
    obj.setModifyById(user.getId());
    RelationTripUser tmp = relservice.create(tripid, obj);
    if (organiser.getEmail() == user.getEmail()) {
      mail.send(user.getEmail(), "Regd : (Trip" + trip.getId() + ")",
          " You Signed up for Your Trip id :" + trip.getId() + "to"
              + trip.locationentityGet().getName());
    } else {
      mail.send(organiser.getEmail(), "Regd : (Trip" + trip.getId() + ")", user.getName()
          + "Joined Trip id :" + trip.getId() + "to" + trip.locationentityGet().getName());
      mail.send(user.getEmail(), "Regd : (Trip" + trip.getId() + ")", " You Signed up for Trip id :"
          + trip.getId() + "to" + trip.locationentityGet().getName());
    }
    model.addAttribute("trip", trip);
    return "conformation1";
  }

  /**
   * Creates Trip.
   * 
   * @param locationid ()
   * @param startdate1 ()
   * @param enddate1 ()
   * @param bookdate1 ()
   * @param session ()
   * @param obj (User model)
   * @return (redirects to index page)
   */
  @RequestMapping(value = {"create"}, method = RequestMethod.POST)
  public String create(Model model, String locationid, String startdate1, String enddate1,
      String bookdate1, Trip obj, HttpSession session) {
    if (session.getAttribute("email") != null) {
      model.addAttribute("user", session.getAttribute("username"));
    } else {
      model.addAttribute("user", "");
    }
    if (session.getAttribute("email") == null) {
      return "redirect:" + "index";
    }
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
    if (startdate1 != null) {
      try {
        Date date = simpleDateFormat.parse(startdate1);
        obj.setStartDate(date);
      } catch (ParseException ex) {
        System.out.println("Exception " + ex);
      }
    }
    if (enddate1 != null) {
      try {
        Date date = simpleDateFormat.parse(enddate1);
        obj.setEndDate(date);
      } catch (ParseException ex) {
        System.out.println("Exception " + ex);
      }
    }
    if (bookdate1 != null) {
      try {
        Date date = simpleDateFormat.parse(bookdate1);
        obj.setBookEndDate(date);
      } catch (ParseException ex) {
        System.out.println("Exception " + ex);
      }
    }
    obj.setLocationId(Integer.parseInt(locationid));
    User user = uservice.findByEmail(session.getAttribute("email").toString());
    obj.setOrgId(user.getId());
    Trip trip = service.create(obj);
    model.addAttribute("trip", trip);
    return "conformation";
  }

}
