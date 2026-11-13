# Aula prática — Git & GitHub

Aula de Gestão de Configuração de Software (Garantia da Qualidade de Software — UniFG).
O cenário é o estudo de caso **Sistema Comercial Integrado** da atividade.

## Para a turma: códigos para copiar

### `descontos.js` (bloco 3 — conflito em duplas)

```js
function calcularDesconto(valor, cliente) {
  if (valor > 100) {
    return valor * 0.05;
  }
  return 0;
}
module.exports = { calcularDesconto };
```

### `estoque.js` (bloco 5 — quem quebrou o estoque?)

```js
let estoque = { camisa: 10, calca: 5 };
function entrada(produto, qtd) { estoque[produto] += qtd; }
function saida(produto, qtd) { estoque[produto] -= qtd; }
module.exports = { entrada, saida, estoque };
```

## Para a demonstração (Codespace)

Code → Codespaces → Create codespace on main. No terminal:

```bash
cd /tmp
bash /workspaces/aula-git/prepara-demo.sh
cd aula-git && ls     # servidor.git  ana  bruno
```

## Cola de comandos

```bash
git init                      # cria repositório
git clone <url>               # copia repositório + histórico
git status                    # o que mudou
git diff                      # diferenças linha a linha
git add <arquivo>             # prepara para o commit (staging)
git commit -m "mensagem"      # registra localmente
git push                      # envia ao remoto
git pull                      # traz do remoto e faz merge
git switch -c feature/nome    # cria e entra numa branch
git merge feature/nome        # junta na branch atual
git log --oneline --graph --all
git blame arquivo             # quem mudou cada linha
git revert <hash>             # desfaz criando um commit novo
git tag -a v1.0 -m "baseline"
```
