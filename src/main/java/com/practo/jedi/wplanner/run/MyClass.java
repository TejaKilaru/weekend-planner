package com.practo.jedi.wplanner.run;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.Marker;
import org.apache.logging.log4j.MarkerManager;
import org.apache.logging.log4j.ThreadContext;

public class MyClass {
  private static final Logger logger = LogManager.getLogger(MyClass.class);
  private static final Marker MARKER = MarkerManager.getMarker("myMarker");

  void logSimpleMessage() {
    // This adds a simple message to the logs
    logger.info("This is a test");
  }

  void logWithTag() {
    // This adds a message with a tag to the logs named 'log4j2-Marker'
    logger.info(MARKER, "This is a test");
  }

  void logWithExtras() {
    // MDC extras
    ThreadContext.put("extra_key", "extra_value");
    // NDC extras are sent under 'log4j2-NDC'
    ThreadContext.push("Extra_details");
    // This adds a message with extras to the logs
    logger.info("This is a test");
  }

  void logException() {
    try {
      unsafeMethod();
    } catch (Exception obj) {
      // This adds an exception to the logs
      logger.error("Exception caught", obj);
    }
  }

  void unsafeMethod() {
    throw new UnsupportedOperationException("You shouldn't call that");
  }
}
