<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Inscription</title>
    <style>
        .error { color: red; }
        .success { color: green; }
        label { display: block; margin-top: 10px; }
    </style>
</head>
<body>
    <h2>Inscription</h2>
    <c:if test="${not empty errorMessage}">
        <p class="error">${errorMessage}</p>
    </c:if>
    <form action="creer_client" method="post">
        <label>Nom :</label>
        <input type="text" name="nom" />
        <label>Prénom :</label>
        <input type="text" name="prenom" />
        <label>Téléphone :</label>
        <input type="text" name="telephone" />
        <label>Email :</label>
        <input type="email" name="email" />
        <br/><br/>
        <input type="submit" value="S'inscrire" />
    </form>
</body>
</html>
