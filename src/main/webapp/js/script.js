// Animação de fade-in nos cards ao scroll
const cards = document.querySelectorAll('.card');
const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, { threshold: 0.1 });

cards.forEach(card => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(30px)';
    card.style.transition = 'all 0.5s ease';
    observer.observe(card);
});

// Validação de formulário de contato (client-side)
const contactForm = document.querySelector('.contact-form');
if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
        const nome = this.querySelector('input[name="nome"]');
        const telefone = this.querySelector('input[name="telefone"]');
        if (nome.value.trim() === '' || telefone.value.trim() === '') {
            e.preventDefault();
            alert('Por favor, preencha nome e telefone.');
        }
    });
}