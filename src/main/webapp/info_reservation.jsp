<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.rsv.beans.Client, com.rsv.beans.Reservation" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Informations de la Réservation</title>
    <style>
        .success { color: green; }
    </style>
</head>
<body>
    <h2>Informations de la Réservation</h2>
    <p class="success">Réservation effectuée avec succès</p>
    <h3>Informations du Client</h3>
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
    <h3>Informations de Réservation</h3>
    <table border="1">
        <tr>
            <th>Type d'appartement</th>
            <td>${reservation.type}</td>
        </tr>
        <tr>
            <th>Prix</th>
            <td>${reservation.prix}</td>
        </tr>
        <tr>
            <th>Options</th>
            <td>
                <c:forEach var="option" items="${reservation.options}">
                    ${option}<br/>
                </c:forEach>
            </td>
        </tr>
    </table>
    <br/>
    <a href="index.jsp">Retour à l'accueil</a>
</body>
</html>
