package com.practo.jedi.wplanner.run;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@ComponentScan(basePackages = {"com.practo.jedi.wplanner"})
@EnableJpaRepositories(basePackages = {"com.practo.jedi.wplanner.data.dao"})
@EntityScan("com.practo.jedi.wplanner.data.entity")
@RestController
@EnableAutoConfiguration
public class Test {

  @RequestMapping("/")
  String home() {
    return "Hello World!";
  }

  @RequestMapping("/dash")
  String testing() {
    MyClass temp1 = new MyClass();
    temp1.logSimpleMessage();
    //temp1.unsafeMethod();
    Dash temp = new Dash();
    return temp.under();
  }

  public static void main(String[] args) throws Exception {
    SpringApplication.run(Test.class, args);
  }

}
