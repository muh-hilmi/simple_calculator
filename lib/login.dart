import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalkulator_1101202399/kalkulator.dart';
import 'package:kalkulator_1101202399/signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E8B7),
      appBar: AppBar(
        title: const Text("Masuk"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffCD5C08),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Silahkan login untuk masuk menggunakan kalkulator",
              style: GoogleFonts.rubik(
                fontSize: 28,
                color: const Color(0xff6A9C89),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              cursorColor: const Color(0xffCD5C08),
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: GoogleFonts.rubik(
                  color: const Color(0xff6A9C89),
                ),
                filled: true,
                fillColor: const Color(0xffF5E8B7),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Atur radius melengkung
                  borderSide: const BorderSide(
                      color:
                          Color(0xffCD5C08)), // Menghapus garis saat difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Atur radius melengkung
                  borderSide: const BorderSide(
                      color: Color(
                          0xffCD5C08)), // Menghapus garis saat tidak difokuskan
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              cursorColor: const Color(0xffCD5C08),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: GoogleFonts.rubik(
                  // fontSize: 40.0,
                  color: const Color(0xff6A9C89),
                ),
                filled: true,
                fillColor: const Color(0xffF5E8B7),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Atur radius melengkung
                  borderSide: const BorderSide(
                      color:
                          Color(0xffCD5C08)), // Menghapus garis saat difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12.0), // Atur radius melengkung
                  borderSide: const BorderSide(
                      color: Color(
                          0xffCD5C08)), // Menghapus garis saat tidak difokuskan
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffCD5C08),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Kalkulator()));
                },
                child: Text(
                  'Log In',
                  style: GoogleFonts.rubik(
                    fontSize: 20.0,
                    color: const Color(0xffC1D8C3),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum Daftar?",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff6A9C89),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Text(
                    "Daftar dahulu",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff6A9C89),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
