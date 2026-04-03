/**
 * Jamis Hair - JavaScript Principal
 * Refatorado e organizado
 */

(function() {
    'use strict';

    // Configuração do Intersection Observer
    const animationObserverConfig = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    // Animações de entrada
    function initScrollAnimations(selector) {
        const elements = document.querySelectorAll(selector);
        if (elements.length === 0) return;

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                    observer.unobserve(entry.target);
                }
            });
        }, animationObserverConfig);

        elements.forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'all 0.5s ease';
            observer.observe(el);
        });
    }

    function initAllScrollAnimations() {
        initScrollAnimations('.card, .service-card, .feature, .gallery-item, .testimonial-card');
        initScrollAnimations('.timeline-item, .badge-card, .tour-item, .faq-item');
        initScrollAnimations('.info-bubble, .diff-card, .service-block');
        initScrollAnimations('.clientes-table tr');
    }

    // Lightbox
    function showLightbox(imgSrc, imgAlt = '') {
        const existing = document.querySelector('.lightbox');
        if (existing) existing.remove();

        const lightbox = document.createElement('div');
        lightbox.className = 'lightbox';
        lightbox.innerHTML = `
            <div class="lightbox-content">
                <img src="${imgSrc}" alt="${imgAlt}">
                <span class="close-lightbox">&times;</span>
            </div>
        `;
        document.body.appendChild(lightbox);
        document.body.style.overflow = 'hidden';

        const closeBtn = lightbox.querySelector('.close-lightbox');
        closeBtn.addEventListener('click', () => {
            lightbox.remove();
            document.body.style.overflow = 'auto';
        });
        lightbox.addEventListener('click', (e) => {
            if (e.target === lightbox) {
                lightbox.remove();
                document.body.style.overflow = 'auto';
            }
        });
    }

    function initLightbox() {
        document.querySelectorAll('.gallery-item').forEach(item => {
            item.addEventListener('click', () => {
                const img = item.querySelector('img');
                if (img) showLightbox(img.src, img.alt);
            });
        });
        document.querySelectorAll('.tour-item').forEach(item => {
            item.addEventListener('click', () => {
                let imgSrc = item.getAttribute('data-image');
                if (!imgSrc) {
                    const img = item.querySelector('img');
                    if (img) imgSrc = img.src;
                }
                if (imgSrc) showLightbox(imgSrc, 'Tour virtual');
            });
        });
    }

    // Formulário de contato
    function validateContactForm(form) {
        const nome = form.querySelector('input[name="nome"]');
        const telefone = form.querySelector('input[name="telefone"]');
        if (!nome || !telefone) return true;

        if (nome.value.trim() === '') {
            alert('Por favor, preencha o nome.');
            nome.focus();
            return false;
        }
        if (telefone.value.trim() === '') {
            alert('Por favor, preencha o telefone.');
            telefone.focus();
            return false;
        }
        const phoneRegex = /^[0-9]{8,15}$/;
        if (!phoneRegex.test(telefone.value.replace(/\D/g, ''))) {
            alert('Número de telefone inválido (mínimo 8 dígitos).');
            telefone.focus();
            return false;
        }
        return true;
    }

    function initContactForm() {
        const form = document.getElementById('contactForm') || document.getElementById('uniqueForm');
        if (!form) return;
        form.addEventListener('submit', function(e) {
            if (!validateContactForm(form)) e.preventDefault();
        });
    }

    // Efeito typewriter (apenas no hero do contato)
    function typeWriter(element, speed = 80) {
        if (!element) return;
        const text = element.innerText;
        element.innerText = '';
        let i = 0;
        function type() {
            if (i < text.length) {
                element.innerText += text.charAt(i);
                i++;
                setTimeout(type, speed);
            }
        }
        type();
    }

    function initTypeWriter() {
        const heroTitle = document.querySelector('.contact-hero-content h1');
        if (heroTitle) typeWriter(heroTitle);
    }

    // FAQ Accordion
    function initFaq() {
        document.querySelectorAll('.faq-question').forEach(q => {
            q.addEventListener('click', () => {
                q.parentElement.classList.toggle('active');
            });
        });
    }

    // Scroll suave
    function initSmoothScroll() {
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                const targetId = this.getAttribute('href');
                if (targetId === '#') return;
                const target = document.querySelector(targetId);
                if (target) {
                    e.preventDefault();
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            });
        });
    }

    // Inicialização
    document.addEventListener('DOMContentLoaded', function() {
        initAllScrollAnimations();
        initLightbox();
        initContactForm();
        initTypeWriter();
        initFaq();
        initSmoothScroll();
    });
})();