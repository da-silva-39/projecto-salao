<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>Login Administrativo - Jamis Hair</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        .login-container {
            max-width: 400px;
            margin: 100px auto;
            background: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
        }
        .login-container h2 {
            color: #b75e3a;
            margin-bottom: 1rem;
        }
        .login-container input {
            width: 100%;
            padding: 0.8rem;
            margin: 0.5rem 0;
            border: 1px solid #ddd;
            border-radius: 10px;
        }
        .login-container button {
            width: 100%;
            margin-top: 1rem;
        }
        .error-msg {
            background: #f8d7da;
            color: #721c24;
            padding: 0.5rem;
            border-radius: 10px;
            margin-bottom: 1rem;
        }
        .back-link {
            display: inline-block;
            margin-top: 1rem;
            color: #b75e3a;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Acesso Administrativo</h2>
        <% if (request.getAttribute("erro") != null) { %>
            <div class="error-msg"><%= request.getAttribute("erro") %></div>
        <% } %>
        <form action="${pageContext.request.contextPath}/login" method="post">
            <input type="text" name="username" placeholder="Usuário" required autofocus>
            <input type="password" name="password" placeholder="Senha" required>
            <button type="submit" class="btn">Entrar</button>
        </form>
        <a href="${pageContext.request.contextPath}/index.jsp" class="back-link">← Voltar para o site</a>
    </div>
</body>
</html>