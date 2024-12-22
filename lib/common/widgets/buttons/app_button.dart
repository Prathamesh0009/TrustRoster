import 'package:flutter/material.dart';
import 'package:ts_media/core/configs/theme/app_styles.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed; // Function to handle button press
  final String label; // Button text label
  final bool isLoading; // Loading indicator flag
  final IconData? icon; // Optional icon for the button
  final bool isOutlined; // Whether the button is outlined
  final ButtonStyle? style; // Custom button style

  const AppButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.icon,
    this.isOutlined = true, // Default to outlined button
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final childWidget = isLoading
        ? const CircularProgressIndicator(color: Colors.black)
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 20.0),
                const SizedBox(width: 8.0),
              ],
              Text(label),
            ],
          );

    return SizedBox(
      width: double.infinity,
      child: isOutlined
          ? OutlinedButton(
              onPressed: isLoading ? null : onPressed,
              style: style ?? AppStyles.customButton,
              child: childWidget,
            )
          : ElevatedButton(
              onPressed: isLoading ? null : onPressed,
              style: style ?? AppStyles.customButton,
              child: childWidget,
            ),
    );
  }
}
