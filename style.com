/* =====================================================
   LA NOUVELLE MONARCHIE — STYLE OFFICIEL
   Bleu royal • Or • Solennité • Autorité
   ===================================================== */

/* VARIABLES ROYALES */
:root {
  --bleu-nuit: #0b1f4b;
  --bleu-royal: #1f3c88;
  --bleu-profond: #08132e;
  --or-royal: #d4af37;
  --or-clair: #f5d76e;
  --blanc: #ffffff;
  --ivoire: #f4f1ec;
  --noir: #0f172a;
}

/* RESET SOLENNEL */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* CORPS */
body {
  font-family: "Georgia", "Garamond", "Times New Roman", serif;
  background: radial-gradient(circle at top, var(--ivoire), var(--blanc));
  color: var(--noir);
  line-height: 1.7;
}

/* =====================================================
   HEADER & NAVIGATION
   ===================================================== */
header {
  background:
    linear-gradient(to bottom, rgba(0,0,0,0.55), rgba(0,0,0,0.85)),
    linear-gradient(135deg, var(--bleu-royal), var(--bleu-nuit));
  color: var(--blanc);
  padding: 3rem 1.5rem 4rem;
  border-bottom: 6px solid var(--or-royal);
}

nav {
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

/* NOM DU PARTI */
nav h1 {
  font-size: 2rem;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: var(--or-royal);
}

/* MENU */
nav ul {
  list-style: none;
  display: flex;
  gap: 2rem;
}

nav a {
  color: var(--blanc);
  text-decoration: none;
  font-weight: bold;
  text-transform: uppercase;
  font-size: 0.95rem;
  position: relative;
}

/* SOULIGNEMENT DORÉ */
nav a::after {
  content: "";
  position: absolute;
  width: 0%;
  height: 2px;
  background: var(--or-royal);
  left: 0;
  bottom: -6px;
  transition: width 0.35s ease;
}

nav a:hover::after {
  width: 100%;
}

/* =====================================================
   HERO ROYAL
   ===================================================== */
.hero {
  max-width: 1000px;
  margin: 4rem auto 0;
  text-align: center;
}

.hero h2 {
  font-size: 3rem;
  margin-bottom: 1.5rem;
  color: var(--or-clair);
  text-shadow: 0 4px 15px rgba(0,0,0,0.6);
}

.hero p {
  font-size: 1.25rem;
  max-width: 800px;
  margin: 0 auto 2.5rem;
  color: #e5e7eb;
}

/* BOUTON ROYAL */
.btn {
  display: inline-block;
  padding: 1rem 2.2rem;
  background: linear-gradient(135deg, var(--or-clair), var(--or-royal));
  color: #1a1a1a;
  text-decoration: none;
  font-weight: bold;
  border-radius: 50px;
  box-shadow: 0 10px 25px rgba(0,0,0,0.35);
  transition: transform 0.25s ease, box-shadow 0.25s ease;
}

.btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 14px 35px rgba(0,0,0,0.45);
}

/* =====================================================
   SECTIONS
   ===================================================== */
section {
  max-width: 1200px;
  margin: 5rem auto;
  padding: 0 1.5rem;
}

section h3 {
  text-align: center;
  font-size: 2.3rem;
  margin-bottom: 3rem;
  color: var(--bleu-nuit);
  position: relative;
}

/* ORNEMENT */
section h3::after {
  content: "✦ ✦ ✦";
  display: block;
  color: var(--or-royal);
  font-size: 1.1rem;
  margin-top: 0.8rem;
}

/* =====================================================
   VALEURS — CARTES
   ===================================================== */
.values {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 2.5rem;
}

.card {
  background:
    linear-gradient(180deg, #ffffff, #f7f4ef);
  border-radius: 18px;
  padding: 2.5rem 2rem;
  text-align: center;
  border: 2px solid var(--or-royal);
  box-shadow: 0 15px 35px rgba(0,0,0,0.12);
  transition: transform 0.3s ease;
}

.card:hover {
  transform: translateY(-6px);
}

.card h4 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  color: var(--bleu-royal);
}

.card p {
  font-size: 1.05rem;
}

/* =====================================================
   PROGRAMME / TEXTE
   ===================================================== */
#programme p {
  font-size: 1.15rem;
}

/* =====================================================
   CONTACT
   ===================================================== */
#contact p {
  font-size: 1.1rem;
}

/* =====================================================
   FOOTER ROYAL
   ===================================================== */
footer {
  background: linear-gradient(135deg, var(--bleu-profond), #020617);
  color: var(--blanc);
  text-align: center;
  padding: 2.5rem 1rem;
  border-top: 5px solid var(--or-royal);
}

footer p {
  margin: 0.4rem 0;
  font-size: 0.95rem;
  color: #e5e7eb;
}

/* =====================================================
   RESPONSIVE
   ===================================================== */
@media (max-width: 900px) {
  nav {
    flex-direction: column;
    gap: 1.5rem;
  }

  .hero h2 {
    font-size: 2.3rem;
  }
}
