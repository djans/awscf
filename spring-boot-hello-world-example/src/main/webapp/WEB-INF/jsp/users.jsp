<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee List</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 8px;
      text-align: left;
      border: 1px solid #ddd;
    }
  </style>
</head>
<body>
<h1>Employee List</h1>

<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>FName</th>
    <th>LName</th>
    <th>Email</th>
    <th>CreatedAt</th>
  </tr>
  </thead>
  <tbody>
  <!-- Iterate through the list of employees passed from the controller -->
  <c:forEach var="user" items="${users}">
    <tr>
      <td>${user.user_id}</td>
      <td>${user.first_name}</td>
      <td>${user.last_name}</td>
      <td>${user.email}</td>
      <td>${user.created_at}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
