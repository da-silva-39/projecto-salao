<%@ include file="includes/header.jsp" %>
<div class="page-content">
    <h2>Contato</h2>
    <div class="contact-container">
        <div class="contact-info">
            <h3>Informações</h3>
            <p><i class="fas fa-phone"></i> Telefone: 86 974 3294</p>
            <p><i class="fab fa-instagram"></i> Instagram: @jamis_hair_mz</p>
            <p><i class="fab fa-tiktok"></i> TikTok: @jamihair</p>
            <p><i class="far fa-clock"></i> Horário: Segunda a Sábado, 7h - 17h</p>
        </div>
        <form action="${pageContext.request.contextPath}/admin/cliente" method="post" class="contact-form">
            <h3>Cadastre-se para receber novidades</h3>
            <input type="text" name="nome" placeholder="Seu nome" required>
            <input type="tel" name="telefone" placeholder="Telefone" required>
            <input type="email" name="email" placeholder="E-mail" required>
            <button type="submit" class="btn">Enviar</button>
        </form>
    </div>
</div>
<%@ include file="includes/footer.jsp" %>