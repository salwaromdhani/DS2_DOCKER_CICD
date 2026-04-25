// ============================================
// HORIZON VOYAGES — contact.js
// Form validation & submission feedback
// ============================================

function submitForm() {
  const name        = document.getElementById('name').value.trim();
  const email       = document.getElementById('email').value.trim();
  const message     = document.getElementById('message').value.trim();
  const successDiv  = document.getElementById('formSuccess');
  const submitBtn   = document.getElementById('submitBtn');

  // Basic validation
  if (!name || !email || !message) {
    alert('Veuillez remplir au minimum votre nom, email et message.');
    return;
  }

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    alert('Veuillez entrer une adresse email valide.');
    return;
  }

  // Simulate sending
  submitBtn.disabled = true;
  submitBtn.textContent = 'Envoi en cours...';

  setTimeout(() => {
    submitBtn.style.display = 'none';
    successDiv.style.display = 'block';
  }, 1200);
}
