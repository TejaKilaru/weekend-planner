package com.practo.jedi.wplanner.run;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
public class Dash {

  public String under() {
    return "Dash";
  }

}
