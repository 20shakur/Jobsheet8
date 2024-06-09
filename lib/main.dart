import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Wrap(
          children: [
            buatKotak(Colors.greenAccent, 100, "Kotak Hijau"),
            buatKotak(Colors.orangeAccent[400]!, 70, "Kotak Oranye"),
            buatKotak(Colors.greenAccent, 50, "Kotak Hijau Kecil"),
            buatKotak(Colors.orangeAccent[400]!, 90, "Kotak Oranye Besar"),
            buatKotak(Colors.red[300]!, 110, "Kotak Merah"),
            buatKotak(Colors.blue[300]!, 30, "Kotak Biru"),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran, String nama) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          color: warna,
        ),
        height: ukuran,
        width: ukuran,
        margin: const EdgeInsets.all(10),
      ),
      Text(
        nama,
        style: const TextStyle(fontSize: 16),
      ),
    ],
  );
}
