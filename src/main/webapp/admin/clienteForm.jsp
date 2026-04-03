<%@ page import="com.jamis.salon.model.Cliente" %>
<%@ include file="../includes/header.jsp" %>



<div class="admin-container">
    <h2><% if (request.getAttribute("cliente") == null) { %>Novo Cliente<% } else { %>Editar Cliente<% } %></h2>
    <% if (request.getAttribute("erro") != null) { %>
        <div class="error-msg"><%= request.getAttribute("erro") %></div>
    <% } %>
    <form action="cliente" method="post">
        <%
            Cliente cliente = (Cliente) request.getAttribute("cliente");
            if (cliente != null) {
        %>
        <input type="hidden" name="id" value="<%= cliente.getId() %>">
        <% } %>
        <label>Nome:</label>
        <input type="text" name="nome" value="<%= cliente != null ? cliente.getNome() : "" %>" required>
        <label>Telefone:</label>
        <input type="text" name="telefone" value="<%= cliente != null ? cliente.getTelefone() : "" %>" required>
        <label>E-mail:</label>
        <input type="email" name="email" value="<%= cliente != null ? cliente.getEmail() : "" %>">
        <button type="submit" class="btn">Salvar</button>
        <a href="cliente?action=list" class="btn cancel">Cancelar</a>
    </form>
</div>
<%@ include file="../includes/footer.jsp" %>