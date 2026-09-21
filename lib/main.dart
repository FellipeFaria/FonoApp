import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:fono_app/core/app_routes.dart';
import 'package:fono_app/views/auth/login_view.dart';
import 'package:fono_app/views/auth/signin_view.dart';

void main() {
  runApp(DevicePreview(builder: ((context) => const MainApp())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FonoApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          filled: true,
          fillColor: Colors.grey.shade50,
        ),
      ),
      initialRoute: AppRoutes.login,

      routes: {
        AppRoutes.login: (context) => const LoginView(),
        AppRoutes.sigin: (context) => const SigninView(),
        AppRoutes.forgotPassword: (context) => const Placeholder(),
      },
    );
  }
}
