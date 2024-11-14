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
<h1>Metadata</h1>
<table>
  <tr>
    <td>Instance ID:</td>
    <td>${instance-id}</td>
  </tr>
  <tr>
    <td>Instance Type:</td>
    <td>${instance-type}</td>
  </tr>
  <tr>
    <td>Instance Life Cycle:</td>
    <td>${instance-life-cycle}</td>
  </tr>
  <tr>
    <td>Region:</td>
    <td>${region}</td>
  </tr>
  <tr>
    <td>Availability Zone:</td>
    <td>${availability-zone}</td>
  </tr>
</table>
</body>
</html>
