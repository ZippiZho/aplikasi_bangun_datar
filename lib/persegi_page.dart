import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/persegi_controller.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController= Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Persegi Page"),),
      body : Column(
        children: [
        Image.asset("assets/persegi23.jpeg", height: 100,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Persegi",
            style: TextStyle(
              color: Colors.black,
            ),

          ),
        ),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('persegi itu adalah bangun datar yang dibentuk oleh empat sisi yang sama panjangnya. '),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Sisi",
                hintText: "Masukkan Sisi",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10)))),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: (){
                  _persegiController. hitungLuas();
                }, child: Text("Hitung Luas")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: (){
                  _persegiController. hitungKeliling();
                }, child: Text("Hitung Keliling", style: TextStyle(
                  color: Colors.white
                ),)),
              ),
            ],
          ),

          Obx(() => Text(_persegiController.hasil.value, style: TextStyle(
            color: _persegiController.Color.value,
          ),))

        ],
      )


    );
  }
}
