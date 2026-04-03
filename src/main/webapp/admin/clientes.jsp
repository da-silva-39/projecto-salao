<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.jamis.salon.model.Cliente" %>
<%
    if (session.getAttribute("usuarioLogado") == null) {
        response.sendRedirect(request.getContextPath() + "/login");
        return;
    }
%>
<%@ include file="../includes/header.jsp" %>
<div class="admin-container">
    <h2>Administração - Clientes</h2>
    <a href="cliente?action=new" class="btn">Novo Cliente</a>
    <a href="${pageContext.request.contextPath}/logout" class="btn" style="background:#666;">Sair</a>
    <table class="clientes-table">
        <thead>
            <tr><th>ID</th><th>Nome</th><th>Telefone</th><th>Email</th><th>Ações</th></tr>
        </thead>
        <tbody>
            <%
                List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes");
                if (clientes != null) {
                    for (Cliente c : clientes) {
            %>
            <tr>
                <td><%= c.getId() %></td>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getEmail() %></td>
                <td>
                    <a href="cliente?action=edit&id=<%= c.getId() %>" class="edit">Editar</a>
                    <a href="cliente?action=delete&id=<%= c.getId() %>" class="delete" onclick="return confirm('Tem certeza?')">Excluir</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</div>
<%@ include file="../includes/footer.jsp" %>