import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'firebase_options.dart';
import 'router/app_router.dart';
import 'service_locator/service_locator.dart' as sl; // sl : Service Locator
import 'themes/app_theme.dart';

Future<void> main() async {
  // For native splash screen proper initialization and disposal.
  // Also, for proper initialization of Firebase services.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase configurations and AppCheck (for security).
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );

  // Initialize services/dependencies.
  await sl.initializeServices();

  // Add Licenses.
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/licenses/OFL.txt');
    yield LicenseEntryWithLineBreaks(['montserrat'], license);
  });

  runApp(const UpOrgsApp());

  // Remove the native splash screen when the app initialization is complete.
  FlutterNativeSplash.remove();
}

class UpOrgsApp extends StatelessWidget {
  const UpOrgsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'UP Organizations (UP-Orgs)',
      routerConfig: AppRouter.router,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
