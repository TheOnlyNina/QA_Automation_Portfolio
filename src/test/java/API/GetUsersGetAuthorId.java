package API;

import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.*;

public class GetUsersGetAuthorId {

    @Test
    public void getAllAuthors() {
        given()
                .when()
                .get("https://fakerestapi.azurewebsites.net/api/v1/Users")
                .then()
                .statusCode(200)
                .body("size()", greaterThan(0)); // verify there's at least one user, not empty
    }

    @Test
    public void getAuthorById() {
        int authordId=1;
        given()
        .when()
                .get("https://fakerestapi.azurewebsites.net/api/v1/Users/"+authordId)
                .then()
                .statusCode(200) //checks http code is okay, as in user exists and it was successful
                .body("id", equalTo(authordId)); //validation, confirms given user is returned
    }
}
