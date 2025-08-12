# Employee Management System & Task Manager Frontend

---

## Employee Management System

A Spring Boot application to manage employee records with CRUD operations using MyBatis and H2 in-memory database.

---

### 1. Setup Instructions

#### Prerequisites

- Java 17 or higher  
- Maven 3.6+  
- IDE (e.g., VS Code, IntelliJ IDEA)  
- Postman or curl for API testing  

#### Steps to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/Mora-net/TestChipmong.git
   cd employeemanagement
2.Build the project:
   
   mvn clean package
3. Run the application:
   ```bash
 mvn spring-boot:run
4. Access the app:
API base URL: http://localhost:8080
   
H2 Console: http://localhost:8080/h2-console
JDBC URL: jdbc:h2:mem:testdb
User: sa
Password: (leave blank)

## 2. API Endpoints

1. Create a New Employee
Method: POST
URL: /employees
Description: Adds a new employee record.
Request Body (JSON):
{
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@example.com",
  "salary": 5500.00
}

2. Get All Employees
Method: GET
URL: /employees
Description: Retrieves a list of all employees.


3. Get Employee by ID
Method: GET
URL: /employees/{id}
Description: Retrieves a single employee by their ID.


4. Update an Employee
Method: PUT
URL: /employees/{id}
Description: Updates the details of an existing employee.
Request Body (JSON):
{
  "firstName": "Jane",
  "lastName": "Smith",
  "email": "jane.smith@example.com",
  "salary": 6000.00
}


5. Delete an Employee
Method: DELETE
URL: /employees/{id}
Description: Deletes an employee by ID.


## 3. Tools and Libraries Used
1. Spring Boot
Provides a robust framework to quickly build production-grade Java applications with minimal configuration.

2. MyBatis
A persistence framework that couples objects with stored procedures or SQL statements using XML or annotations. Used here instead of JPA/Hibernate for SQL mapping.

3. H2 Database
An in-memory, lightweight relational database useful for development and testing without requiring an external DB setup.

4. Maven
Build automation and dependency management tool, which compiles the project, runs tests, and packages the app.

5. Spring Validation (JSR 380)
Used to validate incoming data in API requests with annotations like @Valid and constraints such as @NotNull.
---

## Task Manager Frontend

A simple Vue.js  application for managing tasks.  
This app allows you to:
- List tasks
- Create and edit tasks through forms
- Call backend APIs via Axios
- Display tasks in a table
- Handle form validation and API errors

---

## 1. Setup Instructions

### 1. Prerequisites
- [Node.js](https://nodejs.org/) (v18+ recommended)
- npm (comes with Node.js)
- A running backend API (see API Endpoints section)

### 2. Clone the repository
```bash
git clone https://github.com/Mora-net/TestChipmong.git
cd task-manager-frontend
3. Install dependencies
npm install
4. Configure API URL
Open src/axios.js (or wherever Axios is configured)

Update the base URL to point to your backend API:
javascript:
axios.defaults.baseURL = "http://localhost:3000/api";
5. Run the app
npm run dev
The app will be available at: http://localhost:5173

## 2. API Endpoints
Method	Endpoint	Description	Request Body Example
GET	/tasks	Get all tasks	None
GET	/tasks/:id	Get single task	None
POST	/tasks	Create a new task	{ "title": "New Task", "description": "Task details" }
PUT	/tasks/:id	Update a task	{ "title": "Updated Task", "description": "Updated details" }
DELETE	/tasks/:id	Delete a task	None

## 3.  Tools / Libraries Used
Vue.js 3 — JavaScript framework for building UI

Vite — Fast build tool and development server

Axios — HTTP client for API calls

Bootstrap 5 — Styling and layout

ESLint — Code linting

 ```
## 4. Screenshots

### Task List
![Task List](https://raw.githubusercontent.com/Mora-net/TestChipmong/main/task-manager-frontend/screenshots/ListTask.png)

### Create Task Form
![Create Task Form](https://raw.githubusercontent.com/Mora-net/TestChipmong/main/task-manager-frontend/screenshots/Create%20Task.png)

### Task List After Create
![Task List After Create](https://raw.githubusercontent.com/Mora-net/TestChipmong/main/task-manager-frontend/screenshots/List%20After%20Create.png)

### Update Task Form
![Update Task Form](https://raw.githubusercontent.com/Mora-net/TestChipmong/main/task-manager-frontend/screenshots/Update%20Task.png)

### Task List After Update
![Task List After Update](https://raw.githubusercontent.com/Mora-net/TestChipmong/main/task-manager-frontend/screenshots/List%20After%20Update.png)

### Backend API Screenshot
![Backend API Screenshot](https://raw.githubusercontent.com/Mora-net/TestChipmong/main/task-manager-frontend/screenshots/BackEnd%20%28API%29.png)










  
