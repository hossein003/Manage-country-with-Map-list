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
    <title>Title</title>
    <link rel="stylesheet" href="style/styles.css">
</head>
<body>
<div class="form-container">
    <form>
        <div class="form-group">
            <label for="country-name">Country Name:</label>
            <input type="text" id="country-name" name="country-name" required>
        </div>
        <div class="form-group">
            <label for="capital">Capital:</label>
            <input type="text" id="capital" name="capital" required>
        </div>
        <div class="form-group">
            <label for="population">Population:</label>
            <input type="text" id="population" name="population" required>
        </div>
        <div class="form-group">
            <label for="continent">Continent:</label>
            <select id="continent" name="continent">
                <option value="Asia">Asia</option>
                <option value="Europe">Europe</option>
                <option value="Africa">Africa</option>
                <option value="North America">North America</option>
                <option value="South America">South America</option>
                <option value="Australia">Australia</option>
                <option value="Antarctica">Antarctica</option>
            </select>
        </div>
        <button type="submit" class="btn-submit">Delete</button>
    </form>
</div>
</body>
</html>
