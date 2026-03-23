# ada_app

A new Flutter project.



# 📱 Como baixar e rodar o projeto Flutter

Este guia vai te ensinar como pegar o projeto e rodar no seu computador.



## 🧠 O que vamos fazer?

Você vai seguir esses passos:

1. Baixar o projeto
2. Entrar na pasta do projeto
3. Instalar as dependências
4. Rodar o aplicativo


## ✅ Pré-requisitos

Antes de começar, você precisa ter instalado:

* Flutter
* Git
* Android Studio **ou** VS Code
* Um emulador Android **ou** celular conectado

👉 Para verificar se está tudo certo:

```bash
flutter doctor
```

Se aparecer erro, peça ajuda antes de continuar.



## 📥 1. Baixar o projeto (clonar)

Abra o terminal (ou Git Bash) e execute:

```bash
git clone https://github.com/samueloliveiravs/ada_app.git
```

📌 O que isso faz?
Baixa o projeto do GitHub para o seu computador.



## 📂 2. Entrar na pasta do projeto

```bash
cd ada_app
```

📌 O que isso faz?
Você entra dentro da pasta do projeto que acabou de baixar.



## 📦 3. Instalar as dependências

```bash
flutter pub get
```

📌 O que isso faz?
Baixa todas as bibliotecas que o projeto precisa para funcionar.



## ▶️ 4. Rodar o aplicativo

Antes de rodar, faça **uma dessas opções**:

* Abra um emulador Android
* OU conecte seu celular com depuração USB ativada

Depois execute:

```bash
flutter run
```

📌 O que isso faz?
Compila o app e abre ele no seu celular/emulador.



## 📱 5. (Opcional) Escolher o dispositivo

Se tiver mais de um dispositivo:

```bash
flutter devices
```

Depois escolha um:

```bash
flutter run -d ID_DO_DISPOSITIVO
```



## ❗ Problemas comuns

### 🔸 “flutter não é reconhecido”

* Flutter não está instalado corretamente
* Rode `flutter doctor`



### 🔸 Nenhum dispositivo encontrado

* Abra o emulador manualmente
* Ou conecte o celular corretamente



### 🔸 Deu erro nas dependências

```bash
flutter clean
flutter pub get
```



## 🔄 Atualizar o projeto

Se houver mudanças no projeto:

```bash
git pull
```

📌 Isso baixa as atualizações.



## ⚡ Resumo rápido

```bash
git clone https://github.com/samueloliveiravs/ada_app.git
cd ada_app
flutter pub get
flutter run
```

