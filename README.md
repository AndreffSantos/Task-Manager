# Task Manager

Este é um projeto completo que consiste em uma API desenvolvida com Express, TypeScript, Prisma e Postgres para gerenciar usuários, autenticação e tarefas. Além disso, uma aplicação móvel foi construída usando Flutter e MobX para consumir esta API, permitindo a criação, leitura, atualização e exclusão de tarefas.

## Tecnologias Utilizadas

### API (Backend)
- **Express**: Framework web para Node.js.
- **TypeScript**: Superset tipado de JavaScript.
- **Prisma**: ORM (Object-Relational Mapping) para interação com o banco de dados.
- **Postgres**: Sistema de gerenciamento de banco de dados relacional.

### Aplicação Móvel (Frontend)
- **Flutter**: SDK para desenvolvimento de aplicativos nativos.
- **Dart**: Linguagem de programação usada pelo Flutter.
- **MobX**: Biblioteca para gerenciamento de estado.

## Funcionalidades

### API (Backend)

1. **Cadastro de Usuários**: A API permite o cadastro de novos usuários, armazenando suas informações no banco de dados.

2. **Autenticação de Usuários**: Implementa um sistema de autenticação para permitir que usuários autenticados acessem recursos protegidos.

3. **CRUD de Tarefas**: Fornece operações CRUD (Create, Read, Update, Delete) para gerenciar tarefas. Cada tarefa possui um título, descrição, status, data de criação e vinculação ao usuário que a criou.

### Aplicação Móvel (Frontend)

1. **Login e Registro**: Interface de usuário para autenticação de usuários existentes e registro de novos usuários.

2. **Lista de Tarefas**: Exibe uma lista de tarefas do usuário autenticado, com opções para criar, atualizar e excluir tarefas.

3. **Gerenciamento de Estado com MobX**: Utiliza MobX para gerenciar o estado global da aplicação, garantindo uma experiência de usuário eficiente e reativa.

## Configuração do Ambiente

### API (Backend)

1. Instale as dependências usando `npm install`.
2. Configure as variáveis de ambiente em um arquivo `.env` conforme necessário.
3. Execute as migrações do Prisma com `npx prisma migrate dev`.
4. Inicie o servidor com `npm start`.

### Aplicação Móvel (Frontend)

1. Certifique-se de ter o Flutter instalado. Caso contrário, siga as instruções na [documentação oficial](https://flutter.dev/docs/get-started/install).
2. Navegue até o diretório da aplicação móvel (`cd mobile_app`).
3. Execute `flutter pub get` para instalar as dependências.
4. Execute `flutter run` para iniciar a aplicação no emulador ou dispositivo conectado.