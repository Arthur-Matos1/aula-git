// Lista os arquivos da pasta alunos/ direto do GitHub e mostra um cartão para cada um.
// Você não precisa mexer aqui :)
const repo = "Neto-User/aula-git";

fetch(`https://api.github.com/repos/${repo}/contents/alunos`)
  .then((resposta) => resposta.json())
  .then((arquivos) => {
    const alunos = arquivos.filter(
      (a) => a.name.endsWith(".html") && !a.name.startsWith("_")
    );
    if (alunos.length === 0) return;

    const mural = document.getElementById("mural");
    mural.innerHTML = "";
    alunos.forEach((aluno) => {
      const nome = aluno.name.replace(".html", "").replaceAll("-", " ");
      const link = document.createElement("a");
      link.className = "cartao";
      link.href = `alunos/${aluno.name}`;
      link.textContent = nome;
      mural.appendChild(link);
    });
  })
  .catch(() => {
    // Sem internet? Tudo bem: o mural só não carrega os cartões.
  });
