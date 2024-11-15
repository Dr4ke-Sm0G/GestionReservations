package com.rsv.servlet;

import com.rsv.beans.Client;
import com.rsv.beans.Reservation;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/creer_reservation")
public class creer_reservation extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public creer_reservation() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer la session
        HttpSession session = request.getSession();

        // Récupérer l'objet Client depuis la session
        Client client = (Client) session.getAttribute("client");

        if (client == null) {
            // Si le client n'est pas dans la session, rediriger vers la page d'inscription
            response.sendRedirect("inscription.jsp");
            return;
        }

        // Récupérer les données du formulaire
        String type = request.getParameter("type");
        String prixStr = request.getParameter("prix");
        String[] options = request.getParameterValues("options");

        // Vérification des champs vides
        if (type == null || type.isEmpty() ||
            prixStr == null || prixStr.isEmpty()) {

            // Message d'erreur et retour à la page de réservation
            request.setAttribute("errorMessage", "Vous devez remplir tous les champs");
            request.getRequestDispatcher("reservation.jsp").forward(request, response);
        } else {
            // Convertir le prix en double
            double prix = 0;
            try {
                prix = Double.parseDouble(prixStr);
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Le prix doit être un nombre valide");
                request.getRequestDispatcher("reservation.jsp").forward(request, response);
                return;
            }

            // Créer un objet Reservation et le remplir
            Reservation reservation = new Reservation();
            reservation.setType(type);
            reservation.setPrix(prix);
            reservation.setOptions(options);

            // Associer la réservation au client
            client.setReservation(reservation);

            // Mettre à jour la session
            session.setAttribute("client", client);

            // Rediriger vers la page info_reservation.jsp
            request.setAttribute("client", client);
            request.setAttribute("reservation", reservation);
            request.getRequestDispatcher("info_reservation.jsp").forward(request, response);
        }
    }
}
