package com.jamis.salon.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.jamis.salon.dao.ClienteDAO;
import com.jamis.salon.model.Cliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/cliente")
public class ClienteServlet extends HttpServlet {
	private ClienteDAO clienteDAO = new ClienteDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null)
			action = "list";

		try {
			switch (action) {
			case "new":
				request.getRequestDispatcher("/admin/clienteForm.jsp").forward(request, response);
				break;
			case "edit":
				int id = Integer.parseInt(request.getParameter("id"));
				Cliente cliente = clienteDAO.buscarPorId(id);
				request.setAttribute("cliente", cliente);
				request.getRequestDispatcher("/admin/clienteForm.jsp").forward(request, response);
				break;
			case "delete":
				id = Integer.parseInt(request.getParameter("id"));
				clienteDAO.deletar(id);
				response.sendRedirect("cliente?action=list");
				break;
			default:
				List<Cliente> clientes = clienteDAO.listarTodos();
				request.setAttribute("clientes", clientes);
				request.getRequestDispatcher("/admin/clientes.jsp").forward(request, response);
				break;
			}
		} catch (SQLException e) {
			throw new ServletException("Erro de banco de dados", e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idParam = request.getParameter("id");
		String nome = request.getParameter("nome");
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");

		// Validações simples
		if (nome == null || nome.trim().isEmpty()) {
			request.setAttribute("erro", "Nome é obrigatório!");
			request.getRequestDispatcher("/admin/clienteForm.jsp").forward(request, response);
			return;
		}
		if (telefone == null || telefone.trim().isEmpty()) {
			request.setAttribute("erro", "Telefone é obrigatório!");
			request.getRequestDispatcher("/admin/clienteForm.jsp").forward(request, response);
			return;
		}

		Cliente cliente = new Cliente();
		cliente.setNome(nome.trim());
		cliente.setTelefone(telefone.trim());
		cliente.setEmail(email != null ? email.trim() : "");

		try {
			if (idParam == null || idParam.isEmpty()) {
				clienteDAO.inserir(cliente);
			} else {
				cliente.setId(Integer.parseInt(idParam));
				clienteDAO.atualizar(cliente);
			}
			response.sendRedirect("cliente?action=list");
		} catch (SQLException e) {
			throw new ServletException("Erro ao salvar cliente", e);
		}
	}
}