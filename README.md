# 💬 Chat App

A real-time cross-platform chat application built with **Flutter** and **Firebase**, supporting Android, iOS, Web, Windows, macOS, and Linux.

---

## 🚀 Features

- 🔐 **User Authentication** — Secure sign-up and login via Firebase Authentication
- 💬 **Real-Time Messaging** — Instant message delivery powered by Cloud Firestore
- 📱 **Cross-Platform** — Runs on Android, iOS, Web, Windows, macOS, and Linux
- ⏳ **Loading Indicators** — Smooth UX with modal progress HUD during async operations
- 🎨 **Material Design UI** — Clean, modern interface using Flutter's Material components

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|------------|
| Framework | [Flutter](https://flutter.dev) (Dart) |
| Backend | [Firebase](https://firebase.google.com) |
| Authentication | Firebase Auth |
| Database | Cloud Firestore |
| UI Loading | `modal_progress_hud_nsn` |

---

## 📁 Project Structure

```
chat-app/
├── lib/                  # Dart source code (screens, widgets, logic)
├── assets/               # Static assets (images, e.g. scholar.png)
├── android/              # Android platform files
├── ios/                  # iOS platform files
├── web/                  # Web platform files
├── windows/              # Windows platform files
├── macos/                # macOS platform files
├── linux/                # Linux platform files
├── test/                 # Unit and widget tests
├── firebase.json         # Firebase project configuration
├── pubspec.yaml          # Flutter dependencies & metadata
└── analysis_options.yaml # Dart lint rules
```

---

## ⚙️ Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `^3.8.1`
- A [Firebase](https://firebase.google.com) project with **Authentication** and **Firestore** enabled
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/ItsYoussefElshemy/chat-app.git
   cd chat-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**

   This project uses Firebase project `chat-app-671b6`. If you're setting up your own Firebase project:
   - Create a project at [console.firebase.google.com](https://console.firebase.google.com)
   - Enable **Email/Password** authentication
   - Enable **Cloud Firestore**
   - Run `flutterfire configure` to regenerate `lib/firebase_options.dart`

4. **Run the app**
   ```bash
   flutter run
   ```

---

## 📦 Dependencies

```yaml
firebase_core: ^4.1.1
firebase_auth: ^6.1.0
cloud_firestore: ^6.2.0
modal_progress_hud_nsn: ^0.5.1
cupertino_icons: ^1.0.8
```

---

## 🧪 Running Tests

```bash
flutter test
```

---

## 📲 Supported Platforms

| Platform | Status |
|----------|--------|
| Android  | ✅ Supported |
| iOS      | ✅ Supported |
| Web      | ✅ Supported |
| Windows  | ✅ Supported |
| macOS    | ✅ Supported |
| Linux    | ✅ Supported |

---

## 📚 Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase Flutter Setup](https://firebase.google.com/docs/flutter/setup)
- [Cloud Firestore Docs](https://firebase.google.com/docs/firestore)
- [FlutterFire Plugins](https://firebase.flutter.dev/)

---

## 👨‍💻 Author

**Youssef Elshemy**
- GitHub: [@ItsYoussefElshemy](https://github.com/ItsYoussefElshemy)

---

## 📄 License

This project is private and not published to pub.dev.
