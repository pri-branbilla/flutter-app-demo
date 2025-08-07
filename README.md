
# 📱 Desenvolvendo seu Primeiro App com Flutter

Este é o projeto de apoio do curso **“Desenvolvendo seu Primeiro App com Flutter”**, focado em ensinar os principais conceitos da criação de aplicativos com Flutter de forma prática, modular e didática.

---

## 🎯 Objetivo

O projeto apresenta exemplos visuais e funcionais dos principais conceitos abordados nas aulas, incluindo:

- Estrutura básica do projeto Flutter
- Utilização de widgets de conteúdo e layout
- Ciclo de vida de um `StatefulWidget`
- Atualização de estado com `setState`
- Demonstrações com `didUpdateWidget` e `didChangeDependencies`

---

## 📁 Estrutura do Projeto

```
lib/
├── main.dart
├── widgets/
    ├── titulo_secao.dart
├── screens/
│   ├── widgets_conteudo.dart
│   ├── widgets_layout.dart
│   ├── contador.dart
│   ├── ciclo_stateful.dart
│   ├── ciclo_stateful_parent.dart
```

Cada arquivo representa uma **demonstração interativa separada**, navegável a partir da tela inicial do app.

---

## 🚀 Como Rodar o Projeto

> Pré-requisitos: [Flutter SDK instalado](https://docs.flutter.dev/get-started/install), e um emulador ou dispositivo físico configurado.

1. **Clone o repositório:**

```bash
git clone https://github.com/pri-branbilla/flutter-app-demo.git
cd flutter-app-demo
```

2. **Instale as dependências:**

```bash
flutter pub get
```

3. **Execute o app:**

```bash
flutter run
```

---

## 🧪 Funcionalidades Demonstradas

- ✅ Uso de widgets básicos: `Text`, `Container`, `Row`, `Column`, `Image`, `Icon`, `ElevatedButton`
- ✅ Layouts com `Padding`, `Align`, `Center`, `SizedBox`, `Expanded`, `Flexible`
- ✅ `setState()` na prática com botão de contador
- ✅ Ciclo de vida de `StatefulWidget` com `initState`, `dispose`, `didUpdateWidget`, `didChangeDependencies`

---

## 💡 Ideal para

- Iniciantes no Flutter
- Professores e instrutores que desejam exemplos didáticos
- Estudantes que estão começando a criar seus próprios apps
