import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
    final Color = Colors.white.obs;
  void hitungLuas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Hitung Luas dari $sisi x $sisi = $hitung";
    Color.value = Colors.green;
  }

  void hitungKeliling(){
    int hitung = sisi*4;
    hasil.value = "Hasil Hitung Keliling dari $sisi  = $hitung";
    Color.value = Colors.red;
  }
}