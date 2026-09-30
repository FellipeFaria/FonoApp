import 'package:flutter/material.dart';
import 'package:fono_app/core/app_routes.dart';
import 'package:fono_app/widgets/footer_navegacao.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FooterNavegacao(actualRoute: AppRoutes.home),
    );
  }
}
