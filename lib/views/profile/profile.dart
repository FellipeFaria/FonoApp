import 'package:flutter/material.dart';
import 'package:fono_app/core/app_routes.dart';
import 'package:fono_app/widgets/footer_navegacao.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FooterNavegacao(actualRoute: AppRoutes.profile),
    );
  }
}
