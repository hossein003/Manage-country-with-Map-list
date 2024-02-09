<%--
  Created by IntelliJ IDEA.
  User: Hossein
  Date: 2/9/2024
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Confirm</title>
    <link rel="stylesheet" href="style/styles.css">
</head>
<body>
<div class="form-container">
    <form action="/country?action=delete" method="post">
        <div class="form-group" style="display: none">
            <label for="country-id">Country Id:</label>
            <input type="text" id="country-id" name="id" value="${requestScope.country.id}">
        </div>
        <div class="form-group">
            <label for="country-name">Country Name:</label>
            <input type="text" id="country-name" name="country-name" value="${requestScope.country.name}" disabled>
        </div>
        <div class="form-group">
            <label for="capital">Capital:</label>
            <input type="text" id="capital" name="capital" disabled value="${requestScope.country.capital}">
        </div>
        <div class="form-group">
            <label for="population">Population:</label>
            <input type="text" id="population" name="population" disabled value="${requestScope.country.population}">
        </div>
        <div class="form-group">
            <label for="continent">Continent:</label>
            <input type="text" id="continent" name="population" disabled>
        </div>
        <button type="submit" class="btn-submit">Delete</button>
        <button type="submit" name="cancel" class="btn-submit">Cancel</button>
    </form>
</div>
</body>
</html>
