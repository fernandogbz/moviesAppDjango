// JavaScript principal para Movies App

document.addEventListener('DOMContentLoaded', function() {
    
    // Confirmación de eliminación con SweetAlert
    const deleteButtons = document.querySelectorAll('.btn-delete');
    deleteButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            const form = this.closest('form');
            const itemName = this.getAttribute('data-item-name') || 'este elemento';
            
            Swal.fire({
                title: '¿Estás seguro?',
                text: `¿Quieres eliminar "${itemName}"? Esta acción no se puede deshacer.`,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#dc3545',
                cancelButtonColor: '#6c757d',
                confirmButtonText: 'Sí, eliminar',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit();
                }
            });
        });
    });

    // Preview de imagen antes de subir
    const imageInputs = document.querySelectorAll('input[type="file"][accept*="image"]');
    imageInputs.forEach(input => {
        input.addEventListener('change', function(e) {
            const file = e.target.files[0];
            const previewContainer = document.getElementById('image-preview');
            
            if (file && previewContainer) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    previewContainer.innerHTML = `
                        <img src="${e.target.result}" class="img-thumbnail" style="max-width: 200px; max-height: 200px;">
                        <p class="mt-2 text-muted">Vista previa</p>
                    `;
                };
                reader.readAsDataURL(file);
            }
        });
    });

    // Animación suave para cards
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);

    // Aplicar animación a las cards
    document.querySelectorAll('.movie-card, .info-card').forEach(card => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px)';
        card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(card);
    });

    // Auto-hide alerts después de 5 segundos
    setTimeout(() => {
        const alerts = document.querySelectorAll('.alert:not(.alert-permanent)');
        alerts.forEach(alert => {
            const bsAlert = new bootstrap.Alert(alert);
            bsAlert.close();
        });
    }, 5000);

    // Búsqueda en tiempo real (opcional para filtros)
    const searchInputs = document.querySelectorAll('.search-input');
    searchInputs.forEach(input => {
        let timeout;
        input.addEventListener('input', function() {
            clearTimeout(timeout);
            timeout = setTimeout(() => {
                // Aquí podrías agregar lógica para filtrado en tiempo real
                console.log('Buscando:', this.value);
            }, 500);
        });
    });

    // Rating stars interactivo (para formularios de reseñas)
    const ratingStars = document.querySelectorAll('.rating-star');
    ratingStars.forEach((star, index) => {
        star.addEventListener('click', function() {
            const rating = index + 1;
            const hiddenInput = document.getElementById('id_calificacion');
            if (hiddenInput) {
                hiddenInput.value = rating;
            }
            
            // Actualizar estrellas visualmente
            ratingStars.forEach((s, i) => {
                if (i < rating) {
                    s.classList.add('text-warning');
                    s.classList.remove('text-muted');
                } else {
                    s.classList.add('text-muted');
                    s.classList.remove('text-warning');
                }
            });
        });
    });
});

// Función para mostrar loading en formularios
function showLoading(button) {
    const originalText = button.innerHTML;
    button.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Cargando...';
    button.disabled = true;
    
    // Restaurar después de 3 segundos (fallback)
    setTimeout(() => {
        button.innerHTML = originalText;
        button.disabled = false;
    }, 3000);
}

// Función para validar formularios
function validateForm(form) {
    const requiredFields = form.querySelectorAll('[required]');
    let isValid = true;
    
    requiredFields.forEach(field => {
        if (!field.value.trim()) {
            field.classList.add('is-invalid');
            isValid = false;
        } else {
            field.classList.remove('is-invalid');
            field.classList.add('is-valid');
        }
    });
    
    return isValid;
}

// Export functions for global use
window.MoviesApp = {
    showLoading,
    validateForm
};
