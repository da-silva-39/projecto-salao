// src/com/jamis/salon/servlet/LoginServlet.java
package com.jamis.salon.servlet;

import java.io.IOException;
import java.sql.SQLException;

import com.jamis.salon.dao.AdminDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private AdminDAO adminDAO = new AdminDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Exibir página de login
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            if (adminDAO.validarLogin(username, password)) {
                // Login bem-sucedido
                HttpSession session = request.getSession();
                session.setAttribute("usuarioLogado", username);
                response.sendRedirect(request.getContextPath() + "/admin/cliente?action=list");
            } else {
                // Falha no login
                request.setAttribute("erro", "Usuário ou senha inválidos!");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("erro", "Erro no banco de dados. Tente novamente.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}