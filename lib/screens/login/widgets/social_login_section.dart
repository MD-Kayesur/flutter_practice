import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class SocialLoginSection extends StatelessWidget {
  final Function(String provider) onSocialTap;

  const SocialLoginSection({
    super.key,
    required this.onSocialTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Divider with Label
        Row(
          children: [
            const Expanded(
              child: Divider(color: AppColors.cardBorder, thickness: 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'OR CONTINUE WITH',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  color: AppColors.textMuted,
                ),
              ),
            ),
            const Expanded(
              child: Divider(color: AppColors.cardBorder, thickness: 1),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Social Button Options
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialButton(
              icon: Icons.g_mobiledata_rounded,
              label: 'Google',
              onTap: () => onSocialTap('Google'),
            ),
            const SizedBox(width: 14),
            _SocialButton(
              icon: Icons.apple_rounded,
              label: 'Apple',
              onTap: () => onSocialTap('Apple'),
            ),
            const SizedBox(width: 14),
            _SocialButton(
              icon: Icons.code_rounded,
              label: 'GitHub',
              onTap: () => onSocialTap('GitHub'),
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.surface.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.cardBorder, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 20, color: Colors.white),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
