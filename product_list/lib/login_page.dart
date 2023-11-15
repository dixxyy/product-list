// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:product_list/produk_list_page.dart'; // Sesuaikan dengan path yang benar

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String pageTitle; // Variabel untuk menyimpan judul form

  LoginPage({Key? key, this.pageTitle = 'Dixyy App'}) : super(key: key);

  void _login(BuildContext context) {
    // Di sini, Anda bisa menambahkan logika untuk memeriksa login dan otentikasi pengguna
    // Misalnya, Anda dapat memeriksa nilai dari _usernameController.text dan _passwordController.text
    // untuk login dan otentikasi pengguna.

    // Contoh sederhana untuk navigasi ke produk_list_page.dart
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => listProduct()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle), // Menggunakan judul yang disesuaikan
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Welcome to Dixxyy App!', // Judul di atas form
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                _login(context);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
