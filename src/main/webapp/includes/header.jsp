<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jamis Hair - Salão de Beleza</title>
    <!-- Favicon (ícone da aba do navegador) -->
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/admin/favicon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <div class="logo">
            <!-- Imagem da logo antes do texto -->
            <img src="${pageContext.request.contextPath}/admin/favicon.png" alt="Logo Jamis Hair" class="logo-img">
            <div class="logo-text">
                <h1>Jamis Hair</h1>
                <p>A solução para os seus cabelos</p>
            </div>
        </div>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}/index.jsp">Início</a></li>
                <li><a href="${pageContext.request.contextPath}/sobre.jsp">Sobre</a></li>
                <li><a href="${pageContext.request.contextPath}/servicos.jsp">Serviços</a></li>
                <li><a href="${pageContext.request.contextPath}/contato.jsp">Contato</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/cliente?action=list">Admin</a></li>
            </ul>
        </nav>
    </header>
    <main>