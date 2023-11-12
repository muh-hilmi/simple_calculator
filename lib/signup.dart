import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kalkulator_1101202399/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? username;
  String? nim;
  String? pass;
  String? jenisKelamin;
  File? uploadedImage;
  // Controller untuk mengelola teks input
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  // Daftar pilihan jenis kelamin
  final List<String> _jenisKelaminList = ['Laki-laki', 'Perempuan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E8B7),
      appBar: AppBar(
        title: const Text("Daftar"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffCD5C08),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
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
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              cursorColor: const Color(0xffCD5C08),
              decoration: InputDecoration(
                labelText: 'NIM',
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
              onChanged: (value) {
                setState(() {
                  nim = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              cursorColor: const Color(0xffCD5C08),
              decoration: InputDecoration(
                labelText: 'Password',
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
              onChanged: (value) {
                setState(() {
                  pass = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField(
              dropdownColor: const Color(0xffF5E8B7),
              decoration: InputDecoration(
                labelText: 'Jenis Kelamin',
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
              value: jenisKelamin,
              items: _jenisKelaminList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  jenisKelamin = value.toString();
                });
              },
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffCD5C08),
                ),
                onPressed: () {
                  _pickImageFromGallery();
                },
                child: Text(
                  'Upload foto',
                  style: GoogleFonts.rubik(
                    fontSize: 20.0,
                    color: const Color(0xffC1D8C3),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            uploadedImage != null
                ? Image.file(uploadedImage!)
                : const Text(
                    'Gambar akan ditampilkan di sini setelah diunggah'),
            const SizedBox(height: 300),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffCD5C08),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(), // Pass userData
                    ),
                  );
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.rubik(
                    fontSize: 20.0,
                    color: const Color(0xffC1D8C3),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffCD5C08),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Kembali',
                  style: GoogleFonts.rubik(
                    fontSize: 20.0,
                    color: const Color(0xffC1D8C3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      uploadedImage = File(returnedImage.path);
    });
  }
}
