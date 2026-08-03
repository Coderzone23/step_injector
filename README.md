# Step Injector Hacker 🏃‍♂️💨

A powerful and seamless Flutter application designed to manually inject custom step counts directly into **Google Fit** and **Samsung Health** using the new Android 14+ **Health Connect API**. 

Whether you are a developer testing fitness data syncing or just want to hit your daily step goals from your couch, this app does the heavy lifting for you! 

## ✨ Features
* **Instant Step Injection:** Add any number of steps (e.g., 5000, 10000) with a single click.
* **Health Connect Integration:** Fully compatible with the latest Android security and Health Connect API policies.
* **Permission Bypass:** Custom-configured Android Manifest and XML files to smoothly handle strict Samsung/Android background permission blocks.
* **Cross-Platform Ready:** Built with Flutter, ensuring a smooth and responsive UI.

## 🛠️ Tech Stack
* **Framework:** Flutter / Dart
* **Native Android:** Kotlin (FragmentActivity mapping)
* **Permissions Handling:** Android Manifest (XML)
* **Health API:** Google Health Connect

## 🚀 How to Run Locally

### Prerequisites
1. Install [Flutter SDK](https://flutter.dev/docs/get-started/install).
2. Ensure you have an Android Emulator (with Play Store support) or a physical Android device running Android 14+.
3. Install **Health Connect by Google** on the testing device.

### Installation
1. Clone the repository:
   ```bash
   git clone [https://github.com/Coderzone23/step_injector.git](https://github.com/Coderzone23/step_injector.git)
Navigate to the project directory:

Bash
cd step_injector
Get the required packages:

Bash
flutter pub get
Run the app:

Bash
flutter run
📦 How to Build the Release APK
To generate a fast, optimized, and shareable APK file, run:

Bash
flutter build apk --release
You can find the generated APK at: build/app/outputs/flutter-apk/app-release.apk

⚠️ Important Note on Permissions
Since this app interacts directly with sensitive health data, Android might block the permission popup if running in debug mode.
Manual Override: If you see a "Permission denied by user!" message, go to your phone's Settings > Health Connect > App Permissions > step_injector and manually allow "Write Steps".

                      Developed with ❤️ by Souvik Das
