import 'package:flutter/material.dart';

class AccountListTileInfoWidget extends StatelessWidget {
  const AccountListTileInfoWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.subText,
  });

  final IconData icon;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      subtitle: Text(
        subText,
        style: TextStyle(
          color: Colors.grey.shade600,
        ),
      ),
      leading: Icon(icon),
    );
  }
}
