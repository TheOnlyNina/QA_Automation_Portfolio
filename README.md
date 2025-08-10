# API Automation Project 

This is a capstone automation project built with **Java**, **Rest Assured**, and **IntelliJ IDEA**. It covers full CRUD operations on the [FakeRestAPI](https://fakerestapi.azurewebsites.net/) endpoints.

---

## 🔧 Tools & Technologies

- Java
- Rest Assured
- JUnit/TestNG
- Maven
- IntelliJ IDEA
- Git & GitHub
- Postman
- Jmeter

---

## 📁 Project Structure

### 1. `GetUsersGetAuthorId.java`
- Fetches the full list of users.
- Fetches a single user/author's details by given ID.
- Validates response body and status code.

### 2. `PostUser.java`
- Creates a new user (author).
- Sends JSON payload with POST request.
- Validates response using Rest Assured assertions.

### 3. `Put_UpdateUserDetail.java`
- Updates details (e.g., name) of an existing user.
- Uses PUT method with updated body.
- Verifies the changes in the response.

### 4. `DeleteUser.java`
- Deletes a user/author from the API.
- Validates successful deletion by checking status code and follow-up GET request.

---

## 🧪 Test Execution

All tests are written using Rest Assured. To run them:

```bash
mvn test
```

---

## 📦 Additional Tools

### 5. Postman
- Performed manual API testing using Postman.
- Covered all CRUD operations (GET, POST, PUT, DELETE).
- Exported the test collection as a .json file.
- ✅ Located inside the postman folder.

### 6. JMeter
- Conducted performance/load testing of the API.
- ✅ Test result saved as a PDF.
- ✅ Located inside the jmeter folder.

