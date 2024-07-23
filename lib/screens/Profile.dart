import 'package:flutter/material.dart';

class CombinedProfileSettingsPage extends StatefulWidget {
  @override
  _CombinedProfileSettingsPageState createState() => _CombinedProfileSettingsPageState();
}

class _CombinedProfileSettingsPageState extends State<CombinedProfileSettingsPage> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile & Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/user.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Company Name',
              // style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text('Email'),
                      subtitle: Text('customer@demo.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.blue),
                      title: Text('Phone'),
                      subtitle: Text('+201006681802'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Settings Section
            Card(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('LANGUAGE'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Open language settings
                    },
                  ),
                  SwitchListTile(
                    secondary: Icon(Icons.nightlight_round),
                    title: Text('DARKMODE'),
                    value: _darkMode,
                    onChanged: (bool value) {
                      setState(() {
                        _darkMode = value;
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('privacyPolicy'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Open privacy policy
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Perform logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}