# Código QL - Banco de Dados

Repositório de versionamento e colaboração de dados do projeto **Código QL**, usando **PostgreSQL 17** (Docker), **Prisma ORM**, **Node.js** e **TypeScript**.

---

## 🚀 O que este projeto faz?

- Mantém a estrutura do banco de dados e dados base em código, usando arquivos versionados.
- Facilita colaboração aberta: qualquer pessoa pode propor adição de dados ou ajustes via pull request.
- Automatiza a criação, atualização e povoamento do banco para desenvolvimento local, garantindo consistência e reprodutibilidade.

---

## 🛠️ **Pré-requisitos**

- [Node.js LTS](https://nodejs.org/) (v18+ recomendado)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [npm](https://www.npmjs.com/) ou [yarn](https://yarnpkg.com/)

---

## 📝 **Primeira configuração (faça uma única vez por máquina)**

1. **Clone o repositório:**
    ```bash
    git clone https://github.com/sua-org/codigo-ql-database.git
    cd codigo-ql-database
    ```

2. **Instale as dependências do projeto:**
    ```bash
    npm install
    ```

3. **Suba o banco de dados PostgreSQL no Docker:**
    ```bash
    docker compose up -d
    ```
    > O banco de dados ficará disponível sempre que o Docker estiver rodando.

4. **Execute as migrations iniciais para criar as tabelas:**
    ```bash
    npx prisma migrate dev --name init
    ```

5. **(Opcional) Adicione arquivos de dados (JSON/YAML, imagens, etc) nas pastas `data/` conforme instruções da documentação.**

6. **Popule o banco com os dados dos arquivos usando o seed:**
    ```bash
    npx ts-node prisma/seed.ts
    ```
    Ou, se preferir:
    ```bash
    npm run prisma-seed
    ```

---

## 🟢 **Como rodar o projeto localmente no dia a dia**

> Sempre que for começar a trabalhar no projeto, faça:

1. **Inicie o banco de dados (se ainda não estiver rodando):**
    ```bash
    docker compose up -d
    ```
    O banco persiste dados entre reinicializações.

2. **(Se houver mudanças nas tabelas) Rode novamente as migrations:**
    ```bash
    npx prisma migrate dev
    ```

3. **(Se houver mudanças nos dados dos arquivos) Rode novamente o seed:**
    ```bash
    npx ts-node prisma/seed.ts
    ```

---

## 🗄️ **Sobre os dados e estrutura**

- Os dados que preenchem o banco (ex: entidades, relacionamentos, arquivos binários) estão em subpastas dentro de `data/`, em arquivos JSON, YAML, imagens ou outros formatos.  
- Os scripts de seed são responsáveis por ler esses arquivos e inserir/atualizar os dados no banco automaticamente.
- Instruções detalhadas para contribuir com dados estão na documentação interna do projeto.

---

## 🗑️ **Como resetar o banco de dados localmente (apagar tudo!)**

```bash
docker compose down -v
docker compose up -d
npx prisma migrate dev --name init
npx ts-node prisma/seed.ts
