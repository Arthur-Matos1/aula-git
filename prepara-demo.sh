#!/usr/bin/env bash
# Prepara o cenário da aula: "servidor central" + clones da Ana e do Bruno
# Uso: bash prepara-demo.sh      (cria a pasta ./aula-git onde você rodar)
set -e
if [ -e aula-git ]; then
  echo "A pasta aula-git já existe. Apague ou renomeie antes de rodar de novo."; exit 1
fi
mkdir aula-git && cd aula-git

git init -q --bare -b main servidor.git       # "servidor central" (só histórico, sem área de trabalho)

git clone -q servidor.git ana                 # Ana = dev 1
cd ana
git config user.name "Ana" && git config user.email "ana@loja.com"
cat > descontos.js <<'JS'
function calcularDesconto(valor, cliente) {
  if (valor > 100) {
    return valor * 0.05;
  }
  return 0;
}
module.exports = { calcularDesconto };
JS
cat > estoque.js <<'JS'
let estoque = { camisa: 10, calca: 5 };
function entrada(produto, qtd) { estoque[produto] += qtd; }
function saida(produto, qtd) { estoque[produto] -= qtd; }
module.exports = { entrada, saida, estoque };
JS
echo "# Sistema Comercial Integrado" > README.md
git add . && git commit -q -m "Versão inicial: descontos e estoque"
git push -q origin main
cd ..

git clone -q servidor.git bruno               # Bruno = dev 2 (clone = cópia completa do histórico)
cd bruno && git config user.name "Bruno" && git config user.email "bruno@loja.com"
cd ..
echo "Pronto! Pastas criadas: servidor.git  ana/  bruno/"
