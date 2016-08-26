package com.practo.jedi.wplanner.run;


import com.practo.jedi.wplanner.utility.MailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;

@ImportResource("classpath:hibernate.xml")
@ComponentScan(basePackages = {"com.practo.jedi.wplanner"})
@EnableJpaRepositories(basePackages = {"com.practo.jedi.wplanner.data.dao"})
@EntityScan("com.practo.jedi.wplanner.data.entity")
@Controller
@EnableAutoConfiguration
public class Test1 extends SpringBootServletInitializer {

  @Autowired
  private MailService mail;

  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
    return application.sources(Test1.class);
  }


  @RequestMapping("/dash")
  String testing() {
    MyClass temp1 = new MyClass();
    temp1.logSimpleMessage();
    // temp1.unsafeMethod();
    Dash temp = new Dash();
    return temp.under();
  }

  /**
   * .
   * 
   * @param name ()
   * @param model ()
   * @return ()
   * @throws MessagingException ()
   */
  @RequestMapping("/greeting")
  public String greeting(
      @RequestParam(value = "name", required = false, defaultValue = "World") String name,
      Model model) throws MessagingException {
    // mail.send("poorna.t@practo.com", "testing", "Hello Its Testing mail");
    model.addAttribute("name", name);

    int te = 1000;
    return "greeting";
  }

  public static void main(String[] args) throws Exception {
    SpringApplication.run(Test1.class, args);
  }

}
