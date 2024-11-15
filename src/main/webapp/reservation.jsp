<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.rsv.beans.Client" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Réservation</title>
    <style>
        .error { color: red; }
        label { display: block; margin-top: 10px; }
    </style>
</head>
<body>
    <h2>Réservation</h2>
    <c:if test="${not empty errorMessage}">
        <p class="error">${errorMessage}</p>
    </c:if>
    <form action="creer_reservation" method="post">
        <!-- Informations du client -->
        <h3>Informations du Client</h3>
        <label>Nom :</label>
        <input type="text" name="nom" />
        <label>Prénom :</label>
        <input type="text" name="prenom" />
        <label>Téléphone :</label>
        <input type="text" name="telephone" />
        <label>Email :</label>
        <input type="email" name="email" />

        <!-- Informations de réservation -->
        <h3>Informations de Réservation</h3>
        <label>Type d'appartement :</label>
        <select name="type">
            <option value="T1">T1</option>
            <option value="T2">T2</option>
            <option value="T3">T3</option>
        </select>

        <label>Prix :</label>
        <input type="text" name="prix" />

        <label>Options :</label>
        <input type="checkbox" name="options" value="Proche de la mer" /> Proche de la mer<br/>
        <input type="checkbox" name="options" value="Piscine" /> Piscine<br/>
        <input type="checkbox" name="options" value="Jardin" /> Jardin<br/>

        <br/>
        <input type="submit" value="Réserver" />
    </form>
</body>
</html>
