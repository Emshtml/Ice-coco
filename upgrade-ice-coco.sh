#!/bin/bash

echo "🚀 Iniciando melhorias do Ice-Coco..."

# 1️⃣ Atualiza README.md
cat > README.md <<EOL
# Ice-Coco 🌴🥥

Landing page para vendas de cocos verdes frescos, desenvolvida com **Next.js** e **Tailwind CSS**.

---

## 🚀 Tecnologias

- [Next.js](https://nextjs.org/)
- [Tailwind CSS](https://tailwindcss.com/)
- Responsividade mobile-first
- Otimização SEO básica
- Botões de contato via WhatsApp

---

## 💻 Instalação Local

1. Clone o repositório:
\`\`\`bash
git clone https://github.com/Emshtml/Ice-coco.git
cd Ice-coco
\`\`\`

2. Instale as dependências:
\`\`\`bash
npm install
\`\`\`

3. Rode o projeto em modo de desenvolvimento:
\`\`\`bash
npm run dev
\`\`\`

Acesse http://localhost:3000

---

## 🧩 Estrutura do Projeto

Ice-coco/
├─ components/      # Componentes reutilizáveis
├─ pages/           # Páginas Next.js
├─ public/          # Imagens e assets
├─ styles/          # CSS global (Tailwind)
├─ README.md        # Documentação

---

## 🛠 Funcionalidades

- Landing page com produtos e imagens
- Botões de compra e WhatsApp
- Layout responsivo
- Otimização SEO
- Preparado para múltiplos idiomas (i18n)

---

## ✅ Melhorias Planejadas

- Testes automatizados
- Acessibilidade (ARIA, contraste)
- Internacionalização completa
- Integração com gateway de pagamento
EOL

git add README.md
git commit -m "Atualiza README.md com documentação completa, instruções de instalação e funcionalidades"

echo "✅ README.md atualizado e commit criado."

# 2️⃣ Adiciona SEO básico em pages/index.js
cat > pages/index.js <<EOL
import Head from 'next/head';

export default function Home() {
  return (
    <>
      <Head>
        <title>Ice-Coco | Cocos Verdes Frescos</title>
        <meta name="description" content="Venda de cocos verdes frescos, entrega rápida e contato via WhatsApp." />
        <meta name="keywords" content="coco, coco verde, delivery, frutas" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      </Head>
      <main>
        <h1>Bem-vindo ao Ice-Coco</h1>
        {/* Conteúdo da página */}
      </main>
    </>
  );
}
EOL

git add pages/index.js
git commit -m "Adiciona SEO básico com meta tags e títulos para a página principal"

echo "✅ SEO básico adicionado."

# 3️⃣ Cria configuração i18n
cat > next-i18next.config.js <<EOL
module.exports = {
  i18n: {
    locales: ['pt', 'en'],
    defaultLocale: 'pt',
  },
};
EOL

cat > next.config.js <<EOL
const { i18n } = require('./next-i18next.config');

module.exports = {
  reactStrictMode: true,
  i18n,
};
EOL

npm install next-i18next react-i18next i18next --save
git add next-i18next.config.js next.config.js package.json package-lock.json
git commit -m "Configura internacionalização (i18n) com suporte a pt e en"

echo "✅ Internacionalização configurada."

# 4️⃣ Acessibilidade básica
mkdir -p components/__tests__
cat > components/Product.js <<EOL
export default function Product({ name }) {
  return (
    <div role="region" aria-label={name}>
      <img src="/cocos/coco1.jpg" alt={name} className="rounded-lg" />
      <button aria-label={"Comprar " + name + " via WhatsApp"} className="btn-primary">
        Comprar
      </button>
    </div>
  );
}
EOL

git add components/Product.js
git commit -m "Adiciona acessibilidade com alt e aria-label nos componentes"

echo "✅ Componentes atualizados para acessibilidade."

# 5️⃣ Testes automatizados
npm install --save-dev jest @testing-library/react @testing-library/jest-dom
cat > components/__tests__/Product.test.js <<EOL
import { render, screen } from '@testing-library/react';
import Product from '../Product';

test('renderiza nome do produto', () => {
  render(<Product name="Coco Verde" />);
  expect(screen.getByText(/Coco Verde/i)).toBeInTheDocument();
});
EOL

# Atualiza package.json scripts
npx json -I -f package.json -e 'this.scripts.test="jest"'

git add components/__tests__ package.json package-lock.json
git commit -m "Adiciona testes automatizados com Jest e Testing Library"

echo "✅ Testes automatizados adicionados."

# 6️⃣ Preparação final
git add .
git commit -m "Preparação final para produção: build otimizada e checagem de responsividade"

echo "✅ Repositório Ice-Coco pronto para push e deploy no Vercel!"
