# 06_tooling_testing — Tooling, pub, and tests

## Topics
- `dart format`, `dart analyze`
- Pubspec, dependencies, dev_dependencies
- Common lints (`package:lints`), enabling pedantic analysis
- Unit testing with `package:test`

## Setup tests
```bash
dart create -t console_full tooling_demo
cd tooling_demo
# Add test dep
dart pub add dev:test
# Or in pubspec.yaml: dev_dependencies: test: any
```

## Run
- Format: `dart format .`
- Analyze: `dart analyze`
- Test: `dart test`