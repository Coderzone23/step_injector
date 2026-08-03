# 🏃 Step Injector Hacker

A powerful Flutter application that allows you to manually inject custom step counts into **Google Fit** and **Samsung Health** using the **Android Health Connect API**.

Built primarily for developers, testers, and Health Connect integration experiments, the app provides a simple interface for writing step data directly to supported health platforms.

> **Note:** This project is intended for development, testing, and educational purposes.

---

## ✨ Features

- 🚀 Inject any custom step count instantly (e.g., 1,000 • 5,000 • 10,000+)
- ❤️ Native integration with **Google Health Connect**
- 📱 Compatible with **Google Fit** and **Samsung Health** (via Health Connect)
- 🔐 Handles Android Health Connect permission flow
- ⚡ Fast and lightweight Flutter interface
- 🎨 Clean Material Design UI

---

## 🛠 Tech Stack

| Technology | Description |
|------------|-------------|
| Flutter | Cross-platform UI Framework |
| Dart | Application Logic |
| Kotlin | Native Android Integration |
| Health Connect API | Reading & Writing Health Data |
| Android Manifest (XML) | Permission Configuration |

---

## 📱 Requirements

- Flutter SDK (Latest Stable)
- Android Studio
- Android 14+ (Recommended)
- Google Health Connect installed
- Physical Android device or Emulator with Play Store support

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Coderzone23/step_injector.git
```

### 2. Navigate to the Project

```bash
cd step_injector
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Run the Application

```bash
flutter run
```

---

## 📦 Build Release APK

Generate an optimized release APK:

```bash
flutter build apk --release
```

The APK will be generated at:

```text
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🔐 Permissions

This application writes health data using **Health Connect**.

If Android blocks the permission dialog or you receive a **Permission denied** message:

**Settings → Health Connect → App Permissions → Step Injector → Allow "Write Steps"**

On some devices, especially in debug builds, permissions may need to be granted manually.

---

## 📂 Project Structure

```
lib/
 ├── main.dart
 ├── screens/
 ├── services/
 └── widgets/

android/
 ├── app/
 ├── AndroidManifest.xml
 └── Kotlin/
```

---

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome.

1. Fork the repository
2. Create a new branch
3. Commit your changes
4. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Developer

**Souvik Das**

GitHub: https://github.com/Coderzone23

Made with ❤️ using Flutter.
