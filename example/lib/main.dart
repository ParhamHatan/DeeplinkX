import 'package:deeplink_x/deeplink_x.dart';
import 'package:flutter/material.dart';

/// Main entry point for the application.
void main() {
  runApp(const MyApp());
}

/// Main application widget that demonstrates various DeeplinkX features.
///
/// This example app demonstrates different deeplink actions for various
/// popular apps and app stores across multiple platforms.
class MyApp extends StatefulWidget {
  /// Creates a new instance of [MyApp].
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _deeplinkX = DeeplinkX();
  final _messageController = TextEditingController(text: 'Hello! How are you?');
  final _usernameController = TextEditingController(text: 'johndoe');
  final _phoneController = TextEditingController(text: '+14155552671');
  final _whatsappPhoneController = TextEditingController(text: '14155552671'); // WhatsApp phone number without '+' sign
  final _appIdController = TextEditingController(text: '389801252'); // Example: Instagram app ID
  final _appNameController = TextEditingController(text: 'instagram'); // Example: Instagram app name
  final _macAppIdController = TextEditingController(text: '497799835'); // Example: Xcode app ID
  final _macAppNameController = TextEditingController(text: 'xcode'); // Example: Xcode app name
  final _countryController = TextEditingController(text: 'us'); // Example: US country code
  final _msProductIdController = TextEditingController(text: '9WZDNCRFHVJL'); // Example: Microsoft Edge product ID
  final _msLanguageController = TextEditingController(text: 'en-US'); // Example: Language code
  final _huaweiAppIdController = TextEditingController(text: 'C101184875');
  final _huaweiPackageNameController = TextEditingController(text: 'org.telegram.messenger');
  final _huaweiReferrerController = TextEditingController(text: 'utm_source=deeplink_x_example');
  final _huaweiLocaleController = TextEditingController(text: 'en_US');

  // Cafe Bazaar controllers
  final _cafeBazaarPackageNameController = TextEditingController(text: 'org.telegram.messenger');
  final _cafeBazaarReferrerController = TextEditingController(text: 'utm_source=deeplink_x_example');

  // Myket controllers
  final _myketPackageNameController = TextEditingController(text: 'org.telegram.messenger');
  final _myketReferrerController = TextEditingController(text: 'utm_source=deeplink_x_example');

  // Play Store controllers
  final _playStorePackageNameController = TextEditingController(text: 'com.instagram.android');
  final _playStoreReferrerController = TextEditingController(text: 'utm_source=deeplink_x_example');
  final _playStoreLanguageController = TextEditingController(text: 'en');

  // LinkedIn controllers
  final _linkedInProfileController = TextEditingController(text: 'john-doe');
  final _linkedInCompanyController = TextEditingController(text: 'example-company');
  final _linkedInJobsKeywordsController = TextEditingController(text: 'software developer');
  final _linkedInShareController = TextEditingController(text: 'Check out this awesome content!');

  // FallBackToStore flags
  bool _instagramFallBackToStore = true;
  bool _telegramFallBackToStore = true;
  bool _whatsappFallBackToStore = true;
  bool _linkedInFallBackToStore = true;

  @override
  void dispose() {
    _messageController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _whatsappPhoneController.dispose();
    _appIdController.dispose();
    _appNameController.dispose();
    _macAppIdController.dispose();
    _macAppNameController.dispose();
    _countryController.dispose();
    _msProductIdController.dispose();
    _msLanguageController.dispose();
    _huaweiAppIdController.dispose();
    _huaweiPackageNameController.dispose();
    _huaweiReferrerController.dispose();
    _huaweiLocaleController.dispose();
    _cafeBazaarPackageNameController.dispose();
    _cafeBazaarReferrerController.dispose();
    _myketPackageNameController.dispose();
    _myketReferrerController.dispose();
    _playStorePackageNameController.dispose();
    _playStoreReferrerController.dispose();
    _playStoreLanguageController.dispose();
    _linkedInProfileController.dispose();
    _linkedInCompanyController.dispose();
    _linkedInJobsKeywordsController.dispose();
    _linkedInShareController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
    home: DefaultTabController(
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DeeplinkX Example'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Instagram'),
              Tab(text: 'Telegram'),
              Tab(text: 'WhatsApp'),
              Tab(text: 'LinkedIn'),
              Tab(text: 'iOS App Store'),
              Tab(text: 'Play Store'),
              Tab(text: 'Mac App Store'),
              Tab(text: 'Microsoft Store'),
              Tab(text: 'Huawei AppGallery'),
              Tab(text: 'Cafe Bazaar'),
              Tab(text: 'Myket'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildInstagramTab(),
            _buildTelegramTab(),
            _buildWhatsAppTab(),
            _buildLinkedInTab(),
            _buildAppStoreTab(),
            _buildPlayStoreTab(),
            _buildMacAppStoreTab(),
            _buildMicrosoftStoreTab(),
            _buildHuaweiAppGalleryTab(),
            _buildCafeBazaarTab(),
            _buildMyketTab(),
          ],
        ),
      ),
    ),
  );

  Widget _buildInstagramTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Text('Fallback to App Store:', style: TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Switch(
              value: _instagramFallBackToStore,
              onChanged: (final value) => setState(() => _instagramFallBackToStore = value),
            ),
            const Expanded(
              child: Text(
                'When enabled, redirects to app store if Instagram is not installed',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text('Instagram Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildInstagramActions(),
      ],
    ),
  );

  Widget _buildTelegramTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Text('Fallback to App Store:', style: TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Switch(
              value: _telegramFallBackToStore,
              onChanged: (final value) => setState(() => _telegramFallBackToStore = value),
            ),
            const Expanded(
              child: Text(
                'When enabled, redirects to app store if Telegram is not installed',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text('Telegram Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildTelegramActions(),
      ],
    ),
  );

  Widget _buildWhatsAppTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Text('Fallback to App Store:', style: TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Switch(
              value: _whatsappFallBackToStore,
              onChanged: (final value) => setState(() => _whatsappFallBackToStore = value),
            ),
            const Expanded(
              child: Text(
                'When enabled, redirects to app store if WhatsApp is not installed',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text('WhatsApp Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildWhatsAppActions(),
      ],
    ),
  );

  Widget _buildLinkedInTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Text('Fallback to App Store:', style: TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            Switch(
              value: _linkedInFallBackToStore,
              onChanged: (final value) => setState(() => _linkedInFallBackToStore = value),
            ),
            const Expanded(
              child: Text(
                'When enabled, redirects to app store if LinkedIn is not installed',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text('LinkedIn Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildLinkedInActions(
          _linkedInProfileController,
          _linkedInCompanyController,
          _linkedInJobsKeywordsController,
          _linkedInShareController,
          _linkedInFallBackToStore,
        ),
      ],
    ),
  );

  Widget _buildLinkedInActions(
    final TextEditingController profileController,
    final TextEditingController companyController,
    final TextEditingController jobsKeywordsController,
    final TextEditingController shareController,
    final bool fallbackToStore,
  ) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(LinkedIn.open(fallbackToStore: _linkedInFallBackToStore));
        },
        child: const Text('Open LinkedIn App'),
      ),
      const SizedBox(height: 16),
      const Text('Profile Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: profileController,
        decoration: const InputDecoration(
          labelText: 'LinkedIn Profile ID',
          hintText: 'Enter LinkedIn profile ID',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (profileController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              LinkedIn.openProfile(profileId: profileController.text, fallbackToStore: fallbackToStore),
            );
          }
        },
        child: const Text('Open LinkedIn Profile'),
      ),
      const SizedBox(height: 16),
      const Text('Company Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: companyController,
        decoration: const InputDecoration(
          labelText: 'LinkedIn Company ID',
          hintText: 'Enter LinkedIn company ID',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (companyController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              LinkedIn.openCompany(companyId: companyController.text, fallbackToStore: fallbackToStore),
            );
          }
        },
        child: const Text('Open LinkedIn Company'),
      ),
      const SizedBox(height: 16),
    ],
  );

  Widget _buildWhatsAppActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(WhatsApp.open(fallbackToStore: _whatsappFallBackToStore));
        },
        child: const Text('Open WhatsApp App'),
      ),
      const SizedBox(height: 16),
      const Text('Chat Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _whatsappPhoneController,
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter phone number without + (e.g., 14155552671)',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone,
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _messageController,
        decoration: const InputDecoration(
          labelText: 'Message (optional)',
          hintText: 'Enter message to pre-fill',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_whatsappPhoneController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              WhatsApp.chat(
                phoneNumber: _whatsappPhoneController.text,
                message: _messageController.text.isNotEmpty ? _messageController.text : null,
                fallbackToStore: _whatsappFallBackToStore,
              ),
            );
          }
        },
        child: const Text('Open WhatsApp Chat'),
      ),
      const SizedBox(height: 16),
      const Text('Share Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _messageController,
        decoration: const InputDecoration(
          labelText: 'Text to Share',
          hintText: 'Enter text to share via WhatsApp',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_messageController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              WhatsApp.shareText(text: _messageController.text, fallbackToStore: _whatsappFallBackToStore),
            );
          }
        },
        child: const Text('Share via WhatsApp'),
      ),
    ],
  );

  Widget _buildInstagramActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(Instagram.open(fallbackToStore: _instagramFallBackToStore));
        },
        child: const Text('Open Instagram App'),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _usernameController,
        decoration: const InputDecoration(
          labelText: 'Instagram Username',
          hintText: 'Enter Instagram username',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_usernameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              Instagram.openProfile(username: _usernameController.text, fallbackToStore: _instagramFallBackToStore),
            );
          }
        },
        child: const Text('Open Instagram Profile'),
      ),
    ],
  );

  Widget _buildTelegramActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(Telegram.open(fallbackToStore: _telegramFallBackToStore));
        },
        child: const Text('Open Telegram App'),
      ),
      const SizedBox(height: 16),
      const Text('Profile Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _usernameController,
        decoration: const InputDecoration(
          labelText: 'Telegram Username',
          hintText: 'Enter Telegram username',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_usernameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              Telegram.openProfile(username: _usernameController.text, fallbackToStore: _telegramFallBackToStore),
            );
          }
        },
        child: const Text('Open Telegram Profile'),
      ),
      const SizedBox(height: 16),
      TextField(
        controller: _phoneController,
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter phone number without + (e.g., 14155552671)',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone,
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_phoneController.text.isNotEmpty) {
            String phoneNumber = _phoneController.text;
            // Remove + if it exists
            if (phoneNumber.startsWith('+')) {
              phoneNumber = phoneNumber.substring(1);
            }
            await _deeplinkX.launchAction(
              Telegram.openProfileByPhoneNumber(phoneNumber: phoneNumber, fallbackToStore: _telegramFallBackToStore),
            );
          }
        },
        child: const Text('Open Telegram Profile by Phone'),
      ),
      const SizedBox(height: 16),
      const Text('Message Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _usernameController,
        decoration: const InputDecoration(
          labelText: 'Telegram Username',
          hintText: 'Enter Telegram username',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _messageController,
        decoration: const InputDecoration(
          labelText: 'Message',
          hintText: 'Enter message to send',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_usernameController.text.isNotEmpty && _messageController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              Telegram.sendMessage(
                username: _usernameController.text,
                message: _messageController.text,
                fallbackToStore: _telegramFallBackToStore,
              ),
            );
          }
        },
        child: const Text('Send Message by Username'),
      ),
      const SizedBox(height: 16),
      TextField(
        controller: _phoneController,
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter phone number without + (e.g., 14155552671)',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone,
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _messageController,
        decoration: const InputDecoration(
          labelText: 'Message',
          hintText: 'Enter message to send',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_phoneController.text.isNotEmpty && _messageController.text.isNotEmpty) {
            String phoneNumber = _phoneController.text;
            // Remove + if it exists
            if (phoneNumber.startsWith('+')) {
              phoneNumber = phoneNumber.substring(1);
            }
            await _deeplinkX.launchAction(
              Telegram.sendMessageByPhoneNumber(
                phoneNumber: phoneNumber,
                message: _messageController.text,
                fallbackToStore: _telegramFallBackToStore,
              ),
            );
          }
        },
        child: const Text('Send Message by Phone Number'),
      ),
    ],
  );

  Widget _buildPlayStoreTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Play Store Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildPlayStoreActions(),
      ],
    ),
  );

  Widget _buildPlayStoreActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(PlayStore.open());
        },
        child: const Text('Open Play Store'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _playStorePackageNameController,
        decoration: const InputDecoration(
          labelText: 'Package Name',
          hintText: 'Enter Package Name (e.g., com.instagram.android)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _playStoreReferrerController,
        decoration: const InputDecoration(
          labelText: 'Referrer (optional)',
          hintText: 'Enter referrer for tracking (e.g., utm_source=your_app)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _playStoreLanguageController,
        decoration: const InputDecoration(
          labelText: 'Language Code (optional)',
          hintText: 'Enter language code (e.g., en, fr, de)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_playStorePackageNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              PlayStore.openAppPage(
                packageName: _playStorePackageNameController.text,
                referrer: _playStoreReferrerController.text.isNotEmpty ? _playStoreReferrerController.text : null,
                language: _playStoreLanguageController.text.isNotEmpty ? _playStoreLanguageController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
    ],
  );

  Widget _buildAppStoreTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('iOS App Store Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildAppStoreActions(),
      ],
    ),
  );

  Widget _buildAppStoreActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(IOSAppStore.open());
        },
        child: const Text('Open App Store'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _appIdController,
        decoration: const InputDecoration(
          labelText: 'App ID',
          hintText: 'Enter App ID (e.g., 389801252 for Instagram)',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _appNameController,
        decoration: const InputDecoration(
          labelText: 'App Name',
          hintText: 'Enter App Name (e.g., instagram)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_appIdController.text.isNotEmpty && _appNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              IOSAppStore.openAppPage(appId: _appIdController.text, appName: _appNameController.text),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_appIdController.text.isNotEmpty && _appNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              IOSAppStore.rateApp(appId: _appIdController.text, appName: _appNameController.text),
            );
          }
        },
        child: const Text('Open App Review Page'),
      ),
    ],
  );

  Widget _buildMacAppStoreTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Mac App Store Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildMacAppStoreActions(),
      ],
    ),
  );

  Widget _buildMacAppStoreActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(MacAppStore.open());
        },
        child: const Text('Open Mac App Store'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _macAppIdController,
        decoration: const InputDecoration(
          labelText: 'App ID',
          hintText: 'Enter App ID (e.g., 497799835 for Xcode)',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _macAppNameController,
        decoration: const InputDecoration(
          labelText: 'App Name',
          hintText: 'Enter App Name (e.g., xcode)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _countryController,
        decoration: const InputDecoration(
          labelText: 'Country Code (optional)',
          hintText: 'Enter two-letter country code (e.g., us, uk)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_macAppIdController.text.isNotEmpty && _macAppNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              MacAppStore.openAppPage(
                appId: _macAppIdController.text,
                appName: _macAppNameController.text,
                country: _countryController.text.isNotEmpty ? _countryController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_macAppIdController.text.isNotEmpty && _macAppNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              MacAppStore.rateApp(
                appId: _macAppIdController.text,
                appName: _macAppNameController.text,
                country: _countryController.text.isNotEmpty ? _countryController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Review Page'),
      ),
    ],
  );

  Widget _buildMicrosoftStoreTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Microsoft Store Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildMicrosoftStoreActions(),
      ],
    ),
  );

  Widget _buildMicrosoftStoreActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(MicrosoftStore.open());
        },
        child: const Text('Open Microsoft Store'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _msProductIdController,
        decoration: const InputDecoration(
          labelText: 'Product ID',
          hintText: 'Enter Product ID (e.g., 9WZDNCRFHVJL for Microsoft Edge)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _msLanguageController,
        decoration: const InputDecoration(
          labelText: 'Language Code (optional)',
          hintText: 'Enter language code (e.g., en-US)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_msProductIdController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              MicrosoftStore.openAppPage(
                productId: _msProductIdController.text,
                language: _msLanguageController.text.isNotEmpty ? _msLanguageController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_msProductIdController.text.isNotEmpty) {
            await _deeplinkX.launchAction(MicrosoftStore.rateApp(productId: _msProductIdController.text));
          }
        },
        child: const Text('Open App Review Page'),
      ),
    ],
  );

  Widget _buildHuaweiAppGalleryTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Huawei AppGallery Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildHuaweiAppGalleryActions(),
      ],
    ),
  );

  Widget _buildHuaweiAppGalleryActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(HuaweiAppGalleryStore.open());
        },
        child: const Text('Open Huawei AppGallery'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _huaweiAppIdController,
        decoration: const InputDecoration(
          labelText: 'App ID',
          hintText: 'Enter App ID (e.g., C100000000)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _huaweiPackageNameController,
        decoration: const InputDecoration(
          labelText: 'Package Name',
          hintText: 'Enter Package Name (e.g., org.telegram.messenger)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _huaweiReferrerController,
        decoration: const InputDecoration(
          labelText: 'Referrer (optional)',
          hintText: 'Enter referrer for tracking (e.g., utm_source=your_app)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _huaweiLocaleController,
        decoration: const InputDecoration(
          labelText: 'Locale (optional)',
          hintText: 'Enter locale (e.g., en_US, zh_CN)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_huaweiAppIdController.text.isNotEmpty && _huaweiPackageNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              HuaweiAppGalleryStore.openAppPage(
                appId: _huaweiAppIdController.text,
                packageName: _huaweiPackageNameController.text,
                referrer: _huaweiReferrerController.text.isNotEmpty ? _huaweiReferrerController.text : null,
                locale: _huaweiLocaleController.text.isNotEmpty ? _huaweiLocaleController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
    ],
  );

  Widget _buildCafeBazaarTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Cafe Bazaar Store Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildCafeBazaarActions(),
      ],
    ),
  );

  Widget _buildCafeBazaarActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(CafeBazaarStore.open());
        },
        child: const Text('Open Cafe Bazaar'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _cafeBazaarPackageNameController,
        decoration: const InputDecoration(
          labelText: 'Package Name',
          hintText: 'Enter Package Name (e.g., org.telegram.messenger)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _cafeBazaarReferrerController,
        decoration: const InputDecoration(
          labelText: 'Referrer (optional)',
          hintText: 'Enter referrer for tracking (e.g., utm_source=your_app)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_cafeBazaarPackageNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              CafeBazaarStore.openAppPage(
                packageName: _cafeBazaarPackageNameController.text,
                referrer: _cafeBazaarReferrerController.text.isNotEmpty ? _cafeBazaarReferrerController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
    ],
  );

  Widget _buildMyketTab() => SingleChildScrollView(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Myket Store Actions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        _buildMyketActions(),
      ],
    ),
  );

  Widget _buildMyketActions() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () async {
          await _deeplinkX.launchApp(MyketStore.open());
        },
        child: const Text('Open Myket'),
      ),
      const SizedBox(height: 16),
      const Text('App Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextField(
        controller: _myketPackageNameController,
        decoration: const InputDecoration(
          labelText: 'Package Name',
          hintText: 'Enter Package Name (e.g., org.telegram.messenger)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      TextField(
        controller: _myketReferrerController,
        decoration: const InputDecoration(
          labelText: 'Referrer (optional)',
          hintText: 'Enter referrer for tracking (e.g., utm_source=your_app)',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_myketPackageNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(
              MyketStore.openAppPage(
                packageName: _myketPackageNameController.text,
                referrer: _myketReferrerController.text.isNotEmpty ? _myketReferrerController.text : null,
              ),
            );
          }
        },
        child: const Text('Open App Page'),
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        onPressed: () async {
          if (_myketPackageNameController.text.isNotEmpty) {
            await _deeplinkX.launchAction(MyketStore.rateApp(packageName: _myketPackageNameController.text));
          }
        },
        child: const Text('Rate app'),
      ),
    ],
  );
}
