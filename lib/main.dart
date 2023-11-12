import 'package:flutter/material.dart';
import 'package:kalkulator_1101202399/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E8B7),
      appBar: AppBar(
        title: const Text("Project Kelas Mobile Apps"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffCD5C08),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/IMG_20210604_203730.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                'Muhammad Hilmi I',
                style: GoogleFonts.rubik(
                  fontSize: 40.0,
                  color: const Color(0xffCD5C08),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '1101202399',
                style: GoogleFonts.rubik(
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: const Color(0xff6A9C89),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: GoogleFonts.rubik(
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: const Color(0xff6A9C89),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xffC1D8C3),
                ),
              ),
              Card(
                  color: const Color(0xff6A9C89),
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Color(0xffC1D8C3),
                    ),
                    title: Text(
                      '+62 8966 9434 221',
                      style: GoogleFonts.rubik(
                        color: const Color(0xffC1D8C3),
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                color: const Color(0xff6A9C89),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Color(0xffC1D8C3),
                  ),
                  title: Text(
                    'mailhilmi@gmail.com',
                    style: GoogleFonts.rubik(
                      fontSize: 20.0,
                      color: const Color(0xffC1D8C3),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffCD5C08),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.rubik(
                      fontSize: 20.0,
                      color: const Color(0xffC1D8C3),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
