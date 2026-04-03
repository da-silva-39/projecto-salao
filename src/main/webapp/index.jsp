<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>

<!-- Hero Section -->
<div class="hero">
    <div class="hero-content">
        <div class="hero-text">
            <span class="hero-tag">Salão de Beleza Premium</span>
            <h1>Transforme seu visual com quem entende de beleza</h1>
            <p>No Jamis Hair, cada cliente é única. Oferecemos atendimento personalizado e técnicas modernas para realçar sua beleza natural.</p>
            <div class="hero-buttons">
                <a href="${pageContext.request.contextPath}/contato.jsp" class="btn btn-primary">Agende seu horário</a>
                <a href="${pageContext.request.contextPath}/servicos.jsp" class="btn btn-outline">Ver serviços</a>
            </div>
        </div>
        <div class="hero-stats">
            <div class="stat">
                <span class="stat-number">500+</span>
                <span class="stat-label">Clientes satisfeitas</span>
            </div>
            <div class="stat">
                <span class="stat-number">10+</span>
                <span class="stat-label">Anos de experiência</span>
            </div>
            <div class="stat">
                <span class="stat-number">20+</span>
                <span class="stat-label">Serviços especializados</span>
            </div>
        </div>
    </div>
</div>

<!-- Serviços em Destaque -->
<section class="services-section">
    <div class="container">
        <div class="section-header">
            <span class="section-subtitle">O que oferecemos</span>
            <h2>Serviços em Destaque</h2>
            <p>Conheça alguns dos nossos serviços mais procurados</p>
        </div>
        <div class="services-grid">
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-cut"></i></div>
                <h3>Cortes Modernos</h3>
                <p>Tendências atuais para todos os tipos de cabelo, personalizados para seu estilo.</p>
                <a href="${pageContext.request.contextPath}/servicos.jsp" class="service-link">Saiba mais →</a>
            </div>
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-palette"></i></div>
                <h3>Coloração</h3>
                <p>Tonalidades vibrantes ou discretas, com técnicas exclusivas e produtos de qualidade.</p>
                <a href="${pageContext.request.contextPath}/servicos.jsp" class="service-link">Saiba mais →</a>
            </div>
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-spa"></i></div>
                <h3>Tratamentos Capilares</h3>
                <p>Recuperação profunda para cabelos danificados, com resultados visíveis.</p>
                <a href="${pageContext.request.contextPath}/servicos.jsp" class="service-link">Saiba mais →</a>
            </div>
            <div class="service-card">
                <div class="service-icon"><i class="fas fa-crown"></i></div>
                <h3>Penteados para Noivas</h3>
                <p>Para o seu grande dia, um penteado que vai te fazer brilhar ainda mais.</p>
                <a href="${pageContext.request.contextPath}/servicos.jsp" class="service-link">Saiba mais →</a>
            </div>
        </div>
    </div>
</section>

<!-- Por que nos escolher -->
<section class="why-us">
    <div class="container">
        <div class="why-us-grid">
            <div class="why-us-content">
                <span class="section-subtitle">Diferenciais</span>
                <h2>Por que escolher o Jamis Hair?</h2>
                <p>Mais de 10 anos transformando vidas através da beleza e autoestima.</p>
                <div class="features-list">
                    <div class="feature">
                        <i class="fas fa-check-circle"></i>
                        <div>
                            <h4>Profissionais Qualificados</h4>
                            <p>Equipe treinada e atualizada com as últimas tendências do mercado.</p>
                        </div>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check-circle"></i>
                        <div>
                            <h4>Produtos de Alta Qualidade</h4>
                            <p>Trabalhamos com marcas reconhecidas que garantem resultados excepcionais.</p>
                        </div>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check-circle"></i>
                        <div>
                            <h4>Ambiente Acolhedor</h4>
                            <p>Espaço pensado para seu conforto e bem-estar.</p>
                        </div>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check-circle"></i>
                        <div>
                            <h4>Atendimento Personalizado</h4>
                            <p>Cada cliente recebe uma consultoria exclusiva para seu tipo de cabelo.</p>
                        </div>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/sobre.jsp" class="btn btn-secondary">Conheça mais sobre nós</a>
            </div>
            <div class="why-us-image">
                <img src="${pageContext.request.contextPath}/images/img2.jpg" alt="Interior do Jamis Hair">
            </div>
        </div>
    </div>
</section>

<!-- Galeria de Trabalhos -->
<section class="gallery-section">
    <div class="container">
        <div class="section-header">
            <span class="section-subtitle">Nosso portfólio</span>
            <h2>Transformações Reais</h2>
            <p>Confira alguns dos nossos trabalhos realizados com muito amor e dedicação</p>
        </div>
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img14.jpg" alt="Transformação capilar">
                <div class="gallery-overlay">
                    <span>Antes e Depois</span>
                    <i class="fas fa-search-plus"></i>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img13.jpg" alt="Penteado noiva">
                <div class="gallery-overlay">
                    <span>Penteados</span>
                    <i class="fas fa-search-plus"></i>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img3.jpg" alt="Coloração">
                <div class="gallery-overlay">
                    <span>Coloração</span>
                    <i class="fas fa-search-plus"></i>
                </div>
            </div>
           
            </div>
        </div>
        <div class="gallery-cta">
            <a href="https://www.instagram.com/jamis_hair_mz/" target="_blank" class="btn btn-outline">Ver mais trabalhos no Instagram <i class="fab fa-instagram"></i></a>
        </div>
    </div>
</section>

<!-- Depoimentos -->
<section class="testimonials">
    <div class="container">
        <div class="section-header">
            <span class="section-subtitle">O que dizem nossos clientes</span>
            <h2>Depoimentos Reais</h2>
        </div>
        <div class="testimonials-slider">
            <div class="testimonial-card">
                <div class="testimonial-content">
                    <i class="fas fa-quote-left"></i>
                    <p>"Atendimento excepcional! Sai do salão me sentindo uma nova mulher. Recomendo a todas!"</p>
                </div>
                <div class="testimonial-author">
                    <div>
                        <h4>Maria Silva</h4>
                        <span>Cliente há 2 anos</span>
                        <div class="stars">★★★★★</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-content">
                    <i class="fas fa-quote-left"></i>
                    <p>"Ambiente muito agradável, profissionais atenciosos. Fiz um tratamento que mudou meu cabelo!"</p>
                </div>
                <div class="testimonial-author">
                    <div>
                        <h4>Ana Costa</h4>
                        <span>Cliente há 1 ano</span>
                        <div class="stars">★★★★★</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-content">
                    <i class="fas fa-quote-left"></i>
                    <p>"O melhor salão da cidade! Profissionais qualificados e produtos de primeira linha."</p>
                </div>
                <div class="testimonial-author">
                    <div>
                        <h4>Carla Mendes</h4>
                        <span>Cliente há 3 anos</span>
                        <div class="stars">★★★★★</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
    <div class="container">
        <div class="cta-content">
            <h2>Pronta para transformar seu visual?</h2>
            <p>Entre em contato conosco e agende seu horário. Estamos esperando por você!</p>
            <div class="cta-buttons">
                <a href="${pageContext.request.contextPath}/contato.jsp" class="btn btn-primary">Agendar agora</a>
                <a href="https://wa.me/258869743294" class="btn btn-whatsapp" target="_blank"><i class="fab fa-whatsapp"></i> WhatsApp</a>
            </div>
        </div>
    </div>
</section>

<%@ include file="includes/footer.jsp" %>