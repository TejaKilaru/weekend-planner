package com.practo.jedi.wplanner.run;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ImportResource("classpath:hibernate.xml")
@ComponentScan(basePackages = {"com.practo.jedi.wplanner"})
@EnableJpaRepositories(basePackages = {"com.practo.jedi.wplanner.data.dao"})
@EntityScan("com.practo.jedi.wplanner.data.entity")
@SpringBootApplication
public class ApplicationRun extends SpringBootServletInitializer {

  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
    return application.sources(ApplicationRun.class);
  }

  public static void main(String[] args) throws Exception {
    SpringApplication.run(ApplicationRun.class, args);
  }

}
