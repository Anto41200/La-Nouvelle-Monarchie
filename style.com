:root {
  --bleu-royal: #1f3c88;
  --bleu-fonce: #0b1f4b;
  --or: #f5b700;
  --blanc: #ffffff;
  --gris-clair: #f9fafb;
  --noir: #111827;
}

/* RESET */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* GLOBAL */
body {
  font-family: "Georgia", "Times New Roman", serif;
  background: var(--gris-clair);
  color: var(--noir);
  line-height: 1.6;
}

/* HEADER */
header {
  background: linear-gradient(135deg, var(--bleu-royal), var(--bleu-fonce));
  color: var(--blanc);
  padding: 2.5rem 1rem;
}

/* NAVIGATION */
nav {
  max-width: 1100px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

nav h1 {
  font-size: 1.8rem;
  letter-spacing: 1px;
  text-transform: uppercase;
}

nav ul {
  list-style: none;
  display: flex;
  gap: 1.5rem;
}

nav a {
  color: var(--blanc);
  text-decoration: none;
  font-weight: bold;
  position: relative;
}

nav a::after {
  content: "";
  position: absolute;
  width: 0%;
  height: 2px;
  background: var(--or);
  bottom: -4px;
  left: 0;
  transition: width 0.3s ease;
}

nav a:hover::after {
  width: 100%;
}

/* HERO */
.hero {
  max-width: 900px;
  margin: 3rem auto 0;
  text-align: center;
}

.hero h2 {
  font-size: 2.6rem;
  margin-bottom: 1.2rem;
}

.hero p {
  font-size: 1.15rem;
  margin-bottom: 2rem;
}

/* BOUTON */
.btn {
  display: inline-block;
  padding: 0.9rem 1.8rem;
  background: var(--or);
  color: #000;
  text-decoration: none;
  font-weight: bold;
  border-radius: 6px;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(0,0,0,0.2);
}

/* SECTIONS */
section {
  max-width: 1100px;
  margin: 4rem auto;
  padding: 0 1rem;
}

section h3 {
  text-align: center;
  font-size: 2rem;
  margin-bottom: 2.5rem;
  color: var(--bleu-fonce);
}

/* VALEURS */
.values {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  gap: 2rem;
}

.card {
  background: var(--blanc);
  padding: 2rem;
  border-radius: 12px;
  text-align: center;
  box-shadow: 0 10px 25px rgba(0,0,0,0.08);
  border-top: 4px solid var(--or);
}

.card h4 {
  font-size: 1.3rem;
  margin-bottom: 0.8rem;
  color: var(--bleu-royal);
}

/* CONTACT */
#contact p {
  text-align: center;
  font-size: 1.05rem;
}

/* FOOTER */
footer {
  background: var(--bleu-fonce);
  color: var(--blanc);
  text-align: center;
  padding: 2rem 1rem;
}

footer p {
  margin: 0.4rem 0;
  font-size: 0.95rem;
}

/* RESPONSIVE */
@media (max-width: 768px) {
  nav {
    flex-direction: column;
    gap: 1rem;
  }

  .hero h2 {
    font-size: 2rem;
  }
}
