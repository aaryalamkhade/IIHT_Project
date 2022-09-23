# IIHT_Project
![image](https://user-images.githubusercontent.com/49730497/191897889-b3b5f641-4fcc-4e5a-8431-2e6dcfd1d722.png)


# Project Setup:

1. Open the **Eclipse IDE** and create a new **Web Dynamic project**.
2. If the feature is not available in the drop down menu then, Go To **Help** -> **Install New Software** -> In the work with paste teh following link Oxygen - http://download.eclipse.org/releases/oxygen -> In The Type Filter text search for **WEB XML** -> **Finish**.
3. Once the Web Dynamic Project feature is added Build a new project and create a new project with **pom.xml**.
4. Also while creating new project add new Runtime and **Apache tomcat 9.0 or the available server** with you.
5. Add the JAR files and paste them in **Web Content/WEB-INF** folder or add them from build path.
6. Now create some packages, in my case I have created 3 packages **com.training.controller , com.training.dao , com.training.model**.
7. The Dao package is used for data accces object in this package we write pattern usage.
8. In the Controller package we design the servlet files so as to map our url.
9. In the model package we declare the attributes its datatypes and their respective getters and setters. In our case we require two model files one for the student details and other for the course details.
10. Next we design our JSP Pages where we not only define the structure of our page but in some cases we can also embed the JDBC code inside it to establisg connection with database.
11. Now we write the sql code in oracle developer so as to store the value or check the value as provided by the user.
12. To establish a simple JDBC code we can write a very simple code as follows :

` Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");`
  
13. Design your database create table for storing Admin Login,Student Login,Course Details etc.
14. Also you can add some input validations to you registration forms so as to keep your system Robust and consistent.


