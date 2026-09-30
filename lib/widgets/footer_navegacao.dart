import 'package:flutter/material.dart';
import 'package:fono_app/core/app_routes.dart';

class FooterNavegacao extends StatelessWidget {
  final String actualRoute;

  const FooterNavegacao({super.key, required this.actualRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300, width: 2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildItem(
            context: context,
            icon: Icons.person_rounded,
            text: 'Perfil',
            route: AppRoutes.profile,
            active: actualRoute == AppRoutes.profile,
          ),

          GestureDetector(
            onTap: () {
              if (actualRoute != AppRoutes.home) {
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              }
            },
            child: Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: actualRoute == AppRoutes.home
                    ? Colors.deepPurple
                    : Colors.grey.shade400,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
                boxShadow: [
                  BoxShadow(
                    color:
                        (actualRoute == AppRoutes.home
                                ? Colors.deepPurple
                                : Colors.grey)
                            .withValues(alpha: 0.3),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.map_rounded,
                color: Colors.white,
                weight: 36,
              ),
            ),
          ),

          _buildItem(
            context: context,
            icon: Icons.info_rounded,
            text: 'Sobre',
            route: AppRoutes.about,
            active: actualRoute == AppRoutes.about,
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String route,
    required bool active,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!active) Navigator.pushReplacementNamed(context, route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: active ? Colors.deepPurple : Colors.grey, size: 28),
          const SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(
              color: active ? Colors.deepPurple : Colors.grey,
              fontWeight: active ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
