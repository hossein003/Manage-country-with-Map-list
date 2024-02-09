<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Manage Country</title>
    <link rel="stylesheet" href="../style/styles.css">
</head>
<body>
<div class="form-container">
    <form method="post" action="/country?action=query">
        <div class="form-group">
            <label for="country-name">Country Name:</label>
            <input type="text" id="country-name" name="name" >
        </div>
        <div class="form-group">
            <label for="capital">Capital:</label>
            <input type="text" id="capital" name="capital" >
        </div>
        <div class="form-group">
            <label for="population">Population:</label>
            <input type="text" id="population" name="population" >
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
        <button type="submit" class="btn-submit">Search</button>
    </form>
</div>
<br>
<div class="form-container">
    <form>
        <button type="submit" class="btn-submit"><a href="/create.jsp">Add New Country</a></button>
    </form>
</div>
<br>
<div class="table-container">
    <table>
        <thead>
        <tr>
            <th>Country Name</th>
            <th>Capital</th>
            <th>Population</th>
            <th>Continent</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach items="${requestScope.countries}" var="country">
            <c:url value="/country" var="editCountry">
                <c:param name="id" value="${country.id}"/>
                <c:param name="action" value="edit"/>
            </c:url>
            <c:url value="/country" var="deleteConfirmCountry">
                <c:param name="id" value="${country.id}"/>
                <c:param name="action" value="deleteConfirm"/>
            </c:url>
        <tr>
                <td>${country.name}</td>
                <td>${country.capital}</td>
                <td>${country.population}</td>
                <td>${country.continent}</td>
                <td><a href="${editCountry}" class="edit-link">Edit</a> </td>
                <td><a href="${deleteConfirmCountry}" class="delete-link">Delete</a> </td>
            </c:forEach>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
