<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.rsv.beans.Client" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Informations du Client</title>
    <style>
        .success { color: green; }
    </style>
</head>
<body>
    <h2>Informations du Client</h2>
    <p class="success">Inscription avec succès</p>
    <table border="1">
        <tr>
            <th>Nom</th>
            <td>${client.nom}</td>
        </tr>
        <tr>
            <th>Prénom</th>
            <td>${client.prenom}</td>
        </tr>
        <tr>
            <th>Téléphone</th>
            <td>${client.telephone}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${client.email}</td>
        </tr>
    </table>
    <br/>
    <a href="reservation.jsp">Faire une réservation</a>
</body>
</html>
