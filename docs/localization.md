# Localization guidelines

The package used for localization is **[slang](https://pub.dev/packages/slang)**.
Localization files are stored and defined in `assets/i18n` and must be named following the format `<locale>.i18n.json`.
Every localization file must have identical keys, with only the values changing based on their respective language.

Dart code files are generated from the JSON files in `lib/i18n` with the following command :
```
dart run slang
```
You must run this command everytime you update a localization JSON file.
You must not manually change the generated Dart code files.
