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
    <title>Edit Country</title>
    <link rel="stylesheet" href="style/styles.css">
</head>
<body>
<div class="form-container">
    <form action="/country?action=update" method="post">
        <input type="hidden" name="id" value="${requestScope.country.id}"/>
        <div class="form-group">
            <label for="country-name">Country Name:</label>
            <input type="text" id="country-name" name="name" required value="${requestScope.country.name}">
        </div>
        <div class="form-group">
            <label for="capital">Capital:</label>
            <input type="text" id="capital" name="capital" required value="${requestScope.country.capital}">
        </div>
        <div class="form-group">
            <label for="population">Population:</label>
            <input type="text" id="population" name="population" required value="${requestScope.country.population}">
        </div>
        <div class="form-group">
            <%--@declare id="continent"--%><label for="continent">Continent:</label>
            <select name="continent" value="${requestScope.country.continent}">
                <option name="Asia">Asia</option>
                <option name="Europ">Europ</option>
                <option name="Africa">Africa</option>
                <option name="America">America</option>
                <option name="Australia">Australia</option>
            </select>
        </div>
        <button type="submit" class="btn-submit">Edit</button>
        <button type="button" name="cancel" class="btn-submit">cancel</button>
    </form>
</div>
</body>
</html>
