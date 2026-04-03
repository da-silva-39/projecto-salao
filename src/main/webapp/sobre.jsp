<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>

<!-- Hero da página Sobre -->
<div class="page-hero" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('${pageContext.request.contextPath}/images/img11.jpg');">
    <div class="page-hero-content">
        <h1>Mais que um salão, um lugar para você brilhar</h1>
        <p>Inovação, carinho e resultados que transformam.</p>
    </div>
</div>

<!-- Timeline de Diferenciais -->


<!-- Depoimentos da internet (Instagram/TikTok) - apenas texto -->


<!-- Tour Virtual / Galeria Interativa -->
<section class="virtual-tour">
    <div class="container">
        <div class="section-header">
            <span class="section-subtitle">Conheça nosso espaço</span>
            <h2>Tour virtual pelo Jamis Hair</h2>
            <p>Clique nas imagens e sinta o ambiente acolhedor</p>
        </div>
        <div class="tour-gallery">
            <div class="tour-item" data-image="${pageContext.request.contextPath}/images/img12.jpg">
                <img src="${pageContext.request.contextPath}/images/img12.jpg" alt="Recepção">
                <div class="tour-overlay">
                    <i class="fas fa-search-plus"></i>
                    <span>Recepção</span>
                </div>
            </div>
            <div class="tour-item" data-image="${pageContext.request.contextPath}/images/img4.jpg">
                <img src="${pageContext.request.contextPath}/images/img4.jpg" alt="Espaço cachos">
                <div class="tour-overlay">
                    <i class="fas fa-search-plus"></i>
                    <span>Espaço Cachos</span>
                </div>
            </div>
            <div class="tour-item" data-image="${pageContext.request.contextPath}/images/img6.jpg">
                <img src="${pageContext.request.contextPath}/images/img6.jpg" alt="Cabines de coloração">
                <div class="tour-overlay">
                    <i class="fas fa-search-plus"></i>
                    <span>Área de Coloração</span>
                </div>
            </div>
            <div class="tour-item" data-image="${pageContext.request.contextPath}/images/img5.jpg">
                <img src="${pageContext.request.contextPath}/images/img5.jpg" alt="Espaço relax">
                <div class="tour-overlay">
                    <i class="fas fa-search-plus"></i>
                    <span>Espaço Relax</span>
                </div>
            </div>
             <div class="tour-item" data-image="${pageContext.request.contextPath}/images/img10.jpg">
                <img src="${pageContext.request.contextPath}/images/img10.jpg" alt="Espaço relax">
                <div class="tour-overlay">
                    <i class="fas fa-search-plus"></i>
                    <span>Espaço Relax</span>
                </div>
            </div>
             <div class="tour-item" data-image="${pageContext.request.contextPath}/images/img11.jpg">
                <img src="${pageContext.request.contextPath}/images/img11.jpg" alt="Espaço relax">
                <div class="tour-overlay">
                    <i class="fas fa-search-plus"></i>
                    <span>Espaço Relax</span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Selos e Parcerias -->
<section class="badges-section">
    <div class="container">
        <div class="badges-grid">
            <div class="badge-card">
                <i class="fas fa-trophy"></i>
                <h4>Prêmio Excelência 2024</h4>
                <p>Reconhecimento pelo atendimento ao cliente</p>
            </div>
            <div class="badge-card">
                <i class="fas fa-leaf"></i>
                <h4>Produtos Sustentáveis</h4>
                <p>Parceria com marcas eco-friendly</p>
            </div>
            <div class="badge-card">
                <i class="fas fa-certificate"></i>
                <h4>Profissionais Certificados</h4>
                <p>Capacitação contínua internacional</p>
            </div>
            <div class="badge-card">
                <i class="fas fa-hand-holding-heart"></i>
                <h4>Atendimento Humanizado</h4>
                <p>Protocolo exclusivo de acolhimento</p>
            </div>
        </div>
    </div>
</section>

<!-- FAQ (Perguntas Frequentes) -->
<section class="faq-section">
    <div class="container">
        <div class="section-header">
            <span class="section-subtitle">Dúvidas comuns</span>
            <h2>Perguntas frequentes</h2>
        </div>
        <div class="faq-grid">
            <div class="faq-item">
                <div class="faq-question">➜ Preciso lavar o cabelo antes de ir ao salão?</div>
                <div class="faq-answer">Depende do serviço. Para cortes a seco ou coloração, é melhor vir com cabelo limpo e seco. Para hidratações, pode vir com cabelo sujo. Nossa equipe orientará no agendamento.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">➜ Vocês atendem crianças?</div>
                <div class="faq-answer">Sim, atendemos crianças a partir de 5 anos com horário especial e profissionais treinados.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">➜ Posso levar fotos de inspiração?</div>
                <div class="faq-answer">Claro! Adoramos trabalhar com referências visuais. Traga suas inspirações para alinharmos as expectativas.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question">➜ Qual a política de cancelamento?</div>
                <div class="faq-answer">Pedimos aviso com pelo menos 24h de antecedência para remarcar ou cancelar sem custos.</div>
            </div>
        </div>
    </div>
</section>

<!-- Localização e Contato Rápido -->
<section class="location-section">
    <div class="container">
        <div class="location-grid">
            <div class="location-info">
                <h3><i class="fas fa-map-marker-alt"></i> Onde estamos</h3>
                <p>Av. Marginal, nº 1234 - Maputo, Moçambique</p>
                <p><i class="fab fa-whatsapp"></i> <strong>WhatsApp:</strong> 86 974 3294</p>
                <p><i class="far fa-clock"></i> <strong>Horário:</strong> Segunda a Sábado, 7h - 17h</p>
                <a href="https://maps.google.com" target="_blank" class="btn btn-outline">Abrir no Google Maps</a>
            </div>
            <div class="location-map">
                <img src="${pageContext.request.contextPath}/images/img1.jpg" alt="Espaço relax">
            </div>
        </div>
    </div>
</section>

<!-- CTA final -->
<section class="cta-about">
    <div class="container">
        <div class="cta-about-content">
            <h2>Agende sua experiência Jamis Hair</h2>
            <p>Estamos prontas para realçar sua beleza com todo carinho e técnica.</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/contato.jsp" class="btn btn-primary">Agendar horário</a>
                <a href="https://wa.me/258869743294" class="btn btn-whatsapp" target="_blank"><i class="fab fa-whatsapp"></i> WhatsApp</a>
            </div>
        </div>
    </div>
</section>

<%@ include file="includes/footer.jsp" %>