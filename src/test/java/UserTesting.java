
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.TestRestTemplate;
import org.springframework.boot.test.WebIntegrationTest;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.practo.jedi.wplanner.model.User;
import com.practo.jedi.wplanner.run.Test1;
import com.practo.jedi.wplanner.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Test1.class)
@WebIntegrationTest
public class UserTesting {

  // Required to Generate JSON content from Java objects
  public static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

  // Required to delete the data added for tests.
  // Directly invoke the APIs interacting with the DB
  @Autowired
  private UserService userservice;

  // Test RestTemplate to invoke the APIs.
  private RestTemplate restTemplate = new TestRestTemplate();

  @Test
  public void testuser() {
    User response = restTemplate.getForObject("http://localhost:8080/users/" + 1, User.class);
    System.out.println(response.getName());
    assertEquals("Poornateja", response.getName());
  }

  @Test
  public void testalluser() {
    Iterable<User> response =
        restTemplate.getForObject("http://localhost:8080/users/", Iterable.class);
    int count = 0;
    for (Object temp: response){
      count++;
    }
    System.out.println(response);
    assertNotNull(response);
    assertEquals(2,count);
  }

  @Test
  public void testcreate() throws JsonProcessingException {
    Map<String, Object> requestBody = new HashMap<String, Object>();
    requestBody.put("name", "Test1");
    requestBody.put("email", "testing@test.com");
    requestBody.put("mobile", 898581104);
    HttpHeaders requestHeaders = new HttpHeaders();
    requestHeaders.setContentType(MediaType.APPLICATION_JSON);

    HttpEntity<String> httpEntity =
        new HttpEntity<String>(OBJECT_MAPPER.writeValueAsString(requestBody), requestHeaders);

    Map<String, Object> apiResponse = restTemplate.postForObject("http://localhost:8080/users",
        httpEntity, Map.class, Collections.EMPTY_MAP);

    assertNotNull(apiResponse);
  }
}


