<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jamis Hair - Salão de Beleza</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header>
        <div class="logo">
            <h1>Jamis Hair</h1>
            <p>A solução para os seus cabelos</p>
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