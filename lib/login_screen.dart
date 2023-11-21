// login_screen.dart

import 'package:flutter/material.dart';
import 'pinterest_menu.dart'; // Import halaman PinterestMenu

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Di sini, kita navigasi ke halaman PinterestMenu setelah login berhasil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PinterestMenu()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
