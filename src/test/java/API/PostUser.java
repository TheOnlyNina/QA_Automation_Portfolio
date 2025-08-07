package API;

import io.restassured.http.ContentType;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class PostUser {
    @Test
    public void createNewAuthor() {
        String requestBody ="""
    {
      "id": 3,
      "userName": "string",
      "password": "string"
    }
""";
        given()
                .contentType(ContentType.JSON)
                .body(requestBody)
                .when()
                .post("https://fakerestapi.azurewebsites.net/api/v1/Users/")
                .then()
                .statusCode(200)
                .body("id", equalTo(3))
                .body("userName", equalTo("string"))
                .body("password", equalTo("string"));
    }
}
