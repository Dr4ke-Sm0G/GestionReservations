package com.rsv.servlet;

import com.rsv.beans.Client;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/creer_client")
public class creer_client extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public creer_client() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les données du formulaire
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");

        // Vérification des champs vides
        if (nom == null || nom.isEmpty() ||
            prenom == null || prenom.isEmpty() ||
            telephone == null || telephone.isEmpty() ||
            email == null || email.isEmpty()) {

            // Message d'erreur et retour à la page d'inscription
            request.setAttribute("errorMessage", "Vous devez remplir tous les champs");
            request.getRequestDispatcher("inscription.jsp").forward(request, response);
        } else {
            // Créer un objet Client et le remplir
            Client client = new Client();
            client.setNom(nom);
            client.setPrenom(prenom);
            client.setTelephone(telephone);
            client.setEmail(email);

            // Stocker l'objet client dans la session
            HttpSession session = request.getSession();
            session.setAttribute("client", client);

            // Rediriger vers la page info_client.jsp
            request.setAttribute("client", client);
            request.getRequestDispatcher("info_client.jsp").forward(request, response);
        }
    }
}
