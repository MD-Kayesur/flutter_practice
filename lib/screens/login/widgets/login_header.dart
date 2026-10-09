import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Brand App Logo with Glow Shadow
        Container(
          width: 88,
          height: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.5),
                blurRadius: 28,
                spreadRadius: 2,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/images/app_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 22),

        // Welcome Headline with App Name
        const Text(
          'Practice Flutter',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 6),

        // Subtitle
        const Text(
          'Sign in to access your developer portal & services',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.textSecondary,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
