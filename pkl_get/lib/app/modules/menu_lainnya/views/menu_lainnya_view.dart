import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pkl_get/app/data/colors.dart';
import 'kategory_view.dart';

class MenuLainnyaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Fitur Lainnya",
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        elevation: 4,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => MenuLainnyaView());
              },
              child: Text("Unggulan"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => kategori());
              },
              child: Text("Kategori"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Unggulan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Baris 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFeatureCard('assets/icon/loudspeaker.png', 'Laporan Warga', context),
                  _buildFeatureCard('assets/icon/kontakdarurat.png', 'Kontak Darurat', context),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFeatureCard('assets/icon/ambulance.png', 'Ambulans', context),
                  _buildFeatureCard('assets/icon/taxes.png', 'Pajak', context),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFeatureCard(
                      'assets/icon/material.png', 'Harga Pangan', context),
                  _buildFeatureCard(
                      'assets/icon/bus-stop.png', 'Transportasi Publik', context),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFeatureCard('assets/icon/newspaper.png', 'Berita', context),
                  _buildFeatureCard('assets/icon/air-quality.png', 'Kualitas Udara', context),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String imagePath, String label, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tambahkan logika navigasi ke fitur yang sesuai di sini
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45, // Mengatur lebar card
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imagePath, width: 32, height: 32),  // Mengatur ukuran ikon menjadi 32
                SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight:
                          FontWeight.bold), // Mengatur ukuran teks menjadi 14
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
