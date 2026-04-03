<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>

<div class="contact-hero">
    <div class="contact-hero-content">
        <h1>Vamos conversar?</h1>
        <p>Estamos a um clique de distância</p>
    </div>
</div>

<section class="contact-unique">
    <div class="contact-bg-shape"></div>
    <div class="container">
        <div class="contact-unique-grid">
            <div class="contact-info-unique">
                <div class="info-bubble">
                    <i class="fas fa-phone-alt"></i>
                    <span>86 974 3294</span>
                </div>
                <div class="info-bubble">
                    <i class="fab fa-whatsapp"></i>
                    <span>86 974 3294</span>
                </div>
                <div class="info-bubble">
                    <i class="fab fa-instagram"></i>
                    <span>@_jamis_hair_mz</span>
                </div>
                <div class="info-bubble">
                    <i class="far fa-clock"></i>
                    <span>Seg–Sáb, 7h–17h</span>
                </div>
            </div>
            <div class="contact-form-unique">
                <div class="form-card-unique">
                    <h2>Envie uma mensagem</h2>
                    <form action="${pageContext.request.contextPath}/admin/cliente" method="post" id="uniqueForm">
                        <div class="input-group">
                            <input type="text" name="nome" id="nome" required>
                            <label for="nome">Seu nome</label>
                        </div>
                        <div class="input-group">
                            <input type="tel" name="telefone" id="telefone" required>
                            <label for="telefone">Telefone</label>
                        </div>
                        <div class="input-group">
                            <input type="email" name="email" id="email">
                            <label for="email">E-mail (opcional)</label>
                        </div>
                        <button type="submit" class="btn-submit">Enviar →</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="cta-direct">
    <div class="cta-direct-content">
        <p>Prefere falar agora?</p>
        <a href="https://wa.me/258869743294" class="whatsapp-link" target="_blank">
            <i class="fab fa-whatsapp"></i> Chame no WhatsApp
        </a>
    </div>
</section>

<%@ include file="includes/footer.jsp" %>