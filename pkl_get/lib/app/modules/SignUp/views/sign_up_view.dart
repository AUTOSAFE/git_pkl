import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:pkl_get/app/data/colors.dart';
import 'package:pkl_get/app/data/custombtn.dart';
import 'package:intl/intl.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isObsecure = true;
  DateTime? selectedDate;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Material(
                    elevation: 5.0,
                    shape: const CircleBorder(),
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black54,
                    ),
                  ),
                ),
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
                      'assets/images/signup.png',
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: const Text(
                    'Buat Akun',
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
                        hintText: "USERNAME",
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
                        hintText: "EMAIL",
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
                        hintText: "Tanggal Lahir",
                        hintStyle: const TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: selectedDate ?? DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
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
                      obscureText: isObsecure,
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
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: Icon(
                            isObsecure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                        fillColor: Colors
                            .transparent, // Warna latar belakang inputan transparan
                        filled: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomBtn(
                  onPressed: () {
                    Get.toNamed('/forgot-otp');
                  },
                  width: width * .9,
                  text: "Buat Akun",
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
