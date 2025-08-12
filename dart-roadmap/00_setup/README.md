# 00_setup — Install and first run

## Install Dart (Linux)
Option A — apt repository (Debian/Ubuntu):
```bash
sudo apt update && sudo apt install -y apt-transport-https curl
curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo "deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" | sudo tee /etc/apt/sources.list.d/dart_stable.list
sudo apt update && sudo apt install -y dart
```

Option B — SDK archive:
- Download: https://dart.dev/get-dart
- Extract, add `bin/` to PATH

Verify:
```bash
dart --version
```

## Editor (VS Code)
- Install extensions: "Dart" and optionally "Flutter"
- Enable format on save and analysis diagnostics

## First program
Create `hello.dart` and run:
```dart
void main() {
  print('Hello, Dart!');
}
```
Run:
```bash
dart run hello.dart
```

## Create a console project
```bash
dart create -t console my_app
cd my_app
dart run
```

## Useful commands
- Format: `dart format .`
- Analyze: `dart analyze`
- Test (after adding package:test): `dart test`