# Library Management System (Servlet + JSP + Hibernate)

Minimal README for quick setup and deployment.

## Tech Stack

* Java Servlet
* JSP + JSTL
* Hibernate ORM
* MySQL
* Tomcat

## Project Structure

```
src/
 ├─ java/com/app/
 │    ├─ controller
 │    ├─ dao
 │    ├─ model
 │    └─ util
 └─ webapp/
      ├─ WEB-INF
      └─ jsp
```

## Database Setup

```sql
CREATE DATABASE library_db;

CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  isbn VARCHAR(50),
  copies INT
);
```

## Hibernate Config (`hibernate.cfg.xml`)

```xml
<hibernate-configuration>
  <session-factory>
    <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/library_db</property>
    <property name="hibernate.connection.username">root</property>
    <property name="hibernate.connection.password">root</property>
    <property name="hibernate.dialect">org.hibernate.dialect.MySQL8Dialect</property>
    <mapping class="com.app.model.Book"/>
  </session-factory>
</hibernate-configuration>
```

## Minimal Entity

```java
@Entity
@Table(name="books")
public class Book {
  @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  private String title;
  private String author;
}
```



## Run

1. Update DB credentials.
2. Build WAR using Maven.
3. Deploy on Tomcat.
4. Open `http://localhost:8080/library/`.
