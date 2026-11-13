# Mural da Turma — Aula de Git & GitHub

Projeto da aula prática de Git & GitHub (ADS — UniFG). Cada aluno cria seu cartão na pasta `alunos/` e envia para o GitHub.

## 1. Instalar

- **Git:** https://git-scm.com/downloads (no Windows, vem junto o **Git Bash**)
- **VS Code:** https://code.visualstudio.com

Configure seu nome e e-mail (o mesmo da conta do GitHub):

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
```

## 2. Criar a chave SSH

```bash
ssh-keygen -t ed25519 -C "seu@email.com"   # aperte Enter 3 vezes
cat ~/.ssh/id_ed25519.pub                   # copie o texto que aparecer
```

No GitHub: **Settings → SSH and GPG keys → New SSH key** → cole → Add SSH key.

Teste: `ssh -T git@github.com` → digite `yes` → deve aparecer `Hi seu-usuario!`

> PC da faculdade? No fim da aula, apague a chave em Settings → SSH and GPG keys.

## 3. Clonar e abrir

```bash
git clone git@github.com:Neto-User/aula-git.git
cd aula-git
code .
```

## 4. Comandos da aula

| Comando | Para que serve |
| --- | --- |
| `git status` | Mostra o que mudou |
| `git add .` | Prepara as mudanças (staging) |
| `git commit -m "mensagem"` | Salva um ponto na história |
| `git push` | Envia para o GitHub |
| `git fetch` | Baixa as novidades sem mexer nos seus arquivos |
| `git pull` | Baixa e junta as novidades |
| `git switch nome-da-branch` | Troca de branch |
| `git checkout nome-da-branch` | Jeito antigo de trocar de branch |
| `git log --oneline` | Mostra a história |

Experimente: `git switch tema-escuro`, abra o `index.html` e depois `git switch main`.

## 5. Conventional Commits

Formato: `tipo: descrição curta`

| Tipo | Quando usar | Exemplo |
| --- | --- | --- |
| `feat` | Algo novo | `feat: adiciona cartão da Maria` |
| `fix` | Correção | `fix: corrige link do rodapé` |
| `docs` | Documentação | `docs: explica como clonar no README` |
| `style` | Visual/formatação | `style: muda cor do cabeçalho` |
| `chore` | Manutenção | `chore: adiciona .gitignore` |

## 6. Desafio final

1. Faça um **fork** deste repositório (botão Fork, no topo).
2. Clone o **seu** fork: `git clone git@github.com:SEU-USUARIO/aula-git.git aula-git-fork`
3. Copie `alunos/_modelo.html` para `alunos/seu-nome.html` e edite.
4. `git add .` → `git commit -m "feat: adiciona cartão do Seu Nome"` → `git push`
5. No GitHub, abra um **Pull Request** para `Neto-User/aula-git`. Quando for aceito, seu cartão aparece no mural!
