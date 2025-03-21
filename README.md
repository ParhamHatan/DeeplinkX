# DeeplinkX

A lightweight Flutter plugin for type-safe handling of external deeplinks with built-in support for popular apps. Features smart fallback to app stores and web URLs across all major platforms.

> **Naming Note**: 'X' in DeeplinkX stands for external.

## Features

- Type-safe API for external deeplinks
- Multi-platform support
- Smart fallback system

## Usage

```dart
import 'package:deeplink_x/deeplink_x.dart';

void main() {
  final deeplinkX = DeeplinkX();

  // Open Instagram app with store fallback
  deeplinkX.launchAction(Instagram.open(fallBackToStore: true));

  // Open Telegram profile
  deeplinkX.launchAction(Telegram.openProfile('username'));

  // Open iOS App Store app
  deeplinkX.launchAction(IOSAppStore.open());
}
```

## Supported Apps And Actions

| Category    | App               | Supported Actions                                                                |
| ----------- | ----------------- | -------------------------------------------------------------------------------- |
| Stores      | iOS App Store     | • Open app<br>• Open app page<br>• Open review page<br>• Open iMessage extension |
| Stores      | Mac App Store     | • Open app<br>• Open app page<br>• Open review page                              |
| Stores      | Microsoft Store   | • Open app<br>• Open app page<br>• Open review page                              |
| Stores      | Google Play Store | • Open app<br>• Open app page<br>• Open review page                              |
| Social Apps | Telegram          | • Open app<br>• Open profile by username/phone<br>• Send message                 |
| Social Apps | Instagram         | • Open app<br>• Open profile by username                                         |

## Documentation

Detailed documentation available in [doc/apps](doc/apps):

- [iOS App Store](doc/apps/stores/ios_app_store.md)
- [Mac App Store](doc/apps/stores/mac_app_store.md)
- [Microsoft Store](doc/apps/stores/microsoft_store.md)
- [Play Store](doc/apps/stores/play_store.md)
- [Instagram](doc/apps/instagram.md)
- [Telegram](doc/apps/telegram.md)

## URL Scheme Handling

DeeplinkX uses a three-tier approach for maximum compatibility:

1. **Native App Deep Links**: Direct app launch when installed
2. **Store Fallback**: Redirects to app stores when apps aren't installed (with `fallBackToStore: true`)
3. **Web Fallback**: Redirects to web URLs when neither app nor store is available

Example:
```dart
// Enable store fallback
await deeplinkX.launchAction(Instagram.open(fallBackToStore: true));
```

For URL schemes and web fallbacks, see each app's documentation.

## Platform-Specific Configuration
See respective app documentation for platform-specific configuration.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Issues and Feature Requests

Have a bug or feature request? [Please open a new issue](https://github.com/ParhamHatan/DeeplinkX/issues) after checking existing ones.