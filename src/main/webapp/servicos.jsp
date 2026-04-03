<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>

<div class="page-hero" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('${pageContext.request.contextPath}/images/img9.jpg');">
    <div class="page-hero-content">
        <h1>Nossos Serviços</h1>
        <p>Oferecemos uma variedade completa para cuidar da sua beleza</p>
    </div>
</div>

<section class="services-detailed">
    <div class="container">
        <div class="section-header">
            <span class="section-subtitle">O que você encontra aqui</span>
            <h2>Serviços exclusivos</h2>
        </div>

        <!-- Corte -->
        <div class="service-block">
            <div class="service-block-text">
                <h3><i class="fas fa-cut"></i> Corte Moderno</h3>
                <p>Cortes personalizados para todos os tipos de cabelo. Trabalhamos com técnicas atualizadas para valorizar seu rosto e estilo.</p>
                <ul>
                    <li>Corte feminino e masculino</li>
                    <li>Corte infantil (a partir de 5 anos)</li>
                    <li>Repicagem e camadas</li>
                </ul>
            </div>
            <div class="service-block-media">
                <video controls poster="${pageContext.request.contextPath}/images/img15.png">
                    <source src="${pageContext.request.contextPath}/videos/vid1.mp4" type="video/mp4">
                    Seu navegador não suporta vídeo.
                </video>
            </div>
        </div>

        <!-- Coloração -->
        <div class="service-block reverse">
            <div class="service-block-text">
                <h3><i class="fas fa-palette"></i> Coloração e Mechas</h3>
                <p>Tonalidades vibrantes ou discretas, com produtos de alta qualidade e técnicas avançadas.</p>
                <ul>
                    <li>Coloração completa</li>
                    <li>Mechas californianas</li>
                    <li>Ombré hair e luzes</li>
                </ul>
            </div>
            <div class="service-block-media">
                <video controls poster="${pageContext.request.contextPath}/images/img16.png">
                    <source src="${pageContext.request.contextPath}/videos/vid2.mp4" type="video/mp4">
                    Seu navegador não suporta vídeo.
                </video>
            </div>
        </div>

        <!-- Tratamentos -->
        <div class="service-block">
            <div class="service-block-text">
                <h3><i class="fas fa-spa"></i> Tratamentos Capilares</h3>
                <p>Recuperação e nutrição profunda para cabelos danificados.</p>
                <ul>
                    <li>Botox capilar</li>
                    <li>Hidratação e nutrição</li>
                    <li>Reconstrução capilar</li>
                </ul>
            </div>
            <div class="service-block-media">
                <video controls poster="${pageContext.request.contextPath}/images/img17.png">
                    <source src="${pageContext.request.contextPath}/videos/vid4.mp4" type="video/mp4">
                    Seu navegador não suporta vídeo.
                </video>
            </div>
        </div>

        <!-- Penteados -->
        <div class="service-block reverse">
            <div class="service-block-text">
                <h3><i class="fas fa-crown"></i> Penteados para Noivas</h3>
                <p>Penteados sofisticados para o seu grande dia. Inclui teste gratuito.</p>
                <ul>
                    <li>Coques e tranças</li>
                    <li>Penteados com acessórios</li>
                    <li>Finalização com brilho e fixação</li>
                </ul>
            </div>
            <div class="service-block-media">
                <video controls poster="${pageContext.request.contextPath}/images/img18.png">
                    <source src="${pageContext.request.contextPath}/videos/vid7.mp4" type="video/mp4">
                    Seu navegador não suporta vídeo.
                </video>
            </div>
        </div>

        <!-- Maquiagem -->
        <div class="service-block">
            <div class="service-block-text">
                <h3><i class="fas fa-mask"></i> Maquiagem e proteses Profissionais</h3>
                <p>Make para eventos, noivas, formaturas e sessões de fotos.</p>
                <ul>
                    <li>Maquiagem social e artística</li>
                    <li>Make para noivas e madrinhas</li>
                    <li>Curso de automaquiagem (sob consulta)</li>
                </ul>
            </div>
            <div class="service-block-media">
                <video controls poster="${pageContext.request.contextPath}/images/img19.png">
                    <source src="${pageContext.request.contextPath}/videos/vid6.mp4" type="video/mp4">
                    Seu navegador não suporta vídeo.
                </video>
            </div>
        </div>
    </div>
</section>



<%@ include file="includes/footer.jsp" %>