import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Kotak Widget'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buatKotak(Color.fromARGB(255, 24, 135, 245), 100, "romi trimono"),
              buatKotak(const Color.fromARGB(255, 255, 98, 0), 70, "Salsa"),
              buatKotak(const Color.fromARGB(255, 148, 240, 105), 50, "Muarif"),
              buatKotak(const Color.fromARGB(255, 255, 204, 0), 90, "Adit"),
              buatKotak(Colors.red[300]!, 110, "Hanif"),
              buatKotak(Colors.blue[300]!, 30, "Novi"),
            ],
          ),
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran, String teks) {
  return Container(
    margin: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: warna,
            borderRadius: BorderRadius.circular(10),
          ),
          height: ukuran,
          width: ukuran,
        ),
        const SizedBox(height: 5),
        Text(
          teks,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
