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

Como configurar SSH no GitHub pelo Git Bash

Objetivo: Configurar uma chave SSH para conectar seu computador ao GitHub e clonar repositórios sem precisar digitar usuário e senha toda vez.

1. Gerar uma chave SSH

Abra o Git Bash e execute:

ssh-keygen -t ed25519 -C "seu-email@example.com"

Pressione Enter para aceitar o local padrão.

Se quiser, defina uma senha para a chave.

Pressione Enter novamente para confirmar.

2. Iniciar o agente SSH

Execute os comandos:

eval "$(ssh-agent -s)"

Depois:

ssh-add ~/.ssh/id_ed25519

3. Copiar a chave pública

Execute:

clip < ~/.ssh/id_ed25519.pub

Isso copia sua chave pública automaticamente.

4. Adicionar a chave ao GitHub

Acesse o GitHub.

Clique na sua foto de perfil.

Entre em Settings.

Acesse SSH and GPG keys.

Clique em New SSH key.

Dê um nome para a chave.

Cole a chave copiada.

Clique em Add SSH key.

5. Testar a conexão

No Git Bash, execute:

ssh -T git@github.com

Se aparecer uma pergunta sobre a autenticidade da conexão, digite:

yes

Se tudo estiver correto, aparecerá uma mensagem informando que a autenticação foi realizada com sucesso.

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
