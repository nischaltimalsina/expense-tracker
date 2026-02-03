import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Text(
          'Settings',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 24),
        _buildSettingsSection(
          context,
          'General',
          [
            _buildSettingsTile(
              icon: Icons.currency_exchange,
              title: 'Currency',
              subtitle: 'USD',
              onTap: () {},
            ),
            _buildSettingsTile(
              icon: Icons.notifications,
              title: 'Notifications',
              subtitle: 'Enabled',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildSettingsSection(
          context,
          'Data',
          [
            _buildSettingsTile(
              icon: Icons.backup,
              title: 'Backup Data',
              subtitle: 'Last backup: Never',
              onTap: () {},
            ),
            _buildSettingsTile(
              icon: Icons.download,
              title: 'Export Data',
              subtitle: 'Export as CSV',
              onTap: () {},
            ),
            _buildSettingsTile(
              icon: Icons.delete_forever,
              title: 'Clear Data',
              subtitle: 'Delete all transactions',
              onTap: () {},
              textColor: Colors.red,
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildSettingsSection(
          context,
          'About',
          [
            _buildSettingsTile(
              icon: Icons.info,
              title: 'Version',
              subtitle: '1.0.0',
              onTap: () {},
            ),
            _buildSettingsTile(
              icon: Icons.privacy_tip,
              title: 'Privacy Policy',
              subtitle: 'View privacy policy',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSettingsSection(
      BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Card(
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    Color? textColor,
  }) {
    return ListTile(
      leading: Icon(icon, color: textColor),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
