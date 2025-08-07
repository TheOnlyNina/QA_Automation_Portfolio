package API;

import io.restassured.http.ContentType;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class Put_UpdateUserDetail {
    @Test
    public void post_UpdateUserDetail() {
        int authorId = 2; //updating id 2

        String updatedBody ="""
    {
      "id": 2,
      "userName": "updated string",
      "password": "updated string"
    }
""";

        given()
                .contentType(ContentType.JSON)
                .body(updatedBody)
                .when()
                .put("https://fakerestapi.azurewebsites.net/api/v1/Users/" + authorId)
                .then()
                .statusCode(200)
                //response validation
                .body("id", equalTo(authorId))
                .body("userName", equalTo("updated string"))
                .body("password", equalTo("updated string"));
    }
}
