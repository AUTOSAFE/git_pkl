import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkl_get/app/data/colors.dart';
import 'package:pkl_get/app/data/custombtn.dart';
import 'package:intl/intl.dart';

class ReportView extends StatefulWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  DateTime? selectedDate;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Buat Laporan",
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/laporan.png',
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: const Text(
                    'Buat Laporan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black,
                        width: 1), // Garis hitam di pinggir
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      style: TextStyle(
                          color: AppColors.backgroundColor, fontSize: 18),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis di dalam inputan
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis saat fokus
                        ),
                        hintText: "Nama Laporan",
                        hintStyle: TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        fillColor: Colors
                            .transparent, // Warna latar belakang inputan transparan
                        filled: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black,
                        width: 1), // Garis hitam di pinggir
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      style: TextStyle(
                          color: AppColors.backgroundColor, fontSize: 18),
                      maxLines: null, // Mengubah TextField menjadi TextArea
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis di dalam inputan
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis saat fokus
                        ),
                        hintText: "Keterangan",
                        hintStyle: TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        fillColor: Colors
                            .transparent, // Warna latar belakang inputan transparan
                        filled: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black,
                        width: 1), // Garis hitam di pinggir
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      readOnly: true,
                      style: const TextStyle(
                          color: AppColors.backgroundColor, fontSize: 18),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis di dalam inputan
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis saat fokus
                        ),
                        hintText: "Tanggal Kejadian",
                        hintStyle: const TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: selectedDate ?? DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                              locale: const Locale(
                                  'id'), // Mengatur locale ke Bahasa Indonesia
                            );
                            if (pickedDate != null &&
                                pickedDate != selectedDate) {
                              setState(() {
                                selectedDate = pickedDate;
                              });
                            }
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                        fillColor: Colors
                            .transparent, // Warna latar belakang inputan transparan
                        filled: true,
                      ),
                      controller: TextEditingController(
                        text: selectedDate == null
                            ? ''
                            : dateFormat.format(selectedDate!),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomBtn(
                  onPressed: () {
                    Get.toNamed('/berita');
                  },
                  width: width * .9,
                  text: "Kirim Laporan",
                  btnColor: AppColors.primaryColor,
                  btnTextColor: Colors.black,
                  elevation: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
