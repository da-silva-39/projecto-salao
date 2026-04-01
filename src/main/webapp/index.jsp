<%@ include file="includes/header.jsp" %>
<div class="hero">
    <div class="hero-text">
        <h2>Transforme seu visual</h2>
        <p>No Jamis Hair, cada cliente é única e merece um atendimento especial.</p>
        <a href="${pageContext.request.contextPath}/contato.jsp" class="btn">Agende seu horário</a>
    </div>
</div>
<section class="destaques">
    <h3>Nossos Destaques</h3>
    <div class="cards">
        <div class="card">
            <div class="card-img" style="background-image: url('images/corte.jpg');"></div>
            <h4>Cortes Modernos</h4>
            <p>Estilos que combinam com sua personalidade.</p>
        </div>
        <div class="card">
            <div class="card-img" style="background-image: url('images/coloracao.jpg');"></div>
            <h4>Coloração</h4>
            <p>Tonalidades vibrantes e naturais.</p>
        </div>
        <div class="card">
            <div class="card-img" style="background-image: url('images/cachos.jpg');"></div>
            <h4>Cachos Definidos</h4>
            <p>Tratamento especial para cabelos cacheados.</p>
        </div>
    </div>
</section>
<%@ include file="includes/footer.jsp" %>