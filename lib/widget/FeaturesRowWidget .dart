import 'package:atelie/widget/FeatureIcon.dart';
import 'package:flutter/material.dart';

class FeaturesRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FeatureIcon(
          icon: Icons.calendar_today,
          label: "Agendar Aula",
          route: '/schedule',
        ),
        FeatureIcon(
          icon: Icons.attach_money,
          label: "Financeiro",
          route: '/finance',
        ),
        FeatureIcon(
          icon: Icons.person,
          label: "Perfil",
          route: '/profile',
        ),
        FeatureIcon(
          icon: Icons.group,
          label: "Turmas",
          route: '/classes',
        ),
      ],
    );
  }
}
