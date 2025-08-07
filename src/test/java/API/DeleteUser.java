package API;

import org.testng.annotations.Test;
import static io.restassured.RestAssured.*;

public class DeleteUser {
    @Test
    public void deleteUser() {
        int authorId = 1; //Deleting author with Id 1

        given()
                .when()
                .delete("https://fakerestapi.azurewebsites.net/api/v1/Users/" + authorId)
                .then()
                .statusCode(200);
    }
}
