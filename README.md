# API Pass-In Node.js

## 📌 Descrição
A **API Pass-In** é uma API desenvolvida em **Node.js** com o objetivo de fornecer um sistema seguro de autenticação e controle de acesso. Utiliza tecnologias modernas para garantir eficiência e segurança.

## 🚀 Tecnologias Utilizadas
- **Node.js**
- **Express**
- **MongoDB** (Mongoose)
- **JWT (JSON Web Token)**
- **Bcrypt**
- **Dotenv**

## 📂 Estrutura do Projeto
```
API-Pass-In-Node_js/
│-- src/
│   │-- controllers/
│   │-- models/
│   │-- routes/
│   │-- middlewares/
│   │-- config/
│   │-- server.js
│-- .env.example
│-- package.json
│-- README.md
```

## 🛠️ Instalação e Uso
### 1️⃣ Clone o repositório:
```bash
git clone https://github.com/Mflexing/API-Pass-In-Node_js.git
cd API-Pass-In-Node_js
```
### 2️⃣ Instale as dependências:
```bash
npm install
```
### 3️⃣ Configure as variáveis de ambiente:
Crie um arquivo `.env` baseado no `.env.example` e configure as credenciais necessárias.

### 4️⃣ Inicie a API:
```bash
npm start
```
A API rodará por padrão em `http://localhost:3000`.

## 🔑 Rotas Principais
### 📝 Autenticação
- `POST /auth/register` - Cria um novo usuário.
- `POST /auth/login` - Faz login e retorna um token JWT.

### 🔒 Protegidas (Requer Token JWT)
- `GET /users/profile` - Obtém os dados do usuário logado.

## 🏗️ Contribuição
Sinta-se à vontade para abrir issues e enviar pull requests!

## 📄 Licença
Este projeto está sob a licença MIT. Para mais informações, consulte o arquivo `LICENSE`.

---
Desenvolvido com 💙 por [Mflexing](https://github.com/Mflexing)

